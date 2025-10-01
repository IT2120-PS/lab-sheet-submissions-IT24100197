getwd()
setwd('C:\\Users\\asus\\OneDrive\\Desktop\\IT24100197_PS')
# Exercise

# 1. Assume that the time taken to bake a batch of cookies is normally distributed with mean 45 minutes and standard deviation 2 minutes.

# i. Generate a random sample of size 25 for the baking time.

bake_times <- rnorm(25, mean = 45, sd = 2)
print(bake_times)

# ii. Test whether the average baking time is less than 46 minutes at a 5% level of significance.

t_test_bake <- t.test(bake_times, mu = 46, alternative = "less")
print(t_test_bake)

# Perform one-sample t-test
# H0: mu = 46
# H1: mu < 46  (mean baking time is less than 46)
# Interpretation (add to Word doc):
# p-value = 0.0007164 < 0.05, reject H0.
# Conclusion: Significant evidence that average baking time < 46 minutes.
