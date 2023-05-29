count_elements <- function(x) {
  a <- sort(unique(x))
  x <- table(x)
  x <- as.numeric(x)
  
  rbind(a, x)
  
}

x <- c(1, 3, 2, 4, 35, 2, 34)
x <- count_elements(x)
print(x)