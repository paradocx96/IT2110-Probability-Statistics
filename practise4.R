getwd()

data <- read.table("data 4.txt", header = TRUE, sep = "")
fix(data)
attach(data)

boxplot(X1,main = "Attendance", outline = TRUE)
boxplot(X2,main = "Salary", outline = TRUE)
boxplot(X3,main = "Years", outline = TRUE)

hist(X1, main = "Histogram for Attendance",xlab = "Attendance",ylab = "Frequency")
hist(X2, main = "Histogram for Salary",xlab = "Salary",ylab = "Frequency")
hist(X3, main = "Histogram for Years",xlab = "Years",ylab = "Frequency")

stem(X1)
stem(X2)
stem(X3)

mean(X1)
mean(X2)
mean(X3)

median(X1)
median(X2)
median(X3)

sd(X1)
sd(X2)
sd(X3)

summary(X1)
summary(X1)[2]
summary(X1)[5]

quantile(X1)
quantile(X1)[2]
quantile(X1)[4]

IQR(X1)
IQR(X2)
IQR(X3)

quantile(X1)[4] - quantile(X1)[2]
quantile(X2)[4] - quantile(X2)[2]
quantile(X3)[4] - quantile(X3)[2]


#Get modes function

get.mode <- function(y) {
  counts <- table(y)
  names(counts)[counts == max(counts)]
}

get.mode(X3)

#get outliers function

get.outliers <- function(z) {
  q1 <- quantile(z)[2]
  q3 <- quantile(z)[4]
  iqr <- q3 - q1
  ub <- q3 + 1.5 * iqr
  lb <- q1 - 1.5 * iqr
  print(paste("Upper Bound : ", ub))
  print(paste("Lower Bound : ", lb))
  print(paste("Outliers : ", paste(sort(z[z < lb | z > ub]), collapse = ",")))
}

get.outliers(X3)

get.outlier <- function(z) {
  q1 <- quantile(z)[2]
  q3 <- quantile(z)[4]
  ub <- q3 + 1.5 * IQR(z)
  lb <- q1 - 1.5 * IQR(z)
  print(paste("Upper Bound : ", ub))
  print(paste("Lower Bound : ", lb))
  print(paste("Outliers : ", paste(sort(z[z < lb | z > ub]), collapse = ",")))
}

get.outlier(X3)