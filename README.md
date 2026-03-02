# 📊 Statistical Analysis & Hypothesis Testing

## 📌 Business Context
Data driven decisions require more than charts and dashboards — they 
require statistical validation. This project applies rigorous statistical 
analysis and hypothesis testing on real e-commerce customer behavior data, 
uncovering significant patterns in spending, satisfaction, and membership 
using both Python and R.

---

## 🎯 Project Objectives
- Perform descriptive statistical analysis on customer behavior
- Test hypotheses around gender, membership and discount impact
- Identify statistically significant drivers of customer spend
- Build regression models to quantify spend relationships
- Validate findings using both Python and R

---

## 📊 Dataset Overview
- **Source:** E-commerce Customer Behavior Dataset (Kaggle)
- **Size:** 350 customers
- **Key Fields:** Gender, Age, City, Membership Type, Total Spend,
Items Purchased, Average Rating, Discount Applied, Satisfaction Level

---

## 📈 Statistical Summary

| Metric | Value |
|--------|-------|
| Total Customers | 350 |
| Average Total Spend | $845.38 |
| Gold Members Avg Spend | $1,311.14 |
| Silver Members Avg Spend | $748.43 |
| Bronze Members Avg Spend | $473.39 |
| Satisfied Customers | 125 (35.7%) |
| Neutral Customers | 107 (30.6%) |
| Unsatisfied Customers | 116 (33.1%) |
| Discount Applied | 50% of customers |

---

## 🔬 Hypothesis Tests & Results

### 1️⃣ T-Test — Spend by Gender
- **Hypothesis:** Male and female customers spend differently
- **p-value:** 2.87e-14
- **Result:** ✅ Statistically significant
- **Finding:** Males spend **$986.93** vs Females **$703.83** on average
- **Business Impact:** Gender based marketing strategies are justified

### 2️⃣ ANOVA — Spend by Membership Type
- **Hypothesis:** Spend differs significantly across membership tiers
- **p-value:** < 2e-16
- **Result:** ✅ Highly statistically significant
- **Finding:** Gold ($1,311) >> Silver ($748) >> Bronze ($473)
- **Business Impact:** Membership tier is the strongest predictor of spend

### 3️⃣ Chi-Square — Discount vs Satisfaction
- **Hypothesis:** Discount application affects customer satisfaction
- **p-value:** 1.37e-48
- **Result:** ✅ Statistically significant
- **Finding:** Strong relationship between discounts and satisfaction levels
- **Business Impact:** Discount strategy directly influences customer experience

---

## 🔍 Key Insights

### 💰 Spending Patterns
- **Gold members spend 2.77x more** than Bronze members
- **Males outspend females by 40%** — statistically validated
- Average spend of **$845** indicates mid to high value customer base

### 🎯 Satisfaction Drivers
- Discount application has a **highly significant impact** on satisfaction
- Only **35.7%** of customers are fully satisfied — improvement opportunity
- **50% discount application rate** shows active promotional strategy

### 📈 Regression Findings
- Items purchased is a **strong predictor** of total spend
- Age shows **weak correlation** with spend — age neutral marketing works
- Membership type remains the **strongest spend predictor**

---

## 💡 Business Recommendations
- **Target male customers** with premium products — significantly higher spend
- **Invest in Gold membership growth** — 2.77x spend multiplier vs Bronze
- **Review discount strategy** — strong satisfaction impact needs optimization
- **Focus on satisfaction improvement** — only 35.7% fully satisfied
- **Upsell Silver to Gold** — largest spend gap and growth opportunity

---

## 🛠️ Tools & Technologies

| Tool | Usage |
|------|-------|
| Python | Descriptive statistics, correlation, regression, EDA |
| R | Hypothesis testing (T-Test, ANOVA, Chi-Square) |
| ggplot2 | Statistical visualizations in R |
| scikit-learn | Linear regression modeling |
| pandas & seaborn | Data manipulation and heatmaps |

---

## 📂 Repository Structure
```
statistical-analysis-hypothesis-testing/
│
├── data/
│   ├── raw/                        # E-commerce customer dataset
│   └── processed/                  # Cleaned dataset
├── python/
│   ├── descriptive_statistics.ipynb    # EDA and descriptive stats
│   └── correlation_regression.ipynb    # Correlation and regression
├── r-analysis/
│   └── hypothesis_testing.R        # T-Test, ANOVA, Chi-Square
├── reports/
│   └── *.png                       # Exported visualizations
└── README.md
```

---

## 🚀 Outcome
This project demonstrates **statistical maturity and analytical depth**, 
combining Python and R to deliver hypothesis driven insights suitable for 
**Data Analyst, Analytics Consultant and Research Analyst roles**.

---
*Dataset sourced from Kaggle E-commerce Customer Behavior Dataset.*
```
