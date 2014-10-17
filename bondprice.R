
bondprice <- function(c,T,r,par){
    
    c <- c/2
    r <- r/2
    bv = c/r + (par - c/r) * (1 + r)^(-2*T)
    bv

    
}