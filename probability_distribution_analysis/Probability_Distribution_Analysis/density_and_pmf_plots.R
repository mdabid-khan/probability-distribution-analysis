# Normal PDF
x <- seq(40, 100, by = 0.1)
density_values <- dnorm(x, mean = 70, sd = 8)

plot(x, density_values,
     type = "l",
     lwd = 2,
     col = "darkgreen",
     main = "Normal PDF",
     xlab = "Value",
     ylab = "Density")

# Binomial PMF
k <- 0:10
pmf_values <- dbinom(k, size = 10, prob = 0.5)

plot(k, pmf_values,
     type = "h",
     lwd = 3,
     col = "blue",
     main = "Binomial PMF",
     xlab = "Successes",
     ylab = "Probability")

# Poisson PMF
k2 <- 0:10
pmf_poisson <- dpois(k2, lambda = 3)

plot(k2, pmf_poisson,
     type = "h",
     lwd = 3,
     col = "red",
     main = "Poisson PMF",
     xlab = "Count",
     ylab = "Probability")