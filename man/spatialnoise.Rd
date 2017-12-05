\name{spatialnoise}

\alias{spatialnoise}

\title{Generate spatially correlated noise}

\description{Generates a spatially correlated noise dataset with specified dimensions and standard deviation.}

\usage{
spatialnoise(dim, sigma, nscan, method = c("corr", "gammaRF", "gaussRF"), 
	type=c("gaussian","rician"), rho = 0.75, FWHM = 4, gamma.shape = 6, 
	gamma.rate = 1, vee=1, template, verbose = TRUE)
}

\arguments{
  \item{dim}{A vector specifying the dimensions of the image.}
  \item{sigma}{The standard deviation of the noise.}
  \item{nscan}{The number of scans in the dataset.}
  \item{method}{Method specifying the type of spatial correlation. Default is \code{"corr"}.}
  \item{type}{Type of distribution if \code{method=="corr"}. Default is \code{"gaussian"}}
  \item{rho}{If \code{method=="corr"}, the value of the autocorrelation coefficient. }
  \item{FWHM}{If \code{method=="gammaRF"} or \code{method=="gaussRF"}, the full-width-half-maximum of the Gaussian kernel.}
  \item{gamma.shape}{If \code{method=="gammaRF"}, the shape parameter of the Gamma distribution.}
  \item{gamma.rate}{If \code{method=="gammaRF"}, the shape parameter of the Gamma distribution.}
  \item{vee}{If \code{method=="corr"} and \code{type=="rician"}, the non-centrality parameter of the rician distribution.}
  \item{template}{An array representing the anatomical structure or mask with dimensions equal to dim.}
  \item{verbose}{Logical indicating if warnings should be printed.}
}

\details{The function generates spatially correlated noise. When \code{method=="corr"}, AR(1) voxelwise correlations are introduced. 
If \code{method=="gaussRF"} of \code{method=="gammaRF"}, respectively a Gaussian Random Field or a Gamma Random Field is created. The result is a noise array with specified dimensions and desired standard deviation.
The generation of the random fields is based on the function \code{Sim.3D.GRF} from J.L. Marchini in the package \pkg{AnalyzeFMRI}.}

\value{An array containing the noise with dimensions specified in dim and nscan.}

\author{J. Durnez, B. Moerkerke, M. Welvaert}

\seealso{\code{\link{temporalnoise}}, \code{\link{lowfreqdrift}}, \code{\link{physnoise}}, \code{\link{tasknoise}}, \code{\link{systemnoise}}, \code{\link{Sim.3D.GRF}}}

\examples{
d <- c(10,10,10)
sigma <- 5
nscan <- 100
rhospat <- 0.7
out <- spatialnoise(d, sigma, nscan, method="corr", rho=rhospat, verbose=FALSE)
\dontshow{rm(d,sigma,nscan,rhospat,out)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ low-level }
\keyword{ noise }% __ONLY ONE__ keyword per line
