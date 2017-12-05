\name{lowfreqdrift}

\alias{lowfreqdrift}

\title{Generate low frequency drift}

\description{Generates a low-frequency drift dataset with specified dimensions and frequency.}

\usage{
lowfreqdrift(dim, freq = 128, nscan, TR, template, verbose = TRUE)
}

\arguments{
  \item{dim}{A vector specifying the dimensions of the image.}
  \item{freq}{The frequency of the drift in seconds. }
  \item{nscan}{The number of scans in the dataset.}
  \item{TR}{The repetition time in seconds.}
  \item{template}{An array representing the anatomical structure or mask with dimensions equal to dim.}
  \item{verbose}{Logical indicating if warnings should be printed.}
}

\details{The function generates low-frequency drift based on a basis set of cosine functions. The result is an array with specified dimensions
and frequency.}

\value{An array containing the drift with dimensions specified in dim.}

\references{Friston et al. (2007). Statistical Parametric Mapping: The analysis of functional brain images. Academic Press.}

\author{Y. Rosseel, M. Welvaert}

\seealso{\code{\link{temporalnoise}}, \code{\link{systemnoise}}, \code{\link{physnoise}}, \code{\link{tasknoise}}, \code{\link{spatialnoise}}}

\examples{
d <- c(10,10,10)
freq <- 80
nscan <- 100
TR <- 2
out <- lowfreqdrift(d, freq, nscan, TR, verbose=FALSE)
\dontshow{rm(d,freq,nscan,TR,out)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ low-level }
\keyword{ noise}% __ONLY ONE__ keyword per line
