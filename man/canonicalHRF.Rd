\name{canonicalHRF}

\alias{canonicalHRF}

\title{Double-gamma Haemodynamic reponse function}

\description{Specifies a double-gamma variate haemodynamic response function for the given time vector and parameters.}

\usage{
  canonicalHRF(x, param = NULL, verbose = TRUE)
}

\arguments{
  \item{x}{Time vector in seconds.}
  \item{param}{List of parameters of the haemodynamic response function. The list should contain the following:
    \describe{
      \item{a1}{Delay of response relative to onset (default: 6)}
      \item{a2}{Delay of undershoot relative to onset (default:12)}
      \item{b1}{Dispersion of response (default:0.9)}
      \item{b2}{Dispersion of undershoot (default:0.9)}
      \item{c}{Scale of undershoot (default:0.35)}
    }
  }
  \item{verbose}{If \code{TRUE}, warnings are displayed.}
}

\value{Vector representing the values of the function for the given time vector and parameters.}

\references{[1] Friston, KJ, Fletcher, P, Josephs, O, Holmes, AP, Rugg, MD and Turner, R (1998). Event-related fMRI: Characterising differential responses. NeuroImage, 7, 30-40.

[2] Glover, GH (1999). Deconvolution of impulse response in event-related BOLD fMRI. NeuroImage, 9, 416-429.}

\author{M. Welvaert}

\seealso{\code{\link{gammaHRF}}, \code{\link{balloon}}}

\examples{
t <- 1:100
out <- canonicalHRF(t, verbose=FALSE)
\dontshow{rm(out, t)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ low-level }
\keyword{ activation }% __ONLY ONE__ keyword per line
