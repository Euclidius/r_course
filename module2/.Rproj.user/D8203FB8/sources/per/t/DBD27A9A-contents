find_closest <- function(v, n) {
    res <- v - n
    res <- sapply(res, abs)
    return(which(res == min(res)))
}

print(find_closest(c(5, 2, 7, 7, 7, 2, 0, 0), 1))