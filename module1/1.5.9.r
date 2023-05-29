is_monotone <- function(x) {
  return(all(x[-1] <= x[-length(x)]) | all(x[-1] >= x[-length(x)]))
}