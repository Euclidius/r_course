x <- sort(attitude$learning, decreasing = T)[1:5]
x <- x[1:5]
y <- attitude
y <- y[c("learning", "complaints", "raises", "advance")]
y <- subset(y, learning >= min(x))[c("complaints", "raises", "advance")]
print(rowSums(y))
