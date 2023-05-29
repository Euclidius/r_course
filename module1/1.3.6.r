get_fractions <- function(m, n) {
  u = seq(0, 1, 1/m)
  v = seq(0, 1, 1/n)
  return(sort(decreasing = TRUE, unique(c(u, v))))
}
