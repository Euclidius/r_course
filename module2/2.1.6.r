build_ziggurat <- function(n) {
  if (n == 1) {
    return (matrix(1, 1, 1))
  }
  mat <- matrix(1, 2*n-1, 2*n-1)
  for (i in 1:(n-1)) {
    mat[(i+1):(2*n-i-1), (i+1):(2*n-i-1)] <- i+1
  }
  return(mat)
}