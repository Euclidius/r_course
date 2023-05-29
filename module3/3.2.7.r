simulate_walk <- function( n_max = 100, p = 0.01, rad = 6) {
  current_x <- 0
  current_y <- 0
  for (i in 1:n_max) {
    is_absorbed <- rbinom(1, 1, p)
    if (is_absorbed){ return(list(status = "Absorbed",
                                 position = c(current_x, current_y),
                                 steps = i))
    }
    current_x <- current_x + rnorm(1)
    current_y <- current_y + rnorm(1)
    
    if (current_x*current_x + current_y*current_y > 36) {return(list(status = "AOB",
                                                                           position = c(current_x, current_y),
                                                                           steps = i)) 
    }
  }
  return(list(status = "Max steps reached",
                position = c(current_x, current_y),
                steps = n_max))
}

result <- replicate(10000, simulate_walk(), simplify = FALSE)
result <- data.frame(
  status = sapply(result, function(x) x$status)
)

length(result$status[result$status == "AOB"])