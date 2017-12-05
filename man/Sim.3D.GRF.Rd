\name{Sim.3D.GRF}

\alias{Sim.3D.GRF}

\title{Simulate a GRF (adopted from \pkg{AnalyzeFMRI})}

\description{Simulates a Gaussian Random Field with specified dimensions and covariance structure.}

\usage{
Sim.3D.GRF(d, voxdim, sigma, ksize, mask=NULL, type=c("field","max"))
}

\arguments{
  \item{d}{A vector specifying the dimensions of a 3D or 4D array.}
  \item{voxdim}{The dimensions of each voxel.}
  \item{sigma}{The 3D covariance matrix of the field.}
  \item{ksize}{The size (in voxels) of the kernel with which to filter the independent field.}
  \item{mask}{A 3D mask for the field.}
  \item{type}{If \code{type=="field"} then the simulated field together with the maximum of the field is returned.If \code{type=="max"} then the maximum of the field is returned.}
}

\details{The function works by simulating a Gaussian r.v at each voxel location and the smoothing the field with a discrete filter to obtain a field with the desired covariance structure.}

\value{
  \item{mat}{Contains the simulated field if \code{type=="field"}, else \code{NULL}}
  \item{max}{The maximum value of the simulated field}
}

\author{J. L. Marchini}

\seealso{\code{\link{GaussSmoothKernel}}}

\examples{
     d <- c(64, 64, 21)
     FWHM <- 9
     sigma <- diag(FWHM^2, 3) / (8 * log(2))
     voxdim <- c(2, 2, 4)
     msk <- array(1, dim = d)   
     field <- Sim.3D.GRF(d = d, voxdim = voxdim, sigma = sigma, 
		ksize = 9, mask = msk, type = "max")
\dontshow{rm(d,FWHM,sigma,voxdim,msk,field)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ low-level }
\keyword{ noise }% __ONLY ONE__ keyword per line
