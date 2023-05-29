dice_roll <- function(n) {
  a <- runif(n)
  a = a * 6
  return(ceiling(a))
}