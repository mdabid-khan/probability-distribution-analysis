# Reproducible simulation
set.seed(202)

# Switch strategy
monty_switch <- function() {
  prize <- sample(1:3, 1)
  first_choice <- sample(1:3, 1)
  
  first_choice != prize
}

# Stay strategy
monty_stay <- function() {
  prize <- sample(1:3, 1)
  first_choice <- sample(1:3, 1)
  
  first_choice == prize
}

# Run simulations
switch_results <- replicate(10000, monty_switch())
stay_results <- replicate(10000, monty_stay())

# Win probabilities
switch_probability <- mean(switch_results)
stay_probability <- mean(stay_results)

switch_probability
stay_probability