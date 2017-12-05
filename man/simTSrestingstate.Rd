\name{simTSrestingstate}

\alias{simTSrestingstate}

\title{Simulate fMRI resting state time series}

\description{Synthesizes a single time series x representing resting state activity. The fluctuation frequencies f are limited to 
a square passband 0.01 Hz <= f <= 0.1 Hz. TR is the repetition time (needed to compute the passband limits), expressed in seconds. 
N is the required number of samples (needs not be a power of 2).}

\usage{
simTSrestingstate(nscan, base=0, TR, SNR=NULL, noise = c("none", "white",
	"temporal", "low-frequency", "physiological", "mixture"), 
	type = c("gaussian", "rician"), weights, verbose = TRUE, rho = 0.2,
	freq.low = 128, freq.heart = 1.17, freq.resp = 0.2, vee=1)
}

\arguments{
  \item{nscan}{Number of scans.}
  \item{base}{Baseline value of the time series.}
  \item{TR}{Repetition time in seconds.}
  \item{SNR}{Signal-to-noise ratio of the time series.}
  \item{noise}{Type of noise (white is default).}
  \item{type}{If \code{noise==white}, \code{noise==mixture}, type of system noise (gaussian is default).}
  \item{weights}{If \code{noise==mixture}, vector of weights to specify the fraction of the noise components.}
  \item{verbose}{Logical indicating if warnings should be returned.}
  \item{rho}{If \code{noise==temporal} or \code{noise==mixture}, value of autocorrelation coefficients. The length of the vector corresponds to the order of the autoregressive model.}
  \item{freq.low}{If \code{noise==low-frequency} or \code{noise==mixture}, frequency of the low-frequency drift in seconds.}
  \item{freq.heart}{If \code{noise==physiological} or \code{noise==mixture}, frequency of heart rate in Hz.}
  \item{freq.resp}{If \code{noise==physiological} or \code{noise==mixture}, frequency of respiratory rate in Hz.}
  \item{vee}{If \code{type==rician}, non-centrality parameter of the distribution.}
}

\value{A vector representing the resting state time series}

\references{[1] C.G. Fox, Computers & Geoscience, Vol. 13, pp. 369-374, 1987.

 [2] M. Fukunaga, Magnetic Resonance Imaging, Vol. 24, pp. 979-992, 2006.
}

\author{J. Durnez, G. Verdoolaege, M. Welvaert}

\seealso{\code{\link{simTSfmri}}}

\examples{
out <- simTSrestingstate(nscan=50, TR=2, SNR=1, noise="none")
\dontrun{plot(out, type="l")}
\dontshow{rm(out)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ high-level }
