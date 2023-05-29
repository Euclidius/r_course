generator <- function(set, prob = rep(1/length(set), length(set))) function(n) { 
  sample(set, n, replace = T)
} 

roulette_values <- c("Zero!", 1:36)
rigged_values <- c("Zero!", 1:36, "Zero!")
fair_roulette <- generator(roulette_values)
rigged_roulette <- generator(rigged_values)