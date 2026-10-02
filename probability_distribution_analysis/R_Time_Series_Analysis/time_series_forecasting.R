# Load dataset
data(AirPassengers)

# Dataset summary
summary(AirPassengers)

# Plot time series
plot(
  AirPassengers,
  main = "Monthly AirPassengers",
  xlab = "Year",
  ylab = "Passengers",
  lwd = 2
)

# 12-month moving average
moving_average <- stats::filter(
  AirPassengers,
  rep(1 / 12, 12),
  sides = 2
)

# Plot moving average
plot(
  AirPassengers,
  main = "AirPassengers and Moving Average",
  xlab = "Year",
  ylab = "Passengers",
  lwd = 2
)

lines(
  moving_average,
  lwd = 2
)

# Autocorrelation
acf(
  AirPassengers,
  main = "Autocorrelation of AirPassengers"
)

# Log transformation
log_passengers <- log(AirPassengers)

# ARIMA model
fit <- arima(
  log_passengers,
  order = c(1, 1, 1),
  seasonal = list(
    order = c(1, 1, 1),
    period = 12
  )
)

# ARIMA output
fit

# Three-step forecast
forecast_values <- predict(
  fit,
  n.ahead = 3
)

# Forecast on log scale
round(forecast_values$pred, 3)

# Standard errors
round(forecast_values$se, 3)

# Forecast on original passenger scale
round(exp(forecast_values$pred), 0)