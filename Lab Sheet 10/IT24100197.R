getwd()
setwd("C:\\Users\\asus\\OneDrive\\Desktop\\IT24100197 PS ")

# Observed frequencies
observed <- c(120, 95, 85, 100)

# Expected frequencies (equal probability)
total <- sum(observed)
expected <- rep(total / 4, 4)

# Perform chi-square test
chisq_test <- chisq.test(observed, p = c(0.25, 0.25, 0.25, 0.25))

# Display results
chisq_test
