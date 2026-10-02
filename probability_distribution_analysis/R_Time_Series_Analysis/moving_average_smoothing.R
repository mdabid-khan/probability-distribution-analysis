# Load AirPassengers dataset
data(AirPassengers)

# Calculate 12-month moving average
moving_average <- stats::filter(
  AirPassengers,
  rep(1 / 12, 12),
  sides = 2
)

# Plot original series
plot(
  AirPassengers,
  main = "AirPassengers with Moving Average",
  xlab = "Year",
  ylab = "Passengers",
  lwd = 2
)

# Add moving average
lines(
  moving_average,
  lwd = 2
)