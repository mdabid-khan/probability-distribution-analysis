# Load AirPassengers dataset
data(AirPassengers)

# Log transformation
log_passengers <- log(AirPassengers)

# Fit ARIMA model
fit <- arima(
  log_passengers,
  order = c(1, 1, 1),
  seasonal = list(
    order = c(1, 1, 1),
    period = 12
  )
)

# Display model
fit

# Three-step forecast
forecast_values <- predict(
  fit,
  n.ahead = 3
)

# Forecast values
round(forecast_values$pred, 3)

# Standard errors
round(forecast_values$se, 3)

# Convert predictions back to passenger scale
round(exp(forecast_values$pred), 0)