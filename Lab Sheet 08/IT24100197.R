getwd()
setwd("C:\\Users\\IT24100197\\Desktop\\IT24100197")
getwd()
# Read the data set (first row is header)
weights_data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)

# Attach the data frame so columns can be accessed directly
attach(weights_data)

# View / edit data interactively
fix(weights_data)


#Q1
# Mean and SD using attached column
pop_mean <- mean(Weight.kg.)
pop_mean
pop_sd   <- sd(Weight.kg.)
pop_sd 


#Q2
# Store samples
samples <- c()
n <- c()

for (i in 1:25) {
  s <- sample(Weight.kg., 6, replace = TRUE)   # take sample of size 6
  samples <- cbind(samples, s)                 # bind as new column
  n <- c(n, paste('s', i))                     # sample labels
}
colnames(samples) = n
s.means <- apply(samples,2,mean)
s.means
s.sds   <- apply(samples, 2, sd)
s.sds

#Q3
true_mean <- mean(Weight.kg.)
true_mean 
true_sd  <- sd(Weight.kg.)
true_sd


