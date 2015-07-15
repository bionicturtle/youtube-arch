# dnorm(x, mean = 0, sd = 1, log = FALSE); pdf, density 
# pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE); CDF, distribution function
# qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE); VaR, quantile function
# rnorm(n, mean = 0, sd = 1); generates random deviates

mu <- .04       # expected return = 4%
sigma <- .03    # volatility = 3%
alpha <- 0.01   # significance = 1.0%
conf <- 1-alpha # VaR confidence = 99.0% VaR

#If expected return is 4% with volatility of 3%, what is 99% NORMAL VaR?
qnorm(alpha) # without paramters, assumes STANDARD normal
qnorm(alpha, mean = mu, sd = sigma) # = -0.0297
pnorm(-.0297, mean = mu, sd = sigma) # ~ 1.0%
pnorm(qnorm(0.01)) # returns 0.01

# set.seed(20)
sim <- rnorm(10000, mean=mu, sd=sigma)
quantile(sim, c(.01,.50))
