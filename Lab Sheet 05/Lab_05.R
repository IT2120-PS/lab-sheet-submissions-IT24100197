getwd()
setwd("C:\\Users\\IT24100197\\Desktop\\IT24100197")
getwd()

(Q1)# Import the dataset into R
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE , sep = " ")


(Q2)#Draw a histogram for deliver times using nine class intervals
histogram<-hist(Delivery_Times$Delivery_Time_.minutes.,
                main ="Histogram for Delivery Times",
                breaks = seq(20,70,length(10)),
                right = FALSE)

(Q3)#Comment on the shape of the distribution
#Bell shaped / Normal because the bars are all in the middle and tapper off.

(Q4)#Draw a cumulative frequency polygon (ogive) for the data in a separate plot.
str(Delivery_Times)
colnames((Delivery_Times))

# Extract histogram data
breaks<-round(histogram$breaks)
freq<- histogram$counts
mids<- histogram$mids

# Calculate cumulative frequency
cum_freq <- cumsum(freq)

# Create the cumulative frequency polygon (ogive)
plot(mids, cum_freq, type = "o", col = "blue", 
     xlab = "Delivery Time (minutes)", ylab = "Cumulative Frequency", 
     main = "Cumulative Frequency Polygon (Ogive)")

