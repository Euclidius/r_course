x <- read.csv(file = "https://raw.githubusercontent.com/tonytonov/Rcourse/master/R%20programming/avianHabitat.csv")
y <- read.csv(sep = ";", skip = 5, header = T, comment.char = "%", quote = "", na.strings = "Don't remember", file = 'https://raw.githubusercontent.com/tonytonov/Rcourse/master/R%20programming/avianHabitat2.csv')

y$Observer <- c("RA")

z <- rbind(x, y)

coverage_variables <- names(z)[-(1:4)][c(T, F)]
z$total_coverage <- rowSums(z[, coverage_variables])

summary(z$total_coverage)