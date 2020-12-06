getwd()

#import data file
data <- read.table("Data.txt", header = TRUE, sep = ",")

#view table
fix(data)

#change names of columns
names(data) <- c("X1","X2")

fix(data)

attach(data)

#Question 1

hist(X2, main = "Number of shareholders")
abline(h = 0)

#Question 2

hist(X2, main = "Number of shareholders", breaks = seq(130,270,length = 8), right = FALSE)
abline(h = 0)

histogram <- hist(X2, main = "Number of shareholders", breaks = seq(130,270,length = 8), right = FALSE)

#Question 3

breaks <- round(histogram$breaks)
breaks

freq <- histogram$counts
freq

mids <- histogram$mids
mids

classes <- c()

i <- 1
for (i in 1:length(breaks) - 1) {
  classes[i] <- paste0("[",breaks[i],",",breaks[i+1],"]")
}

classes
cbind(Classes = classes, Frequency = freq)

#Question 4

lines(histogram$mids, freq)

plot(mids,freq, type = "l", main = "Frequency plygon for shareholders", xlab = "Shareholdrs", ylab = "Frequency")

#Question 5

cum.freq <- cumsum(freq)

new <- c()

for (i in 1:length(breaks)) {
  if(i == 1){
    new[1] = 0
  } else {
    new[i] = cum.freq[i - 1]
  }
}

new

plot(breaks,new, type = "o", main = "Frequency plygon for shareholders", xlab = "Shareholdrs", ylab = "Cumulative Frequency", ylim = c(0,max(cum.freq)))

#Question 6

cbind(Upper = breaks, CumFreq = new)

abline(h = sum(freq) * 0.75, v = 207)
