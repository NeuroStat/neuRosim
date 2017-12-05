\name{neuRosim-package}
\alias{neuRosim-package}
\alias{neuRosim}
\docType{package}
\title{Functions to Generate fMRI Data Including Activated Data, Noise Data and Resting State Data
}
\description{The package allows users to generate fMRI time series or 4D data. Some high-level functions are created for fast data generation with only a few arguments and a diversity of functions to define activation and noise. For more advanced users it is possible to use the low-level functions and manipulate the arguments.
}
\details{
\tabular{ll}{
Package: \tab neuRosim\cr
Type: \tab Package\cr
Version: \tab 0.2-12\cr
Date: \tab 2015-01-09\cr
License: \tab GPL (>=2)\cr
LazyLoad: \tab yes\cr
}
}
\author{Marijke Welvaert with contributions from Joke Durnez, Beatrijs Moerkerke, Yves Rosseel and Geert Verdoolaege


Maintainer: Marijke Welvaert <marijke.welvaert@gmail.com>
}

\references{Welvaert, M., Durnez, J., Moerkerke, B., Verdoolaege, G. and Rosseel, Y. (2011). \pkg{neuRosim}: An {R} Package for Generating fMRI Data. Journal of Statistical Software, 44(10), 1--18}

\keyword{ package }
\examples{
## Generate fMRI time series for block design
design <- simprepTemporal(totaltime=200, onsets=seq(1,200,40),
	 durations=20, TR=2, effectsize=1, hrf="double-gamma")
ts <- simTSfmri(design=design, SNR=1, noise="white")
\dontrun{plot(ts, type="l")}
\dontshow{rm(design,ts)}
## Generate fMRI slice for block design with activation in 2 regions
design <- simprepTemporal(totaltime=200, onsets=seq(1,200,40), 
	durations=20, TR=2, effectsize=1, hrf="double-gamma")
region <- simprepSpatial(regions=2, coord=list(c(32,15),c(57,45)), 
	radius=c(10,7), form="sphere")
out <- simVOLfmri(design=design, image=region, dim=c(64,64), 
	SNR=1, noise="none")
\dontrun{plot(out[32,15,], type="l")}
\dontshow{rm(design,region,out)}
}
