ppois(6,4.5)
ppois(6,4.5,lower.tail = FALSE)
pexp(3,rate=1/2)
pnorm(37.9,36.8,0.4,lower.tail = FALSE)
pnorm(36.9,36.8,0.4) - pnorm(36.4,36.8,0.4)
ppois(10,44)
ppois(10,22)
pnorm(470,360,120)
pnorm(700,500,100)-pnorm(500,500,100)
dpois(9,22)
pnorm(255.7,257.8,45.3)
v<-257.8 /37
v
?bynormal
??bynormal
??bynormal
?bynormal
?bynormial
??bynormial
?binormial
?binormial
?binomial
se<-45.3/sqrt 37
se<-45.3 / sqrt(37)
se
pnorm(255.7,257.8,se)
ve<- 45.3 / sqrt(37)
ve
pnorm(260.4,257.8,ve)- pnorm(252.67,257.8,ve)
v<-6/sqrt(36)
v
pnorm(63,60,v)-pnorm(57,60,v)
pnorm(470,360,120)
pnorm(20,18,6)-pnorm(12,18,6)
data <- read.csv("C:/Users/nimeshi/OneDrive/Desktop/3rd year 1 sem/TPSM/Lab4 Sample Data.csv")
head(data)
head(data)
data <- read.csv("C:/Users/nimeshi/OneDrive/Desktop/3rd year 1 sem/TPSM/Lab4 Sample Data.csv")
head(data)
clear
data <- read.csv("C:/Users/nimeshi/OneDrive/Desktop/3rd year 1 sem/TPSM/Lab4 Sample Data.csv")
head(data)
boxplot(data$X1_Attendance, main="Boxplot of Attendance", col="lightblue")
boxplot(data$X2_Salary, main="Boxplot of Salary", col="lightgreen")
boxplot(data$X3_Years, main="Boxplot of Years", col="lightpink")
hist(data$X1_Attendance, main="Histogram of Attendance", col="lightblue")
hist(data$X2_Salary, main="Histogram of Salary", col="lightgreen")
hist(data$X3_Years, main="Histogram of Years", col="lightpink")
stem(data$X1_Attendance)
stem(data$X2_Salary)
stem(data$X3_Years)
# Mean
mean(data$X1_Attendance)
mean(data$X2_Salary)
mean(data$X3_Years)
median(data$X1_Attendance)
median(data$X2_Salary)
median(data$X3_Years)
sd(data$X1_Attendance)
sd(data$X2_Salary)
sd(data$X3_Years)
quantile(data$X1_Attendance, probs=c(0.25,0.75))
quantile(data$X2_Salary, probs=c(0.25,0.75))
quantile(data$X3_Years, probs=c(0.25,0.75))
IQR(data$X1_Attendance)
IQR(data$X2_Salary)
IQR(data$X3_Years)
get_mode <- function(x) {
uniq <- unique(x)
uniq[which.max(tabulate(match(x, uniq)))]
}
get_mode(data$X3_Years)
find_outliers <- function(x) {
Q1 <- quantile(x, 0.25)
Q3 <- quantile(x, 0.75)
IQR_value <- IQR(x)
lower <- Q1 - 1.5 * IQR_value
upper <- Q3 + 1.5 * IQR_value
x[x < lower | x > upper]
}
find_outliers(data$X1_Attendance)
find_outliers(data$X2_Salary)
find_outliers(data$X3_Years)
data <- read.csv("C:/Users/nimeshi/OneDrive/Desktop/3rd year 1 sem/TPSM/Lab4 Sample Data.csv")
boxplot(data$X1_Attendance, main="Boxplot of Attendance", col="lightblue")
boxplot(data$X2_Salary, main="Boxplot of Salary", col="lightgreen")
boxplot(data$X3_Years, main="Boxplot of Years", col="lightpink")
hist(data$X1_Attendance, main="Histogram of Attendance", col="lightblue")
hist(data$X2_Salary, main="Histogram of Salary", col="lightgreen")
hist(data$X3_Years, main="Histogram of Years", col="lightpink")
stem(data$X1_Attendance)
stem(data$X2_Salary)
stem(data$X3_Years)
mean(data$X1_Attendance)
mean(data$X2_Salary)
mean(data$X3_Years)
median(data$X1_Attendance)
median(data$X2_Salary)
median(data$X3_Years)
sd(data$X1_Attendance)
sd(data$X2_Salary)
sd(data$X3_Years)
quantile(data$X1_Attendance, probs=c(0.25,0.75))
quantile(data$X2_Salary, probs=c(0.25,0.75))
quantile(data$X3_Years, probs=c(0.25,0.75))
IQR(data$X1_Attendance)
IQR(data$X2_Salary)
IQR(data$X3_Years)
et_mode(data$X3_Years)
get_mode <- function(x) {
uniq <- unique(x)
uniq[which.max(tabulate(match(x, uniq)))]
}
get_mode(data$X3_Years)
find_outliers <- function(x) {
Q1 <- quantile(x, 0.25)
Q3 <- quantile(x, 0.75)
IQR_value <- IQR(x)
lower <- Q1 - 1.5 * IQR_value
upper <- Q3 + 1.5 * IQR_value
x[x < lower | x > upper]
}
find_outliers(data$X1_Attendance)
find_outliers(data$X2_Salary)
find_outliers(data$X3_Years)
# 1
sample_mean <- 82.5
population_mean <- 80
sd <- 8.4
n <- 25
# create sample data approximation
scores <- rnorm(n, mean = sample_mean, sd = sd)
# One sample t-test
t.test(scores, mu = population_mean)
mean1 <- 170
mean2 <- 175
sd1 <- 12
sd2 <- 10
n1 <- 50
n2 <- 60
z_value <- (mean1 - mean2) / sqrt((sd1^2 / n1) + (sd2^2 / n2))
z_value
group_1 <- c(72, 74, 78, 69, 75)
group_2 <- c(80, 82, 85, 79, 81)
group_3 <- c(85, 88, 90, 84, 87)
scores <- c(group_1, group_2, group_3)
method <- factor(rep(c("Method1","Method2","Method3"), each=5))
anova_model <- aov(scores ~ method)
summary(anova_model)
hours_studied <- c(1,2,3,4,5)
exam_scores <- c(55,60,65,70,75)
cor.test(hours_studied, exam_scores)
data <- rnorm(50, mean = 50, sd = 10)
shapiro.test(data)
library(tidyverse)
library(caret)
library(randomForest)
library(corrplot)
library(skimr)
library(patchwork)
hr <- read_csv("WA_Fn-UseC_-HR-Employee-Attrition1.csv")
glimpse(hr)
setwd("C:/Users/nimeshi/OneDrive/Desktop/3rd year 1 sem/TPSM Project")
hr <- read_csv("WA_Fn-UseC_-HR-Employee-Attrition1.csv")
glimpse(hr)
dim(hr)              # 1470 rows, 35 columns
names(hr)            # list all column names
str(hr)              # data types
summary(hr)          # quick stats for every column
skim(hr)
colSums(is.na(hr))
satisfaction_cols <- c(
"JobSatisfaction",          # satisfaction with job role
"EnvironmentSatisfaction",   # satisfaction with workplace
"RelationshipSatisfaction",  # satisfaction with colleagues
"WorkLifeBalance"            # work-life balance rating
)
perf_cols <- c(
"PerformanceRating",         # 1–4, mostly 3–4
"JobInvolvement",            # 1–4
"Attrition"                  # Yes/No outcome
)
hr %>% select(all_of(satisfaction_cols)) %>% summary()
sum(duplicated(hr))  # Duplicate values 0
hr <- hr[!duplicated(hr),
sapply(hr, function(x) sum(x == "", na.rm = TRUE))
colSums(is.na(hr))
table(hr$JobSatisfaction)
table(hr$EnvironmentSatisfaction)
table(hr$PerformanceRating)
range(hr$Age)
sum(hr$YearsAtCompany > hr$TotalWorkingYears, na.rm = TRUE)
hr <- hr %>% select(-EmployeeCount, -StandardHours, -Over18)
names(hr)
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
numeric_cols <- hr %>% select(where(is.numeric))
par(mfrow = c(3, 4))
for(col in names(numeric_cols)) {
boxplot(numeric_cols[[col]], main = col, col = "steelblue")
}
par(mfrow = c(1, 1))
library(dplyr)
numeric_cols <- hr %>% select(where(is.numeric))
numeric_cols
detect_outliers <- function(x) {
Q1 <- quantile(x, 0.25)
Q3 <- quantile(x, 0.75)
IQR_value <- Q3 - Q1
lower <- Q1 - 1.5 * IQR_value
upper <- Q3 + 1.5 * IQR_value
return(x < lower | x > upper)
}
sapply(numeric_cols, function(x) sum(detect_outliers(x)))
par(mfrow = c(3,4))
for(col in names(numeric_cols)){
boxplot(numeric_cols[[col]],
main = col,
col = "steelblue")
}
par(mfrow = c(1,1))
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
numeric_cols2 <- hr_no_outliers %>% select(where(is.numeric))
par(mfrow = c(3,4))
for(col in names(numeric_cols2)){
boxplot(numeric_cols2[[col]],
main = col,
col = "steelblue")
}
par(mfrow = c(1,1))
numeric_cols <- hr %>% select(where(is.numeric))
par(mfrow = c(3, 4))
for(col in names(numeric_cols)) {
boxplot(numeric_cols[[col]], main = col, col = "steelblue")
}
par(mfrow = c(1, 1))
