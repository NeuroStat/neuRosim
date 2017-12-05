\name{tasknoise}

\alias{tasknoise}

\title{Generate task-related noise}

\description{Generates a Gaussian noise dataset with specified dimensions and standard deviation only when a task is performed or activation is present.}

\usage{
tasknoise(act.image, sigma, type=c("gaussian","rician"), vee=1)
}

\arguments{
  \item{act.image}{Array defining where and when activation is present.}
  \item{sigma}{Standard deviation of the noise.}
  \item{type}{Distribution of task-related noise. Default is gaussian.}
  \item{vee}{If \code{type=="rician"}, the non-centrality parameter of the distribution.}
  }

\details{The function generates random Gaussian noise for those voxels in the dataset that show activation. The result is a noise array with specified dimensions and desired standard deviation.}

\value{An array containing the noise.}

\author{M. Welvaert}

\seealso{\code{\link{temporalnoise}}, \code{\link{lowfreqdrift}}, \code{\link{physnoise}}, \code{\link{systemnoise}}, \code{\link{spatialnoise}}}

\examples{
d <- c(10,10,10)
sigma <- 5
nscan <- 100
act <- array(rep(0, prod(d)*nscan), dim=c(d,nscan))
act[2:4,2:4,2:4,c(20:30,40:50,60:70)] <- 1
out <- tasknoise(act, sigma)
\dontshow{rm(d,sigma,nscan,act,out)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ low-level }
\keyword{ noise }% __ONLY ONE__ keyword per line
