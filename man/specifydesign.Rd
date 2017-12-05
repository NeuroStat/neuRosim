\name{specifydesign}

\alias{specifydesign}

\title{Generate design matrix.}

\description{Generates a design matrix to be used as a model for the simulated activation.}

\usage{
specifydesign(onsets, durations, totaltime, TR, effectsize, accuracy=0.1, 
	conv = c("none", "gamma", "double-gamma", "Balloon"), 
	cond.names = NULL, param = NULL)
}

\arguments{
  \item{onsets}{List or vector representing the onsets in seconds.}
  \item{durations}{List or vector representing the durations in seconds.}
  \item{totaltime}{Duration of the experiment in seconds.}
  \item{TR}{Repetition time in seconds.}
  \item{effectsize}{List or number representing the effectsize in each condition.}
  \item{accuracy}{Microtime resolution in seconds.}
  \item{conv}{Should the design matrix be convoluted, default is none.}
  \item{cond.names}{Optional names for the conditions.}
  \item{param}{Parameters of the haemodynamic response function. See \code{\link{gammaHRF}} and \code{\link{canonicalHRF}} for more details.}
}

\value{A matrix specifying the design.}

\author{M. Welvaert}

\seealso{\code{\link{specifyregion}},\code{\link{gammaHRF}},\code{\link{canonicalHRF}},\code{\link{balloon}}}

\examples{
os <- list(c(20,60),c(15,35))
d <- list(20, 10)
total <- 80
TR <- 2
out <- specifydesign(os, d, total, TR, effectsize=list(2,5), conv="double-gamma")
\dontshow{rm(os,d,total,TR,out)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ low-level}
