set.seed(1789)
bastille <- list(
  "La Chapelle Tower" = rbinom(5, 10, 1/2), 
  "Tresor Tower" = rbinom(8, 12, 1/4), 
  "Comte Tower" = rbinom(14, 3, 1/5) + 1,
  "Baziniere Tower" = rbinom(8, 4, 4/5), 
  "Bertaudiere Tower" = rbinom(4, 8, 2/3),
  "Liberte Tower" = rbinom(1, 100, 0.1), 
  "Puits Tower" = rbinom(5, 5, 0.7),
  "Coin Tower" = rbinom(3, 16, 0.4)
)
print(sapply(bastille, sum))
print(sum(sapply(bastille, sum)))
