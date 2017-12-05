\name{systemnoise}
\alias{systemnoise}

\title{Generate system noise}

\description{Generates a system noise dataset with specified dimensions and standard deviation. The noise can be either Gaussian or Rician distributed.}

\usage{
systemnoise(dim, nscan, type=c("gaussian","rician"), sigma, vee, template, 
		verbose = TRUE)
}

\arguments{
  \item{dim}{A vector specifying the dimensions of the image.}
  \item{nscan}{The number of scans in the dataset.}
  \item{type}{Distribution of system noise. Default is gaussian.}
  \item{sigma}{The standard deviation of the noise.}
  \item{vee}{If \code{type=="rician"}, the non-centrality parameter of the distribution .}
  \item{template}{An array representing the anatomical structure or mask with dimensions equal to dim.}
  \item{verbose}{Logical indicating if warnings should be printed.}
}

\value{An array containing the noise with dimensions specified in dim and nscan.}

\author{M. Welvaert}

\seealso{\code{\link{temporalnoise}}, \code{\link{lowfreqdrift}}, \code{\link{physnoise}}, \code{\link{tasknoise}}, \code{\link{spatialnoise}}}

\examples{
d <- c(10,10,10)
sigma <- 5
nscan <- 100
out <- systemnoise(d, nscan, type="rician", sigma, verbose=FALSE)
\dontshow{rm(d,sigma,nscan,out)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ low-level }
\keyword{ noise }% __ONLY ONE__ keyword per line
