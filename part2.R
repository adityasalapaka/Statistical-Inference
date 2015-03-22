data(ToothGrowth)
head(ToothGrowth)

library("ggplot2")
g <- ggplot(ToothGrowth, aes(len, dose))
p <- g + geom_point(aes(x = len, y = dose, colour = supp)) + geom_smooth(aes(colour = supp), method = "loess")
print(p)

vc <- ToothGrowth[ToothGrowth$supp == 'VC',]
oj <- ToothGrowth[ToothGrowth$supp == 'OJ',]

#difference <- vc-oj

t.test(vc$len[vc$dose == 0.5], oj$len[oj$dose == 0.5], paired = TRUE)
t.test(vc$len[vc$dose == 1], oj$len[oj$dose == 1], paired = TRUE)
t.test(vc$len[vc$dose == 2], oj$len[oj$dose == 2], paired = TRUE)
