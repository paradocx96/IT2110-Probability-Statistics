getwd()
setwd("C:\\Users\\PARADOCX\\Desktop\\RStudio")

#Question 1

data <- read.table("DATA 4.txt", header = TRUE, sep = "")

#display data
fix(data)

attach(data)
detach(data)

#change column names
names(data) <- c("Team Name","Team Attendance","Team Salary","Years")
data

#Question 2.A

#for attendance
boxplot(data$`Team Attendance`, main = "Attendance", outline = TRUE)
hist(data$`Team Attendance`, main = "Histogram for Team Attendance", xlab = "Attendance", ylab = "Frequency")
stem(data$`Team Attendance`)

#for salary
boxplot(data$`Team Salary`, main = "Salary", outline = TRUE)
hist(data$`Team Salary`, main = "Histogram for Team Salary", xlab = "Salary", ylab = "Frequency")
stem(data$`Team Salary`)

#for years
boxplot(data$Years, main = "Years", outline = TRUE)
hist(data$Years, main = "Histogram for years", xlab = "years", ylab = "Frequency")
stem(Years)

#Question 2.B

#for attendance
mean(data$`Team Attendance`)
median(data$`Team Attendance`)
sd(data$`Team Attendance`)

#for salary
mean(data$`Team Salary`)
median(data$`Team Salary`)
sd(data$`Team Salary`)

#for years
mean(data$Years)
median(data$Years)
sd(data$Years)

#Question 2.C

#for attendance
summary(data$`Team Attendance`)

quantile(data$`Team Attendance`)
quantile(data$`Team Attendance`)[1]
quantile(data$`Team Attendance`)[2]
quantile(data$`Team Attendance`)[3]
quantile(data$`Team Attendance`)[4]

#for salary
summary(data$`Team Salary`)

quantile(data$`Team Salary`)
quantile(data$`Team Salary`)[1]
quantile(data$`Team Salary`)[2]
quantile(data$`Team Salary`)[3]
quantile(data$`Team Salary`)[4]

#for years
summary(data$Years)

quantile(data$Years)
quantile(data$Years)[1]
quantile(data$Years)[2]
quantile(data$Years)[3]
quantile(data$Years)[4]

#Question 2.D

IQR(data$`Team Attendance`)
IQR(data$`Team Salary`)
IQR(data$Years)

#Question 3

get.mode <- function(y) {
  counts <- table(y)
  names(counts)[counts == max(counts)]
}

get.mode(data$Years)

get.mode(data$`Team Attendance`)
get.mode(data$`Team Salary`)

#Question 4

get.outliers <- function(z) {
  q1 <- quantile(z)[2]
  q3 <- quantile(z)[4]
  iqr <- q3 - q1
  ub <- q3 + 1.5 * iqr
  lb <- q1 - 1.5 * iqr
  print(paste("Upper Bound : ", ub))
  print(paste("Lower Bound : ", lb))
  print(paste("Outliers : ", paste(sort(z[z < lb | z > ub]), collapse = "/")))
}

get.outliers(data$Years)

get.outliers(data$`Team Attendance`)
get.outliers(data$`Team Salary`)
