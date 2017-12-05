\name{rrice}
\alias{rrice}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{The Rice Distribution}

\description{Density and random generation for the Rician distribution}

\usage{rrice(n, vee, sigma) }

\arguments{
  \item{n}{number of observations. Must be a positive integer of length 1.}
  \item{vee}{non-centrality parameter of the distribution. Must be a positive integer of length 1.}
  \item{sigma}{scale parameter of the distribution. Must be a positive integer of length 1.}
}

\details{See \pkg{VGAM} for more details on the parameters and the formula of the probability density function.}

\value{Random deviates for the given number of observations.}

\author{T.W. Yee}

\examples{
\dontrun{
x <- rrice(n=10,vee=2,sigma=1)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ low-level }
\keyword{ noise}% __ONLY ONE__ keyword per line
