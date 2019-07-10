physnoise <-
  function(dim, nscan, TR, sigma, freq.heart=1.17, freq.resp=0.2, template, verbose=TRUE){
    
    if(length(dim)>3){
      stop("Image space with more than three dimensions is not supported.")
    }
    HB <- 2*pi*freq.heart*TR
    RR <- 2*pi*freq.resp*TR
    t <- 1:nscan
    
    HRdrift <- sin(HB*t) + cos(RR*t)

    # With Gaussian
    sigma.HR <- sd(HRdrift)
    HRweight <- sigma/sigma.HR
    noise_gauss <- array(rnorm(prod(dim)*nscan, 0, 1), dim=c(dim, nscan))
    noise_phys <- aperm(array(HRweight*HRdrift, dim = c(nscan, dim)), c(2,3,4,1))
    noise <- noise_gauss + noise_phys
    
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


