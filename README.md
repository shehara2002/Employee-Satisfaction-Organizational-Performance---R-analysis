# StatMind — Employee Satisfaction & Organizational Performance

> A statistical analysis project examining how employee satisfaction influences organizational performance using the IBM HR Analytics dataset.

## Team
| Student ID | Name |
|---|---|
| IT23815728 | P.H.S.S. Gunawardhana |
| IT23814592 | D.T.N.U De Silva |
| IT23813120 | Chanaka A.H.K |
| IT23843684 | Rathnayaka R.S.T.H |

---

## Problem Statement
Does employee satisfaction influence organizational performance?

**H₀:** Employee satisfaction does NOT influence organizational performance  
**H₁:** Employee satisfaction influences organizational performance

---

## Dataset
- **Source:** [IBM HR Analytics Employee Attrition & Performance — Kaggle](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)
- **Type:** Secondary data
- **Size:** 1,470 rows × 35 columns

---

## Objectives
- Identify the factors that affect employee satisfaction
- Measure the level of employee satisfaction among employees
- Analyze the relationship between employee satisfaction and organizational performance

---

## Methodology

### 1. Data Preprocessing
- Checked and removed duplicate rows
- Verified no empty strings or NA values
- Validated value ranges (e.g., satisfaction scores 1–4, age, years at company)
- Removed constant columns (`EmployeeCount`, `StandardHours`, `Over18`)
- Converted categorical variables to factors
- Created numeric copies of satisfaction variables for correlation analysis
- Detected and handled outliers using IQR method

### 2. Descriptive Analysis
- Summary statistics (mean, median, mode, min/max, standard deviation)
- Bar chart: Distribution of Job Satisfaction
- Bar + line chart: Mean Performance Rating vs Job Satisfaction
- Multi-panel bar charts: Distribution across all satisfaction factors
- Scatter plot: Job Satisfaction vs Performance Rating

### 3. Inferential Analysis
Chi-Square tests were conducted for each satisfaction factor against Performance Rating:

| Variable | p-value | Decision |
|---|---|---|
| Job Satisfaction | 2.2e-16 | ✅ Reject H₀ — Significant |
| Environment Satisfaction | 0.674 | ❌ Not significant |
| Job Involvement | 0.2187 | ❌ Not significant |
| Relationship Satisfaction | 0.987 | ❌ Not significant |
| Work-Life Balance | 0.617 | ❌ Not significant |

ANOVA (all satisfaction variables combined) confirmed at least one variable significantly affects performance.

### 4. Predictive Model
- **Method:** Multiple Linear Regression
- **Dependent Variable:** Performance Rating
- **Independent Variables:** JobSatisfaction, EnvironmentSatisfaction, RelationshipSatisfaction, WorkLifeBalance, JobInvolvement

**Model Performance:**
| Metric | Value |
|---|---|
| RMSE | 0.3519 |
| MAE | 0.157 |
| R² | 0.9022 |
| Rounded Accuracy | 87.89% |

---

## Key Findings
- Job Satisfaction is the **only** satisfaction factor with a statistically significant effect on performance (p < 0.05).
- Environment, Relationship, Work-Life Balance, and Job Involvement showed no statistically significant effects.
- The regression model explains **90.22%** of variation in employee performance.
- Overall conclusion: **H₀ is rejected** — employee satisfaction does influence organizational performance.

---

## Tools & Technologies
- **Language:** R
- **Libraries:** `dplyr`, `ggplot2`, `stats`
- **Statistical Methods:** Chi-Square Test, ANOVA, Multiple Linear Regression

