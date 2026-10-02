# Create dataset of 10 students
students2 <- data.frame(
  id = 1:10,
  name = c("A","B","C","D","E","F","G","H","I","J"),
  department = c("CSE","EEE","BBA","CSE","EEE","BBA","CSE","EEE","BBA","CSE"),
  quiz = c(70,80,75,60,90,85,88,77,66,95),
  attendance = c(85,90,78,88,92,80,75,83,79,91)
)

# Average quiz score
mean(students2$quiz)

# Count attendance > 80%
sum(students2$attendance > 80)