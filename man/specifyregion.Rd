\name{specifyregion}

\alias{specifyregion}

\title{Generate activation image}

\description{Generates an image with activated regions for specified dimensions. The regions are defined by their center and radius or can be entered manually.}

\usage{
  specifyregion(dim, coord, radius = NULL, 
	form = c("cube", "sphere", "manual"), 
	fading = 0)
}

\arguments{
  \item{dim}{Dimensions of the image space.}
  \item{coord}{Coordinates of the activated region, if \code{form=="cube"} or \code{form=="sphere"}, the coordinates represent the center of the region, if \code{form=="manual"}, the coordinates should be in matrix form, where the rows represent the voxels and the columns the x-y-z coordinates.}
  \item{radius}{If \code{form=="cube"} or \code{form=="sphere"}, the distance in voxels from the center of the region to the edge.}
  \item{form}{The form of the activated region. Default is \code{"cube"}.}
  \item{fading}{Decay rate between 0 and 1. 0 means no fading, while 1 results in the fastest decay.}
}

\value{An array representing the activation image with specified regions.}

\author{M. Welvaert}

\seealso{\code{\link{specifyregion}},\code{\link{gammaHRF}},\code{\link{canonicalHRF}},\code{\link{balloon}}}

\examples{
d <- c(10,10,10)
coord <- c(3,3,3)
radius <- 1
out <- specifyregion(d, coord, radius, form="sphere")
\dontshow{rm(d,coord,radius,out)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ low-level }
