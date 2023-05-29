combin_count <- function(n, k, with_repretitions = FALSE) {
  if (!with_repretitions) {
    return(factorial(n)/(factorial(k) * factorial(n - k)))
  } else {
    return(factorial(n + k - 1) / (factorial(k) * factorial(n - 1)))
  }
}
