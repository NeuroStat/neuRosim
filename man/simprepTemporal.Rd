\name{simprepTemporal}

\alias{simprepTemporal}

\title{Prepare temporal structure of the data}

\description{Prepare a list defining the necessary parameters to specify the temporal structure of the activation data.}

\usage{
simprepTemporal(totaltime, regions = NULL, onsets, durations, 
	TR, effectsize, accuracy=0.1, 
	hrf = c("gamma", "double-gamma", "Balloon"), 
	param = NULL)
}

\arguments{
  \item{totaltime}{Duration of the experiment.}
  \item{regions}{Number of regions. If not specified, it is assumed that all regions have the same design matrix.}
  \item{onsets}{List or vector representing the onsets of the stimulus in seconds.}
  \item{durations}{List or vector representing the durations of the stimulus in seconds.}
  \item{TR}{Repetition time in seconds.}
  \item{effectsize}{List or number representing the effectsize in each condition.}
  \item{accuracy}{Microtime resolution in seconds.}
  \item{hrf}{Haemodynamic response function (double-gamma is default)}
  \item{param}{Vector, matrix or array representing the parameters of the haemodynamic response function.}
}

\value{A list with the necessary arguments to be used in \code{\link{simVOLfmri}} or \code{\link{simTSfmri}}.}

\author{M. Welvaert}

\seealso{\code{\link{simVOLfmri}}, \code{\link{simTSfmri}}, \code{\link{simprepSpatial}}, \code{\link{specifyregion}}}

\examples{
ncond <- 2
os <- list(c(20,60),c(15,35))
d <- list(20, 10)
effect <- list(7,10)
total <- 80
TR <- 2
out <- simprepTemporal(total, onsets=os, durations=d, TR=TR, 
	effectsize=effect, hrf="double-gamma")
\dontshow{rm(os,d,total,TR,out)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ high-level }
