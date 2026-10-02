# Load dataset
data(mtcars)

# Simple regression model
model_a <- lm(mpg ~ wt, data = mtcars)

# Multiple regression model
model_b <- lm(mpg ~ wt + hp + cyl, data = mtcars)

# Compare model summaries
summary(model_a)
summary(model_b)

# Adjusted R-squared
summary(model_a)$adj.r.squared
summary(model_b)$adj.r.squared

# Compare AIC
AIC(model_a, model_b)