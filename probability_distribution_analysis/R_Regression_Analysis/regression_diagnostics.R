# Load dataset
data(mtcars)

# Fit model
simple_model <- lm(mpg ~ wt, data = mtcars)

# Fitted values and residuals
fitted_values <- fitted(simple_model)
residual_values <- resid(simple_model)

# Display values
head(
  data.frame(
    fitted = fitted_values,
    residual = residual_values
  )
)

# Residuals vs Fitted
plot(
  fitted_values,
  residual_values,
  main = "Residuals vs Fitted",
  xlab = "Fitted MPG",
  ylab = "Residuals",
  pch = 19
)

abline(h = 0, lwd = 2)

# Normal Q-Q plot
qqnorm(residual_values)
qqline(residual_values)