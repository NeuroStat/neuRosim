\name{gammaHRF}

\alias{gammaHRF}

\title{Single Gamma Haemodynamic response function.}

\description{Specifies a Gamma variate haemodynamic response function for the given time vector and FWHM.}

\usage{
gammaHRF(x, FWHM = 4, verbose = TRUE)
}

\arguments{
  \item{x}{Time vector in seconds.}
  \item{FWHM}{Full Width Half Maximum of the Gamma variate function.}
  \item{verbose}{If \code{TRUE}, warnings are displayed.}
}

\value{Vector representing the values of the function for the given time vector and FWHM.}

\references{Buxton, RB, Uludag, K, Dubowitz, DJ and Liu, TT (2004). Modeling the hemodynamic response to brain activation. NeuroImage, 23, S220-S233.}

\author{M. Welvaert}

\seealso{\code{\link{canonicalHRF}}, \code{\link{balloon}}}

\examples{
t <- 1:100
out <- gammaHRF(t, verbose=FALSE)
\dontshow{rm(t,out)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ low-level}
\keyword{ activation }% __ONLY ONE__ keyword per line
