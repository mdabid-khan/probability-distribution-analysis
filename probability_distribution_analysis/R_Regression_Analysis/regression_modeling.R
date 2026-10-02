################################################################################
# — Simple Regression -
################################################################################

# Load dataset
data(mtcars)

# Simple linear regression
simple_model <- lm(mpg ~ wt, data = mtcars)

# Model coefficients
coef(simple_model)

# Model summary
summary(simple_model)

################################################################################
# — Scatter Plot with Regression Line -
################################################################################

# Scatter plot
plot(
  mtcars$wt,
  mtcars$mpg,
  main = "MPG vs Vehicle Weight",
  xlab = "Weight",
  ylab = "Miles per Gallon",
  pch = 19
)

# Add fitted regression line
abline(simple_model, lwd = 2)