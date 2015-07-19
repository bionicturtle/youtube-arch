library(Quandl)
goog <- Quandl("WIKI/GOOG", start_date="2014-07-15",end_date="2015-07-15")
write.csv(goog, file="goog-history.csv")

gClose <- goog$Close
n <- length(gClose, file="goog-history")

returns.daily.simple <- gClose[-n]/gClose[-1] - 1
returns.daily.log <- log(gClose[-n]/gClose[-1])

vol.daily <- sd(returns.daily.simple) # = STDEV.S daily SAMPLE standard deviation; sample -> denominator is (n-1)
vol.annual <- vol.daily * sqrt(250)
print(vol.annual)
