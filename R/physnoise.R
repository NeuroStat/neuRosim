physnoise <-
  function(dim, nscan, TR, sigma, freq.heart=1.17, freq.resp=0.2, template, verbose=TRUE){
    
    if(length(dim)>3){
      stop("Image space with more than three dimensions is not supported.")
    }
    HB <- 2*pi*freq.heart*TR
    RR <- 2*pi*freq.resp*TR
    t <- 1:nscan
    
    HRdrift <- sin(HB*t) + cos(RR*t)
    
    # Without Gaussian
    # drift.image <- array(rep(1, prod(dim)), dim=c(dim))
    # noise <- drift.image %o% HRdrift
    
    # With Gaussian
    sigma.HR <- sd(HRdrift)
    HRweight <- sigma/sigma.HR
    noise <- array(rnorm(prod(dim)*nscan, 0, 1), dim=c(dim, nscan)) + HRweight*HRdrift

    
    if(!missing(template)){
      if(length(dim(template))>3){
        stop("Template should be a 2D or 3D array.")
      }
      template.time <- array(rep(template,nscan), dim=c(dim,nscan))
      ix <- which(template.time!=0)
      noise[-ix] <- 0
    }
    
    # Rescale noise
    noise <- noise*sigma/sd(noise)
    return(noise)
  }



phyIm <- physnoise(dim = dim, nscan = nscan, TR = TR,
                   sigma = sigma)
# check the image
var(phyIm) # should be equal to sigma^2
threeDim_var <- apply(phyIm, c(1,2,3), var)
mean(threeDim_var) # should be approx sigma^2


