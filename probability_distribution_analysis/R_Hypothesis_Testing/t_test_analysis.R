################################################################################
# — One-sample t-test -
################################################################################

# One-sample t-test

scores <- c(70, 72, 68, 75, 74, 71, 69, 73, 76, 78, 72, 74)

# Hypotheses
# H0: Mean score = 75
# H1: Mean score != 75

result_one_sample <- t.test(scores, mu = 75)

result_one_sample

################################################################################
# — Independent two-sample t-test -
################################################################################

# Two-sample t-test

group_A <- c(70, 72, 68, 75, 74, 71, 69, 73)
group_B <- c(76, 78, 75, 82, 80, 77, 74, 79)

# Hypotheses
# H0: The two group means are equal
# H1: The two group means are different

result_two_sample <- t.test(
  group_A,
  group_B,
  var.equal = FALSE
)

result_two_sample

################################################################################
# — Formal conclusions -
################################################################################

# One-sample conclusion

if (result_one_sample$p.value < 0.05) {
  print("Reject H0: The mean score is significantly different from 75.")
} else {
  print("Fail to reject H0: There is not enough evidence that the mean score differs from 75.")
}


# Two-sample conclusion

if (result_two_sample$p.value < 0.05) {
  print("Reject H0: The two group means are significantly different.")
} else {
  print("Fail to reject H0: There is not enough evidence that the two group means are different.")
}

