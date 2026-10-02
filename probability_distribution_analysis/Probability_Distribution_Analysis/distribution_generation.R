# Set seed for reproducibility
set.seed(202)

# Generate 1000 values
normal_sample <- rnorm(1000, mean = 70, sd = 8)
binomial_sample <- rbinom(1000, size = 5, prob = 0.5)
poisson_sample <- rpois(1000, lambda = 3)

# Summary
summary(normal_sample)
summary(binomial_sample)
summary(poisson_sample)

# Standard deviation
sd(normal_sample)
sd(binomial_sample)
sd(poisson_sample)