getwd()
setwd("C:/Users/PARADOCX/Desktop/RStudio")

#import file
data <- read.csv("DATA 3.csv", header = TRUE)
data
fix(data)

#change column names
names(data) <- c("Age","Gender","Accommodation")
data

#Change table data
data$Gender <- factor(data$Gender,c(1,2),c("Male","Female"))
data$Accommodation <- factor(data$Accommodation, c(1,2,3), c("Stays_at_home","Boarded_Students","Lodging"))
data

#set directly use
attach(data)

mean(Age)

#disable directly use
detach(data)

mean(data$Age)

#Question 2
fix(data)

#frequency table
gender_freq <- table(Gender)
gender_freq

accommodation_freq <- table(Accommodation)
accommodation_freq


#Bar chart
barplot(gender_freq,main = "Bar Plot for Gender", ylab = "Frequency", xlab = "Gender")
abline(h = 0)

barplot(accommodation_freq, main = "Bar plot For Accomodation", ylab = "Frequency", xlab = "Accomodation")
abline(h = 0)

?barplot

#Pie chart
pie(gender_freq, main = "Pie chart for Gender")
pie(accommodation_freq, main = "Pie chart for Accomondation")


#Quantitative
#Box plot
boxplot(Age, main = "Box plot for Age", horizontal = TRUE)

#Histogram
hist(Age, main = "Histogram for Age")


#two way frequency table

Gender.Accommodation.table<-table(Gender,Accommodation)
