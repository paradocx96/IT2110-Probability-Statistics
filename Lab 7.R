getwd()
setwd("C:\\Users\\PARADOCX\\Desktop\\RStudio")

#Question 1

#import file
data <- read.table("Forest.txt", header = TRUE, sep = ",")
fix(data)

#attach data
attach(data)

#Question 2

str(data)

#Question 3

#there are 517 observations

#Question 4

max(wind)

min(wind)

#Question 5

summary(temp)

#Question 6

boxplot(wind, horizontal = TRUE, outline = TRUE, pch = 16)
#there are 3 outliers 

#Question 7

#This boxplot for wind is negatively skewed
#and median closer to top quartile

#Question 8

median(temp)

#Question 9

mean(wind)

sd(wind)

#Question 10

IQR(wind)

#Question 11

freq <- table(day,month)
freq
#there are 21 observations 

#Question 12

get.avg <- function(x,y) {
  data1 <- c(x[month == y])
  print(paste(mean(data1)))
}

get.avg(temp,'sep')

#Question 13

freq <- table(day,month)
freq
#most observations on saturday






