set.seed(1337)
x <- runif(1e6, min = -1, max = 1)
y <- x[x> -0.2 & x < 0.3]
print(length(y))