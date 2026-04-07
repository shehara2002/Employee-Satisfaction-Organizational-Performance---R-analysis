#installing packages

install.packages(c(
  "tidyverse",    # data wrangling + ggplot2
  "readr",        # fast CSV reading
  "dplyr",        # data manipulation
  "ggplot2",      # visualisation
  "corrplot",     # correlation matrix plots
  "caret",        # ML training framework
  "randomForest", # feature importance
  "glm2",         # logistic regression
  "scales",       # axis formatting
  "patchwork",    # combine ggplots
  "knitr",        # reports
  "skimr"         # fast summary stats
))

options(timeout = 300)

install.packages(c(
  "bslib",
  "stringi",
  "sass",
  "tinytex",
  "rmarkdown",
  "htmltools"
))

install.packages(c(
  "tidyverse",
  "skimr",
  "corrplot",
  "caret",
  "randomForest",
  "patchwork",
  "scales",
  "vcd",
  "FSA",
  "effsize",
  "DescTools"
))

library(tidyverse)
library(caret)
library(randomForest)
library(corrplot)
library(skimr)

cat("All packages loaded successfully!")

setwd("C:/Users/nimeshi/OneDrive/Desktop/3rd year 1 sem/TPSM Project")

library(tidyverse)
library(skimr)
library(corrplot)
library(caret)
library(randomForest)
library(patchwork)

#load csv file and Explore

hr <- read_csv("WA_Fn-UseC_-HR-Employee-Attrition1.csv")
glimpse(hr)   

dim(hr)              # 1470 rows, 35 columns
names(hr)            # list all column names
str(hr)              # data types
summary(hr)          # quick stats for every column
skim(hr)             # richest summary (skimr package)

# Check for missing values
colSums(is.na(hr))   # should all be 0 for this dataset

# Attrition rate overview
table(hr$Attrition)
prop.table(table(hr$Attrition)) * 100


# The 4 satisfaction variables (scale 1=Low to 4=Very High)
satisfaction_cols <- c(
  "JobSatisfaction",          # satisfaction with job role
  "EnvironmentSatisfaction",   # satisfaction with workplace
  "RelationshipSatisfaction",  # satisfaction with colleagues
  "WorkLifeBalance"            # work-life balance rating
)

# Performance & engagement variables
perf_cols <- c(
  "PerformanceRating",         # 1–4, mostly 3–4
  "JobInvolvement",            # 1–4
  "Attrition"                  # Yes/No outcome
)

hr %>% select(all_of(satisfaction_cols)) %>% summary()