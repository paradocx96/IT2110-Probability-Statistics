#vectors

a<-c(1,2,3,4)
b<-c(5,6,7,8)
class(a)
class(b)
x<-c("A","B","C","D")
class(x)

#Factor
Gender = c(0,1,0,1,0,1)
Gender
Gender <- factor(Gender,c(0,1),c("Male,Female"))
Gender

#List
a<-c(1,2,3,4)
b<-"RED"
c<-21
a
b
c

Data<-list(a,b,c)
Data
class(Data)

objects()

#Matrix
matrix_1<-matrix(c(1,2,3,4),nrow = 2, ncol = 2, byrow = TRUE)
matrix_1
matrix_1<-matrix(c(1,2,3,4),nrow = 2, ncol = 2, byrow = FALSE)
matrix_1


#data frame
Height <- c(12,23,56,49)
Weight <- c(23,45,46,59)
data_set <- data.frame(Height,Weight)
data_set
class(data_set)


#Packages
install.packages("ggplot2")
library(ggplot2)
