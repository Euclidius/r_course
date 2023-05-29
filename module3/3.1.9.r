"%+%" <- function(x, y) { 
  if(length(x) != length(y)) {
    n <- max(length(x), length(y)) 
    length(x) <- n 
    length(y) <- n 
    x[is.na(x)] <- NA 
    y[is.na(y)] <- NA 
  } 
  x + y 
}


