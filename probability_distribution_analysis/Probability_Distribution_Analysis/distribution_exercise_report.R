# Real-life example: Exam marks

set.seed(123)

marks <- rnorm(1000, mean = 65, sd = 10)

# Summary
summary(marks)

# Plot
hist(marks,
     col = "skyblue",
     main = "Exam Marks Distribution",
     xlab = "Marks")

# Probability (simulation)
mean(marks > 80)

# Theoretical probability
pnorm(80, mean = 65, sd = 10, lower.tail = FALSE)