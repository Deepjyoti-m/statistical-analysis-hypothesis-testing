library(ggplot2)

df <- read.csv("C:/Users/deepj/Documents/statistical-analysis-hypothesis-testing/data/processed/ecommerce_cleaned.csv")

cat("Dataset loaded:", nrow(df), "rows\n")
head(df)


# t-test spend by gender
male_spend <- df$Total.Spend[df$Gender == "Male"]
female_spend <- df$Total.Spend[df$Gender == "Female"]

t_result <- t.test(male_spend, female_spend)
cat("\nT-Test: Spend by Gender\n")
cat("p-value:", t_result$p.value, "\n")
cat("Male avg spend:", mean(male_spend), "\n")
cat("Female avg spend:", mean(female_spend), "\n")

if(t_result$p.value < 0.05) {
  cat("Result: Significant difference in spend between genders\n")
} else {
  cat("Result: No significant difference in spend between genders\n")
}


# anova spend by membership type
anova_result <- aov(Total.Spend ~ Membership.Type, data=df)
cat("\nANOVA: Spend by Membership Type\n")
print(summary(anova_result))


# chi-square discount vs satisfaction
chi_table <- table(df$Discount.Applied, df$Satisfaction.Level)
chi_result <- chisq.test(chi_table)
cat("\nChi-Square: Discount vs Satisfaction\n")
cat("p-value:", chi_result$p.value, "\n")

if(chi_result$p.value < 0.05) {
  cat("Result: Discount applied significantly affects satisfaction\n")
} else {
  cat("Result: No significant relationship between discount and satisfaction\n")
}


# boxplot spend by membership
png("C:/Users/deepj/Documents/statistical-analysis-hypothesis-testing/reports/boxplot_membership_spend.png", width=800, height=500)
ggplot(df, aes(x=Membership.Type, y=Total.Spend, fill=Membership.Type)) +
  geom_boxplot() +
  scale_fill_manual(values=c("gold", "peru", "grey70")) +
  labs(title="Spend Distribution by Membership Type", x="Membership Type", y="Total Spend ($)") +
  theme_minimal()
dev.off()


# boxplot spend by gender
png("C:/Users/deepj/Documents/statistical-analysis-hypothesis-testing/reports/boxplot_gender_spend.png", width=800, height=500)
ggplot(df, aes(x=Gender, y=Total.Spend, fill=Gender)) +
  geom_boxplot() +
  scale_fill_manual(values=c("steelblue", "coral")) +
  labs(title="Spend Distribution by Gender", x="Gender", y="Total Spend ($)") +
  theme_minimal()
dev.off()


# satisfaction by membership
png("C:/Users/deepj/Documents/statistical-analysis-hypothesis-testing/reports/satisfaction_by_membership.png", width=800, height=500)
ggplot(df, aes(x=Membership.Type, fill=Satisfaction.Level)) +
  geom_bar(position="dodge") +
  scale_fill_manual(values=c("seagreen", "steelblue", "coral")) +
  labs(title="Satisfaction Level by Membership Type", x="Membership Type", y="Count") +
  theme_minimal()
dev.off()

cat("\nAll outputs saved!\n")

