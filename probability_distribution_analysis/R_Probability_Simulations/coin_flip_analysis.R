# Reproducible simulation
set.seed(202)

# Function to simulate coin flips
simulate_coins <- function(n) {
  flips <- sample(c("H", "T"), n, replace = TRUE)
  mean(flips == "H")
}

# Simulate different trial sizes
trial_sizes <- c(100, 1000, 10000)

head_probability <- sapply(
  trial_sizes,
  simulate_coins
)

# Compare proportions
data.frame(
  trials = trial_sizes,
  proportion_heads = head_probability
)