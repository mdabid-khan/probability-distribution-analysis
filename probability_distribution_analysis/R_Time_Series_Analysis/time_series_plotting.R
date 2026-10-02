# Load AirPassengers dataset
data(AirPassengers)

# Plot the time series
plot(
  AirPassengers,
  main = "AirPassengers Time Series",
  xlab = "Year",
  ylab = "Number of Passengers",
  lwd = 2
)