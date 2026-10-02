# Probability simulation:
# Drawing a red card from a standard deck

set.seed(202)

# Simulation settings
trials <- 10000

# Standard deck
deck <- c(
  rep("Red", 26),
  rep("Black", 26)
)

# Simulate drawing one card
draws <- sample(
  deck,
  size = trials,
  replace = TRUE
)

# Estimated probability
estimated_probability <- mean(draws == "Red")

# Theoretical probability
theoretical_probability <- 26 / 52

# Results
estimated_probability
theoretical_probability

# Compare simulation with theory
difference <- abs(
  estimated_probability -
    theoretical_probability
)

difference

# Plot simulated outcomes
barplot(
  table(draws),
  main = "Simulated Card Colors",
  xlab = "Card Color",
  ylab = "Frequency"
)