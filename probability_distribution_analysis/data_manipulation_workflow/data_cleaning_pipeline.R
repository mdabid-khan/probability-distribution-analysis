# Create dataset with 15 records and missing values
data <- data.frame(
  id = 1:15,
  name = c("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"),
  section = c("A","B","A","B","A","B","A","B","A","B","A","B","A","B","A"),
  marks = c(80, 75, NA, 90, 85, NA, 88, 92, 76, 84, NA, 89, 91, 77, 83)
)

# Save raw dataset
write.csv(data, "raw_dataset.csv", row.names = FALSE)

# Import dataset
df <- read.csv("raw_dataset.csv")

# Remove duplicates
df <- unique(df)

# Replace missing values with mean
mean_marks <- mean(df$marks, na.rm = TRUE)
df$marks[is.na(df$marks)] <- round(mean_marks,1)

# Create new variables
df$grade <- ifelse(df$marks >= 80, "A", "B")
df$bonus_marks <- df$marks + 5

# Grouped summary
summary_table <- aggregate(marks ~ section, data = df, FUN = mean)

print(summary_table)

# Export cleaned dataset
write.csv(df, "cleaned_dataset.csv", row.names = FALSE)

# Show first 10 rows
head(df, 10)