#######################
##PlotRandom.R

##A function that will generate a random sample of IID normal random values, then it will plot a histogram with an overlaid mean on the plot

##inputs: numpts = number of points to generate
##        mu = the theoretical mean of normal dist
##        sigma = standard deviation of the normal dist
##        numbins = the number of bins in the histogram
##        meanColor = the color of overlaid mean
##        seed = a random number generator seed, using to ensure reproducibility

##outputs: a list with the following elements
##        Random_values = a vector of the generated random normal values
##        Mean_x = the sample mean of the Random_values
##        SD_x = the sample standard deviation of Random_values

plotRandomNormals <- function(numpts=100,
                              mu=0,sigma=1,
                              numbins=10,
                              meanColor="navy",
                              seed=10062021){
  set.seed(seed)
  rand_x <- rnorm(numpts,mean=mu,sd=sigma)
  mean_x <- mean(rand_x)
  hist(rand_x,breaks=numbins)
  abline(v=mean_x,col=meanColor,lwd=3)
  
  list(Random_values = rand_x,
       Mean_x = mean_x,
       SD_x = sd(mean_x))
}

