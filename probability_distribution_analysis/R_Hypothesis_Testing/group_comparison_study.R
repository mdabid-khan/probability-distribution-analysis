# Study: Comparing test scores of two groups

group_A <- c(
  72, 75, 78, 70, 74,
  76, 73, 77, 71, 79
)

group_B <- c(
  82, 85, 80, 88, 84,
  86, 83, 87, 81, 89
)

# Hypotheses
# H0: The mean scores of Group A and Group B are equal.
# H1: The mean scores of Group A and Group B are different.

# Independent two-sample t-test
test_result <- t.test(
  group_A,
  group_B,
  var.equal = FALSE
)

# R output
test_result

# p-value
test_result$p.value

# 95% confidence interval
test_result$conf.int

# Decision
if (test_result$p.value < 0.05) {
  print("Reject H0: There is a significant difference between the two group means.")
} else {
  print("Fail to reject H0: There is not enough evidence of a significant difference between the two group means.")
}