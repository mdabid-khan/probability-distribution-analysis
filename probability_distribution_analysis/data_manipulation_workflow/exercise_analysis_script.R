# Create dataset with 30 rows and 5 variables
set.seed(1)

data <- data.frame(
  id = 1:30,
  age = sample(18:25, 30, replace = TRUE),
  marks = sample(c(60:100, NA), 30, replace = TRUE),
  section = sample(c("A","B"), 30, replace = TRUE),
  attendance = sample(60:100, 30, replace = TRUE)
)

# Save raw data
write.csv(data, "raw_dataset.csv", row.names = FALSE)

# Import data
df <- read.csv("raw_dataset.csv")

# Remove duplicates
df <- unique(df)

# Handle missing values
mean_marks <- mean(df$marks, na.rm = TRUE)
df$marks[is.na(df$marks)] <- round(mean_marks,1)

# Create new variables
df$grade <- ifelse(df$marks >= 80, "A", "B")
df$status <- ifelse(df$attendance >= 75, "Regular", "Irregular")

# Summary
summary(df)

# Grouped summary
aggregate(marks ~ section, data = df, FUN = mean)

# Export cleaned data
write.csv(df, "cleaned_dataset.csv", row.names = FALSE)