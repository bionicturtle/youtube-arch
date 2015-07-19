# dnorm(x, mean = 0, sd = 1, log = FALSE); dnorm gives the density 
# pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE); pnorm gives the distribution function, 
# qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE); qnorm gives the quantile function, 
# rnorm(n, mean = 0, sd = 1); rnorm generates random deviates

mu <- .04 # expected return = 4%
sigma <- .03 # volatility = 3%
alpha <- 0.01
conf <- 1-alpha # VaR confidence = 95%

#If expected return is 8% with volatility of 2%, what is 95% VaR?
qnorm(alpha, 0, 1, lower.tail = TRUE)
qnorm(alpha, mean = mu, sd = sigma, lower.tail = TRUE)
pnorm(-.0297, mean = mu, sd = sigma)

# set.seed(20)
sim <- rnorm(10, mean=mu, sd=sigma)
quantile(sim, c(.01,.5))
