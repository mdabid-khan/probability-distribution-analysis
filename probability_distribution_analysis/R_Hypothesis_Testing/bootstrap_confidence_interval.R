# Bootstrap confidence interval

set.seed(202)

scores <- c(76, 78, 75, 82, 80, 77, 74, 79)

boot_means <- replicate(5000, {
  sample_scores <- sample(
    scores,
    size = length(scores),
    replace = TRUE
  )
  
  mean(sample_scores)
})

# 95% confidence interval
quantile(boot_means, c(0.025, 0.975))

# Histogram
hist(
  boot_means,
  main = "Bootstrap Means",
  xlab = "Mean Score"
)