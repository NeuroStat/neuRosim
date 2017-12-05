\name{simprepSpatial}

\alias{simprepSpatial}

\title{Prepare spatial structure of the data}

\description{Prepare a list defining the necessary parameters to specify the spatial structure of the activation data.}

\usage{simprepSpatial(regions, coord, radius = NULL, 
	form = c("cube", "sphere", "manual"), fading = 0)}

\arguments{
  \item{regions}{Number of activated regions.}
  \item{coord}{List of coordinates specifying the xyz-coordinates.}
  \item{radius}{If form=cube or sphere, the distance between the center and the edge, if form=manual, the number of voxels in each region.}
  \item{form}{The form of the activated regions.}
  \item{fading}{Decay rate between 0 and 1. 0 means no fading, while 1 results in the fastest decay.}
}

\value{A list with the necessary arguments to be used in \code{\link{simVOLfmri}}.}

\author{M. Welvaert}

\seealso{\code{\link{simVOLfmri}}, \code{\link{simprepTemporal}}, \code{\link{specifyregion}}}

\examples{
coord <- list(c(3,3,3),c(6,6,6))
radius <- c(1,2)
out <- simprepSpatial(2, coord, radius, form="cube", fading=0.2)
\dontshow{rm(coord,radius,out)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ high-level }
