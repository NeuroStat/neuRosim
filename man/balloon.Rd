\name{balloon}

\alias{balloon}

\title{Balloon model}

\description{Generates the BOLD signal based on the Balloon model of Buxton et al. (2004).}

\usage{
  balloon(stim, totaltime, acc, par=list(), verbose=TRUE)
}

\arguments{
  \item{stim}{Vector representing the presence/absence (1-0 coding) of a stimulus/activation in seconds.}
  \item{totaltime}{Total duration of stimulus vector in seconds.}
  \item{acc}{Microtime resolution of stimulus vector in seconds.}
  \item{par}{List representing the parameters of the Balloon model. The list should contain the following:
    \describe{
      \item{kappa}{Inhibitory gain factor}
      \item{tau1}{Inhibitory time constant}
      \item{tauf}{FWHM of CBF impulse response}
      \item{taum}{FWHM of CMRO2 impulse resonse}
      \item{deltat}{Delay of CBF relative to CMRO2 response}
      \item{n}{Steady-state flow metabolism relation}
      \item{f1}{Normalized CBF response to sustained neural activation}
      \item{tauMTT}{Transit time through the balloon}
      \item{tau}{Viscoelastic time constant}
      \item{alpha}{Steady-state flow-volume relation}
      \item{E0}{baseline O2 extraction fraction}
      \item{V0}{baseline blood volume}
      \item{a1}{weight for deoxyHb change}
      \item{a2}{weight for blood volume change}
    }
  }
  \item{verbose}{If \code{TRUE}, warnings are displayed.}
}

\value{Vector representing the values of the BOLD signal for the given stimulus vector and microtime resolution.}

\details{Based on the provided stimulus boxcar function, a neural activation function is generated that enters the Balloon model to generate a BOLD response. 
The microtime resolution ensures a high-precision generation of the response. More details can be found in Buxton et al. (2004).}

\references{Buxton, RB, Uludag, K, Dubowitz, DJ and Liu, TT (2004). Modeling the hemodynamic response to brain activation. NeuroImage, 23, S220-S233.}

\author{G. Verdoolaege, M. Welvaert
}

\seealso{\code{\link{canonicalHRF}}, \code{\link{gammaHRF}}}

\examples{
\dontrun{(
s <- rep(rep(0,10), rep(1,10), 5)
T <- 100
it <- 0.1
out <- balloon(s, T, it) 
#takes a couple of seconds due to solving of the differential equations
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ low-level }
\keyword{ activation}% __ONLY ONE__ keyword per line
