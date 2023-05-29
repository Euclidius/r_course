x <- read.csv(file = "https://raw.githubusercontent.com/tonytonov/Rcourse/master/R%20programming/avianHabitat.csv")

cover_names <- names(x)[c(F, F, F, F, F, T, F, T, F, T, F, T, F, T, F, T, F)]

z <- apply(x[, cover_names], 2, max)

z