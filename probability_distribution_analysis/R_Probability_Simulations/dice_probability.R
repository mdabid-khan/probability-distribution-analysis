# Reproducible simulation
set.seed(202)

# Roll two dice
die1 <- sample(1:6, 10000, replace = TRUE)
die2 <- sample(1:6, 10000, replace = TRUE)

# Calculate sum
dice_sum <- die1 + die2

# Estimate P(Sum = 7)
estimated_probability <- mean(dice_sum == 7)

estimated_probability

# Frequency table
table(dice_sum)

# Theoretical probability
theoretical_probability <- 6 / 36

theoretical_probability