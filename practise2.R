getwd()

data <- read.csv("DATA 3.csv", header = TRUE)

fix(data)

names(data) <- c("Age","Gender","Accommodation")

data$Gender <- factor(data$Gender, c(1,2), c("Male", "Female"))

data$Accommodation <- factor(data$Accommodation, c(1,2,3), c("Stays_at_home","Boarded_Students","Lodging"))

data

attach(data)

Gender

mean(Age)

#Question Lab 3 Q 2

#Categorical Analysis
#Frequency Table
gender_freq <- table(Gender)
gender_freq

accomm_freq <- table(Accommodation)
accomm_freq

#bar chart
barplot(gender_freq, 
        main = "Gender Bar chart", 
        ylab = "Frequency", 
        xlab = "Gender")
abline(h = 0)

barplot(accomm_freq, 
        main = "Bar chart for Accommodation", 
        ylab = "Frequency", 
        xlab = "Accommodation")
abline(h = 0)

#pie chart
pie(gender_freq, main = "Gender pie chart")
pie(accomm_freq, main = "Accommodation pie chart")

#Quantitative data analysis
#box plot
boxplot(Age, main = "Box plot for Age")
boxplot(Age, main = "Box plot for Age", horizontal = TRUE)

#histogram
hist(Age, main = "Histogram for Age")

#2 way frequency table
Gender.Accommodation.table <- table(Gender,Accommodation)
Gender.Accommodation.table

#stacked / component bar chart
barplot(Gender.Accommodation.table, 
        main = "Stacked bar chart", 
        xlab = "Accommodation", 
        ylab = "Frequency", 
        legend = rownames(Gender.Accommodation.table))
abline(h = 0)

#Multiple bar chart
barplot(Gender.Accommodation.table, 
        beside = TRUE, 
        main = "Multiple bar chart",
        ylab = "Frequency", 
        xlab = "Accommodation",
        legend = rownames(Gender.Accommodation.table))
abline(h = 0)

#Question 4
#side by side box plot
boxplot(Age ~ Gender,
        main = "Side by Side box plot",
        xlab = "Gender",
        ylab = "Age",
        horizontal = TRUE)

boxplot(Age ~ Accommodation,
        main = "Side by Side box plot",
        xlab = "Accommodation",
        ylab = "Age",
        horizontal = TRUE,
        pch = 8)

#Question 5
xtabs(Age ~ Gender + Accommodation) / Gender.Accommodation.table


