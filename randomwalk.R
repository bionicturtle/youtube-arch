
# initial price
p0 <- 1000

# annual drift and volatility
mu <- .1
sigma <- .20

# daily drift and volatility
days <- 250
mu.daily <- mu/days
sigma.daily <- sigma/sqrt(days)

r <- rnorm(100, mu.daily, sigma.daily) # 100 random normals 
logPrice <- log(p0) + cumsum(r) # Returns a vector whose elements are the
                                # cumulative sums of the elements of the argument.
Prices <- exp(logPrice)
png(file="random_walk.png")
plot(Prices, type="l")
dev.off()
