getwd()
setwd("C:\\Users\\PARADOCX\\Desktop\\RStudio")

data <- read.table("Data 5.txt", header = TRUE, sep = ",")

names(data) <- c("x1","x2")

fix(data)

attach(data)

hist(x2, 
     main = "Number of shareholders")
abline(h = 0)

hist(x2,
     main = "Number of shareholders",
     breaks = seq(130,270,length = 8),
     right = FALSE)

histogram <- hist(x2,
                  main = "Number of shareholders",
                  breaks = seq(130,270,length = 8),
                  right = FALSE)

#Question 3
breaks <- round(histogram$breaks)
breaks

freq <- histogram$counts
freq

mids <- histogram$mids
mids

classes <- c()
i <- 1
for (i in 1:length(breaks)-1) {
  classes[i] <- paste0("[", breaks[i], ",", breaks[i+1], "]")
}

classes
cbind(Classes = classes, Frequency = freq)

lines(histogram$mids,freq)

plot(mids,freq,type = 'l',main = "Freqency plygon for shareholders",xlab = "Shareholders",ylab = "Freqency")

#Question 5

cum.freq <- cumsum(freq)
new <- c()

for (i in 1:length(breaks)) {
  if(i == 1){
    new[i] = 0
  } else {
    new[i] = cum.freq[i-1]
  }
}

new

plot(breaks,
     new,
     type = 'o',
     main = "Frequency Plygon for shareholders",
     xlab = "Shareholders",
     ylab = "cumulative Frequency",
     ylim = c(0, max(cum.freq)))

#Question 6
cbind(Upper = breaks, CumFreq = new)

abline(h = sum(freq) * 0.75, v = 207)
