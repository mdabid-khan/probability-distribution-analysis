# ==============================
# Lab 1 - Introduction to R
# ==============================

# 1. Create objects
age <- 21
name <- "Rafi"
passed <- TRUE

scores <- c(74, 82, 91, 68, 77)

score_matrix <- matrix(scores, nrow = 5)

student_info <- list(name = name, age = age, scores = scores)

students <- data.frame(
  id = 1:5,
  score = scores,
  passed = scores >= 70
)

# 2. Apply functions
mean(scores)
median(scores)
length(scores)
sum(scores)
min(scores)
max(scores)

str(students)

# 3. Explore RStudio features (run commands)
ls()
summary(students)
str(students)
?mean

# 4. Plot
plot(students$id, students$score,
     main = "Student Scores",
     xlab = "Student ID",
     ylab = "Score",
     col = "blue",
     pch = 19)