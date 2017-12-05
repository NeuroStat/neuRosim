\name{physnoise}

\alias{physnoise}

\title{Generate physiological noise}

\description{Generates a physiological noise dataset with specified dimensions and standard deviation. The physiological noise is defined as noise caused by heart beat and respiratory rate.}

\usage{
physnoise(dim, nscan, TR, sigma, freq.heart = 1.17, 
	freq.resp = 0.2, template, verbose = TRUE)
}

\arguments{
  \item{dim}{A vector specifying the dimensions of the image.}
  \item{nscan}{The number of scans in the dataset.}
  \item{TR}{The repetition time in seconds.}
  \item{sigma}{The standard deviation of the noise.}
  \item{freq.heart}{The frequency in Hz of the heart beat. }
  \item{freq.resp}{The frequency in Hz of the respiratory rate. }
  \item{template}{An array representing the anatomical structure or mask with dimensions equal to dim.}
  \item{verbose}{Logical indicating if warnings should be printed.}
}

\details{The function generates physiological noise. Heart beat and respiratory rate are defined as sine and cosine functions with specified frequencies. Additional Gaussian noise creates variability over voxels. The result is a noise dataset with specified dimensions and desired standard deviation.}

\value{An array containing the noise with dimensions specified in dim and nscan.}

\author{M. Welvaert}

\seealso{\code{\link{temporalnoise}}, \code{\link{lowfreqdrift}}, \code{\link{systemnoise}}, \code{\link{tasknoise}}, \code{\link{spatialnoise}}}

\examples{
d <- c(10,10,10)
sigma <- 5
nscan <- 100
TR <- 2
out <- physnoise(d, nscan, TR, sigma, verbose=FALSE)
\dontshow{rm(d,sigma,nscan,TR,out)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ low-level }
\keyword{ noise }% __ONLY ONE__ keyword per line
