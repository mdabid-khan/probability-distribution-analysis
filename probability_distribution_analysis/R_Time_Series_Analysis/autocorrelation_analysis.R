# Load AirPassengers dataset
data(AirPassengers)

# Inspect autocorrelation
acf(
  AirPassengers,
  main = "Autocorrelation of AirPassengers"
)