getwd()
setwd("C:/Users/PARADOCX/Desktop/RStudio")

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

mean(data$Age)

attach(data)

mean(Age)

fix(data)

gender_freq <- table(Gender)
gender_freq

accomm_freq <- table(Accommodation)
accomm_freq

#Two way frequency table
Gender.Accommodation.table <- table(Gender,Accommodation)
Gender.Accommodation.table

#stacked / componenent bar chart
barplot(Gender.Accommodation.table, beside = FALSE, main = "Stacked Bar chart", xlab = "Accommodation", ylab = "Frequency", legend = rownames(Gender.Accommodation.table))
abline(h=0)

#multiple bar chart
barplot(Gender.Accommodation.table, beside = TRUE, main = "Multiple bar chart", legend = rownames(Gender.Accommodation.table), ylab = "Frequency", xlab = "Accommodation")
abline(h = 0)


#Question 4
#side by side boxplot
boxplot(Age~Gender, main = "side-by-side boxplot", xlab = "Gender", ylab = "Age")
boxplot(Age~Gender, main = "side-by-side boxplot", xlab = "Gender", ylab = "Age", horizontal = TRUE)

boxplot(Age~Accommodation, main = "side-by-side boxplot for Accommodation", xlab = "Accommodation", ylab = "Age")
boxplot(Age~Accommodation, main = "side-by-side boxplot for Accommodation", xlab = "Accommodation", ylab = "Age", horizontal = TRUE)


#Question 5

xtabs(Age~Gender+Accommodation)
xtabs(Age~Gender+Accommodation) / Gender.Accommodation.table
