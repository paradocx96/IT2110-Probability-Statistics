#Matrix

m1 <- matrix(c(1,2,3,4),nrow = 2,ncol = 2,byrow = TRUE)
m2 <- matrix(c(1,2,3,4),nrow = 2,ncol = 2,byrow = FALSE)
m1
m2

#DATA FRAME

h <- c(10,20,30,40)
w <- c(50,60,70,80)

data1 <- data.frame(h,w)

data1

class(data1)

#Package
#install a package
install.packages("ggplot2")
#load a package
library(ggplot2)

getwd()
setwd("C:\\Users\\PARADOCX\\Desktop\\RStudio")

1:10

seq(1,10)

seq(1,10,1)

seq(1,10,2)

a <- seq(1,10,2)

a <- seq(2,10,2)

a

a[1]
a[2]
a[3]

b <- seq(2, 100, 2)

b

b[15]

sample(1:10)

sample(1:3)

sample(1:3, size = 3)

sample(1:3, size = 5, replace = TRUE)

c <- sample(1:100, size = 10)

c #12 52 93 60 79 15 21 80 96 41

d <- sample(c(10,20,30,40,50), size = 3)

d

e <- sample(c(10,20,30,40,50), size = 10, replace = TRUE)

e

f <- sample(1:2, size = 10, prob = c(1, 3), replace = TRUE)

f


#WHILE

g <- 1

while(g <= 10) {
  print(c('Number :', g))
   g = g + 1
}

#Import file

data_1 <- read.table("Student.txt", header = TRUE, sep = ",")

fix(data_1)

data_2 <- read.csv("DATA 2.csv", header = TRUE)

data_2

fix(data_2)

mydata <- data.frame(a,b)

fix(mydata)

write.table(mydata, file = "mydatax2.txt", sep = ",")

write.csv(mydata, file = "mydatax3.csv")

data_4 <- read.csv("mydatax3.csv", header = TRUE)

fix(data_4)

