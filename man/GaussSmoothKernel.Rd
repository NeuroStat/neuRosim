\name{GaussSmoothKernel}

\alias{GaussSmoothKernel}

\title{Calculates a discrete Gaussian smoothing kernel (adopted from \pkg{AnalyzeFMRI})}

\description{Calculates a simple, discrete Gaussian smoothing kernel of a specifice size given the covariance matrix of the Gaussian.}

\usage{
GaussSmoothKernel(voxdim=c(1,1,1), ksize=5, sigma=diag(3,3))
}

\arguments{
  \item{voxdim}{The dimensions of each voxel.}
  \item{ksize}{The size (in voxels) of the kernel with which to filter the independent field.}
  \item{sigma}{The covariance matrix of the Gaussian kernel.}
}

\value{An array of dimension (ksize,ksize,ksize) containing the smoothing kernel.}

\author{J. L. Marchini}

\seealso{\code{\link{Sim.3D.GRF}}}

\examples{
a <- GaussSmoothKernel(voxdim=c(1,1,1), ksize=5, sigma=diag(1,3))
\dontshow{rm(a)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ low-level }
\keyword{ noise }% __ONLY ONE__ keyword per line
