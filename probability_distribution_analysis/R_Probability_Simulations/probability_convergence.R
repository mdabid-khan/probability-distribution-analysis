# Reproducible simulation
set.seed(202)

# Trial sizes
trial_sizes <- c(100, 1000, 10000)

# Function to estimate P(Heads)
estimate_heads <- function(n) {
  flips <- sample(
    c("H", "T"),
    size = n,
    replace = TRUE
  )
  
  mean(flips == "H")
}

# Calculate estimates
estimates <- sapply(
  trial_sizes,
  estimate_heads
)

# Display results
data.frame(
  trials = trial_sizes,
  estimated_probability = estimates
)

# Convergence plot
plot(
  trial_sizes,
  estimates,
  type = "b",
  log = "x",
  ylim = c(0.4, 0.6),
  main = "Convergence of Coin Flip Simulation",
  xlab = "Number of Trials",
  ylab = "Estimated P(Heads)"
)

abline(
  h = 0.5,
  lwd = 2
)