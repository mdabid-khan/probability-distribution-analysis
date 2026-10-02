# ============================================================
# Plant Growth Treatment Study
# One-Way ANOVA & Tukey HSD Analysis
# ============================================================


# ------------------------------------------------------------
# 1. Load PlantGrowth Dataset
# ------------------------------------------------------------

data("PlantGrowth")


# ------------------------------------------------------------
# 2. View the Dataset
# ------------------------------------------------------------

PlantGrowth


# ------------------------------------------------------------
# 3. Basic Summary of the Dataset
# ------------------------------------------------------------

summary(PlantGrowth)


# ------------------------------------------------------------
# 4. Descriptive Statistics
# ------------------------------------------------------------

# Mean weight of each group
aggregate(weight ~ group,
          data = PlantGrowth,
          FUN = mean)

# Standard deviation of each group
aggregate(weight ~ group,
          data = PlantGrowth,
          FUN = sd)

# Number of plants in each group
aggregate(weight ~ group,
          data = PlantGrowth,
          FUN = length)

# Median weight of each group
aggregate(weight ~ group,
          data = PlantGrowth,
          FUN = median)


# ------------------------------------------------------------
# 5. Boxplot Visualization
# ------------------------------------------------------------

boxplot(weight ~ group,
        data = PlantGrowth,
        main = "Plant Growth Treatment Study",
        xlab = "Treatment Group",
        ylab = "Yield Weight",
        col = c("#2E7D6B", "#6FA8DC", "#9B8ACB"))


# ------------------------------------------------------------
# 6. One-Way ANOVA
# ------------------------------------------------------------

# Create the ANOVA model
model <- aov(weight ~ group,
             data = PlantGrowth)

# Display ANOVA results
summary(model)


# ------------------------------------------------------------
# 7. Tukey HSD Post-Hoc Test
# ------------------------------------------------------------

# Compare treatment groups pair by pair
TukeyHSD(model)