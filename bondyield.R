
bondprice <- function(c,T,r,par){
    
    c <- c/2
    r <- r/2
    bv = c/r + (par - c/r) * (1 + r)^(-2*T)
    
    
    

    
}

bondyield <- function(price, coupon, Term, face) {
    r = seq(0.01, 0.10, length = 300)
    value <- bondprice(c = coupon, T = Term, r = r, par = face)
    y2m <- spline(value, r, xout = price)
    y2m
}