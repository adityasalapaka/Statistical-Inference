lambda <- 0.2
n <- 40
sims <- 1:1000

set.seed(850)

mns <- data.frame(x = sapply(sims, function(x){
        mean(rexp(n, lambda))
}))


mean(mns$x) # theoretical mean is 1/lambda
var(mns$x) # theoretical variance is ((1/lambda)/sqrt(n))^2

library(ggplot2)

g <- ggplot(mns, aes(x = mns$x))
p <- g + geom_histogram(aes(y = ..density..), binwidth = 0.4, fill = "white", color = "black") + 
        stat_function(fun = dnorm, arg = list(mean = 5, sd = sd(mns$x)), colour = "red")
print(p)
