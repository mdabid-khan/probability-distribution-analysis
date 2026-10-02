set.seed(202)

# Simulation
sim_scores <- rnorm(10000, mean = 70, sd = 8)

# Estimate probability
mean(sim_scores > 80)

# Theoretical probability
pnorm(80, mean = 70, sd = 8, lower.tail = FALSE)

# Binomial exact probability
dbinom(3, size = 5, prob = 0.5)