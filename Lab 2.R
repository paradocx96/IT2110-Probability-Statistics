getwd()
setwd("C://Users//PARADOCX//Desktop//RStudio")
getwd()

#print number 1 to 10
1:10

a<-seq(2,10,2)
a
a[3]
a[5]
b<-seq(1,100,2)
b
b[20]

#sample data
sample(1:3)

sample(1:10)

sample(1:3,size=3,replace = FALSE)
sample(1:3,size=3,replace = TRUE)

sample(1:3, size = 2, replace = FALSE)
sample(1:3, size = 2, replace = TRUE)

sample(1:3, size = 5, replace = TRUE)

#we cannot get 5 numbers without replacement from 3 numbers
sample(1:3, size = 5, replace = FALSE)

sample(c(2,4,8,7,9,6,3,8),size = 5,replace = FALSE)
sample(c(2,4,8,7,9,6,3,8),size = 5,replace = TRUE)

sample(c(2,4,8,7,9,6,3,8),size = 20,replace = TRUE)

#we cannot get 20 numbers without replacement
sample(c(2,4,8,7,9,6,3,8),size = 20,replace = FALSE)

#prob = probability waste
sample(1:2, size = 10, prob = c(0.3,0.7), replace = TRUE)

#using weightage = 1,3
sample(1:2, size = 10, prob = c(1,3), replace = TRUE)


#Control statements
#if else
x <- 1:10
y <- sample(x,size = 1)
if(y <= 5) {
  print("y is less than 5")
} else {
  print("y is greater than 5")
}

#nested if
xx <- sample(-5:8, size = 1)
if(xx < 0) {
  print("negative")
} else if(xx > 0) {
  print("positive")
}else {
  print("zero")
}

#for loop
for(i in 1:10){
  print(i)
}

students <- c("Ann","Steve","Kyle","John")
for (i in 1:4) {
  print(students[i])
}

#while loop
j <- 1
while (j <= 10) {
  print(j)
  j=j+1
}

k = 5 
while (k < 10) {
  print(k)
  k = k + 1
}


m <- 2.987
while (m < 4.987) {
  m <- m + 0.987
  print(c(m,m-1,m-2))
}


#Function
#Ex1
function_1 <- function(a,b) {
  x <- a+b
  x
}

function_1(5,7)

#Ex2
h <- 1
function_2 <- function(r) {
  h <<- h+1
  r <- h+r
  print(r)
}

function_2(2)


#Import Files
#read txt file
data_1 <- read.table("Student.txt",header = TRUE,sep = ",")
data_1
fix(data_1)

#read csv file
data_2 <- read.csv("DATA 2.csv", header = TRUE)
data_2
fix(data_2)

#Export File
height <- c(12,33,56)
weight <- c(100,150,80)
mydata <- data.frame(height,weight)
mydata
fix(mydata)

write.table(mydata, file = "Information.txt", sep = ",")

write.csv(mydata, file = "Infomation.csv")

#read from nowhere
nowhere <- read.csv("C:\\Users\\PARADOCX\\Documents\\DATA 2.csv",  header = TRUE)
nowhere
fix(nowhere)
