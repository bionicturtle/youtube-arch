

rwalk <- function(mu, sigma) {

    # initial price
    p0 <- 1000
    
    # daily drift and volatility
    days <- 250
    mu.daily <- mu/days
    sigma.daily <- sigma * 1/sqrt(days)
    
    r <- rnorm(100, mu.daily, sigma.daily)  # 100 random normals 
    logPrice <- log(p0) + cumsum(r)         # Returns a vector whose elements are the
                                            # cumulative sums of the argument's elements
    Prices <- exp(logPrice)
    
    # display
    png(file="random_walk.png")
    plot(Prices, type="l")
    dev.off()
}


