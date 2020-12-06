getwd()

nicotine <- read.table("data 6.txt", header = TRUE)

fix(nicotine)

nicotine

nicotine <- nicotine[[1]]

nicotine

#Question 1
mean(nicotine)

#standard divination
sd(nicotine)

#variance
var(nicotine)

#Question 2

s <- sample(nicotine, size = 5, replace = TRUE)

s

samples <- c()
n <- c()

for (i in 1:30) {
  s <- sample(nicotine, size = 5, replace = TRUE)
  samples <- cbind(samples,s)
  n <- c(n, paste('S', i))
}

colnames(samples) <- n
samples

s.means <- colMeans(samples)
s.means

mean(s.means)

var(s.means)

#Question 4

mean(nicotine)
mean(s.means)

#Question 5

var(nicotine)
var(s.means)
