tasknoise <-
function(act.image, sigma, type=c("gaussian","rician"), vee=1){
	
	if(missing(act.image)){
		stop("An activation array is required.")
	}
	if(missing(type)){
	    type <- "gaussian"
	}
	
	dim <- dim(act.image)
	if(length(dim)>4){
		stop("The activation array has more than 4 dimensions")
	}
	
  #Array indicating location of active voxels			
  indvar <- apply(act.image, c(1,2,3), var) == 0
  indmean <- apply(act.image, c(1,2,3), mean) == 0
  indimage <-  array(1-(indvar*indmean), dim = dim)
	
	if(length(dim)==0){
	    if(type=="gaussian"){
		noise <-rnorm(length(act.image), 0, sigma)
	    } else {
		noise <- rrice(length(act.image), vee, sigma)
	    }
	} else {
	    if(type=="gaussian"){
		noise <- array(rnorm(prod(dim), 0, sigma), dim=dim)

	    } else {
		noise <- array(rrice(prod(dim), vee, sigma), dim=dim)
	    }
	}
	
  ix <- which(zapsmall(act.image)!=0)
  noise[-ix] <- 0

	
  # Rescale noise
  noise <- noise*sigma/sd(noise[indimage == 1])
  return(noise)

}


