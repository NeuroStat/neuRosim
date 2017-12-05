\name{stimfunction}

\alias{stimfunction}

\title{Generate a stimulus boxcar function.
}
\description{Generates a stimulus boxcar vector for the specified time duration and microtime resolution based on the user-defined onsets and durations.}

\usage{
stimfunction(totaltime, onsets, durations, accuracy)
}

\arguments{
  \item{totaltime}{Total time of the design in seconds.}
  \item{onsets}{Vector representing the onsets of the stimulus in seconds.}
  \item{durations}{Vector representing the durations of the stimulus in seconds.}
  \item{accuracy}{Microtime resolution in seconds.}
}

\details{If duration is a single number, it is assumed that all stimulus onsets have the same duration.}

\value{A vector in microtime resolution specifying the stimulus boxcar function in 1-0 coding.}

\author{M. Welvaert}

\seealso{\code{\link{specifydesign}}}

\examples{
total <- 100
os <- c(1, 21, 41, 61, 81)
d <- 10
out <- stimfunction(total, os, d, 0.1)
\dontshow{rm(total,os,d,out)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ low-level }
