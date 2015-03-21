head(ToothGrowth)

library("ggplot2")
g <- ggplot(ToothGrowth, aes(len, dose))
p <- g + geom_point(aes(x = len, y = dose, colour = supp)) + geom_smooth(aes(colour = supp), method = "loess")
print(p)


