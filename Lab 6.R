getwd()
setwd("C:\\Users\\PARADOCX\\Desktop\\RStudio")

nicotine <- read.table("Data 6.txt", header = TRUE)

fix(nicotine)

nicotine <- nicotine[[1]]

nicotine

#Question 1

mean(nicotine)

sd(nicotine)

var(nicotine)

#Question 2

s <- sample(nicotine, size = 5)

s

samples <- c()
n <- c()
for (i in 1:30) {
  s <-sample(nicotine,5)
  samples <- cbind(samples,s)
  n <- c(n, paste('S', i))
}

colnames(samples)<-n
samples

#Question 3

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
