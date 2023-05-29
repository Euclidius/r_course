cat_temper <- c("задиристый", "игривый", "спокойный", "ленивый")
cat_color <- c("белый", "серый", "чёрный", "рыжий")
cat_age <- c("кот", "котёнок")
cat_trait <- c("с умными глазами", "с острыми когтями", "с длинными усами")


x <- outer(cat_temper, outer(cat_color, outer(cat_age, cat_trait, paste, sep = ' '), paste, sep = ' '), paste, sep = ' ')
x <- sort(x)
x[42]