# Load dataset
data(mtcars)

# Build predictive regression model
predictive_model <- lm(mpg ~ wt + hp + cyl, data = mtcars)

# Model summary
summary(predictive_model)

# Coefficients
coef(predictive_model)

# Regression equation
coef(predictive_model)[1]
coef(predictive_model)[2]
coef(predictive_model)[3]
coef(predictive_model)[4]

# Confidence intervals
confint(predictive_model)

# Diagnostic plots
par(mfrow = c(2, 2))
plot(predictive_model)
par(mfrow = c(1, 1))

# Adjusted R-squared
summary(predictive_model)$adj.r.squared

# AIC
AIC(predictive_model)

# Example prediction
new_car <- data.frame(
  wt = 3.0,
  hp = 150,
  cyl = 6
)

predict(
  predictive_model,
  newdata = new_car,
  interval = "prediction"
)