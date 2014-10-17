price_long <- function (c_percent, maturity, yield, face){
    
    c <- c_percent/2 * face
    yield_sa <- yield/2
    periods <- seq(0.5, maturity, by = 0.5 )
        
    # 1. Loop
    # price <- 0
    # for (t in periods) {
    #    cf = c*(1+yield_sa)^(-2*t)
    #    price <- price + cf
    # }
    
    # 2. Analytical
    # price <- c/yield_sa + (face - c/yield_sa)*(1 + yield_sa)^(-2*maturity)
    
    price <- c/yield_sa + (face - c/yield_sa)*(1 + yield_sa)^(-2*maturity)
    
    price <- cumsum(c*(1+yield_sa)^(-2*periods))
    price <- price[maturity*2] + face*(1+yield_sa)^(-2*maturity)
        
    price
    
}