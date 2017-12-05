\name{temporalnoise}

\alias{temporalnoise}

\title{Generate temporally correlated noise}

\description{Generates an autoregressive noise dataset with specified dimensions and standard deviation.}

\usage{
temporalnoise(dim, nscan, sigma, rho = 0.2, template, verbose = TRUE)
}

\arguments{
  \item{dim}{A vector specifying the dimensions of a 2D or 3D array.}
  \item{nscan}{The number of scans in the dataset.}
  \item{sigma}{The standard deviation of the noise.}
  \item{rho}{The autocorrelation coefficients. The length of the vector determines the order of the autoregressive model.}
  \item{template}{An array representing the anatomical structure or mask with dimensions equal to dim.}
  \item{verbose}{Logical indicating if warnings should be printed.}
}

\value{An array containing the noise with dimensions specified in dim.}

\author{J. Durnez, B. Moerkerke, M. Welvaert}

\seealso{\code{\link{systemnoise}}, \code{\link{lowfreqdrift}}, \code{\link{physnoise}}, \code{\link{tasknoise}}, \code{\link{spatialnoise}}}

\examples{
d <- c(10,10,10)
sigma <- 5
nscan <- 100
rho <- c(0.3,-0.7)
out <- temporalnoise(d, nscan, sigma, rho, verbose=FALSE)
\dontshow{rm(d,sigma,nscan,rho,out)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ low-level}
\keyword{ noise}% __ONLY ONE__ keyword per line
