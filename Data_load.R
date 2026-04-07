#Check for duplicate rows
sum(duplicated(hr))  # Duplicate values 0
hr <- hr[!duplicated(hr), ]
--------------------------------------------------------------------------------------
# Check for empty strings (common in CSV imports)
sapply(hr, function(x) sum(x == "", na.rm = TRUE)) #No empty strings
--------------------------------------------------------------------------------------
# Count NAs per column
colSums(is.na(hr))  #No null values
------------------------------------------------------------------------------------
  
#Validate value ranges
# Satisfaction scores must be 1–4
table(hr$JobSatisfaction)
table(hr$EnvironmentSatisfaction)
table(hr$PerformanceRating)

# Age must be reasonable
range(hr$Age)

# Years at company can't exceed total working years
sum(hr$YearsAtCompany > hr$TotalWorkingYears, na.rm = TRUE) #return 0

----------------------------------------------------------------------------------
#Remove constant columns
hr <- hr %>% select(-EmployeeCount, -StandardHours, -Over18)
names(hr)
---------------------------------------------------------------------------------------

#Convert categorical variables to factors
hr <- hr %>%
  mutate(
    Attrition            = factor(Attrition),
    BusinessTravel       = factor(BusinessTravel),
    Department           = factor(Department),
    EducationField       = factor(EducationField),
    Gender               = factor(Gender),
    JobRole              = factor(JobRole),
    MaritalStatus        = factor(MaritalStatus),
    OverTime             = factor(OverTime)
  )

hr <- hr %>%
  mutate(
    JobSatisfaction         = factor(JobSatisfaction, levels = 1:4, ordered = TRUE),
    EnvironmentSatisfaction = factor(EnvironmentSatisfaction, levels = 1:4, ordered = TRUE),
    WorkLifeBalance         = factor(WorkLifeBalance, levels = 1:4, ordered = TRUE),
    RelationshipSatisfaction = factor(RelationshipSatisfaction, levels = 1:4, ordered = TRUE),
    JobInvolvement          = factor(JobInvolvement, levels = 1:4, ordered = TRUE),
    PerformanceRating       = factor(PerformanceRating, levels = 1:4, ordered = TRUE),
    Education               = factor(Education, levels = 1:5, ordered = TRUE),
    JobLevel                = factor(JobLevel, levels = 1:5, ordered = TRUE),
    StockOptionLevel        = factor(StockOptionLevel, levels = 0:3, ordered = TRUE)
  )
--------------------------------------------------------------------------------------

# Create numeric copies of satisfaction variables for correlation analysis
hr <- hr %>%
  mutate(
    JobSat_num   = as.numeric(as.character(JobSatisfaction)),
    EnvSat_num   = as.numeric(as.character(EnvironmentSatisfaction)),
    WLB_num      = as.numeric(as.character(WorkLifeBalance)),
    RelSat_num   = as.numeric(as.character(RelationshipSatisfaction)),
    JobInv_num   = as.numeric(as.character(JobInvolvement)),
    PerfRat_num  = as.numeric(as.character(PerformanceRating)),
    Attrition_num = ifelse(Attrition == "Yes", 1, 0)
  )

---------------------------------------------------------------------------------------------------------
#check outliers
# Quick boxplot scan of all numeric variables
numeric_cols <- hr %>% select(where(is.numeric))

par(mfrow = c(3, 4))
for(col in names(numeric_cols)) {
  boxplot(numeric_cols[[col]], main = col, col = "steelblue")
}
par(mfrow = c(1, 1))
--------------------------------------------------------------------------------------
  #remove outliers
  
  #Identify Numeric Variables
library(dplyr)
numeric_cols <- hr %>% select(where(is.numeric))
numeric_cols

#Detect Outliers Using IQR
detect_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_value <- Q3 - Q1
  
  lower <- Q1 - 1.5 * IQR_value
  upper <- Q3 + 1.5 * IQR_value
  
  return(x < lower | x > upper)
}

#Count Outliers in Each Variable
sapply(numeric_cols, function(x) sum(detect_outliers(x)))

#Visualize Outliers
par(mfrow = c(3,4))

for(col in names(numeric_cols)){
  boxplot(numeric_cols[[col]],
          main = col,
          col = "steelblue")
}

par(mfrow = c(1,1))

#Remove Outliers
remove_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_value <- Q3 - Q1
  
  lower <- Q1 - 1.5 * IQR_value
  upper <- Q3 + 1.5 * IQR_value
  
  x[x < lower | x > upper] <- NA
  return(x)
}

hr_no_outliers <- hr %>%
  mutate(across(where(is.numeric), remove_outliers))

#Verify Outliers Are Removed
numeric_cols2 <- hr_no_outliers %>% select(where(is.numeric))

par(mfrow = c(3,4))

for(col in names(numeric_cols2)){
  boxplot(numeric_cols2[[col]],
          main = col,
          col = "steelblue")
}

par(mfrow = c(1,1))



