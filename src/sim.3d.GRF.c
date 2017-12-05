#include "R.h"
#include <Rmath.h>



void sim_grf(int *dim, double *filtermat, int *ksize, int *mask, int *type, double *ans, double *max) {

	int e, i, j, k, l, m1, m2, m3, x, y, z, w;
	double t, f, f2, *mat, tmp1;

	/* set random number generator */
	GetRNGstate(); 

	x = *dim;
	y = *(dim + 1);
	z = *(dim + 2);
	w = *(dim + 3);

	mat = (double *) R_alloc(x * y * z * w, sizeof(double));

	for(i = 0; i < (x * y * z * w); i++) mat[i] = rnorm(0.0, 1.0);

	e = (*ksize + 1) / 2;
	for(i = 0; i < x; i++) {
		for(j = 0; j < y; j++) {
			for(k = 0; k < z; k++) {
				if(*(mask + i * y * z + j * z + k) == 1) {
					
					for(l = 0; l < w; l++) {
						
						t = 0.0;
						f = 0.0;
						f2 = 0.0;
						
						for(m1 = 0; m1 < *ksize; m1++) {
							for(m2 = 0; m2 < *ksize; m2++) {
								for(m3 = 0; m3 < *ksize; m3++) {
						
									if(((i - e + m1 + 2) > 0) && ((i - e + m1 + 2) <= x) && ((j - e + m2 + 2) > 0) && ((j - e + m2 + 2) <= y) && ((k - e + m3 + 2) > 0) && ((k - e + m3 + 2) <= z)) {
										f = *(filtermat + m1 * (*ksize * *ksize) + m2 * *ksize + m3);
										t += f * *(mat + l * x * y * z + (i - e + m1 + 1) * y * z + (j - e + m2 + 1) * z + (k - e + m3 + 1));

										f2 += f * f;
									}
								}
							}
						}
						tmp1 = t / sqrt(f2);
						if(tmp1 > *max) *max = tmp1;
						if(*type == 1) {
							*(ans + i * y * z * w + j * z * w + k * w + l) = tmp1;
						}
					}
				}
				else {
					if(*type == 1) {
						for(l = 0; l < w; l++) {
							*(ans + i * y * z * w + j * z * w + k * w + l) = 0.0;
						}
					}
				}
			}
		}
	}


	/* close down random number generator */
	PutRNGstate();
}
