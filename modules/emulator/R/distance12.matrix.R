`distance12.matrix` <-
function(x,n1,power=1){
  n <- nrow(x)
  d <- matrix(0,n,n-n1)
  sel <- (n1+1):n
  for(i in 1:n){
    d[i,] <- (x[i,1]-x[sel,1])^power+(x[i,2]-x[sel,2])^power
  }
  d
}

