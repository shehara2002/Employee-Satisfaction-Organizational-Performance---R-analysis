#Descriptive Statistics
# Summary statistics
summary(hr)

# Focus on satisfaction variables(Histogram)
hr %>%
  select(JobSatisfaction, EnvironmentSatisfaction,
         RelationshipSatisfaction, WorkLifeBalance) %>%
  summary()

#Distribution of Job satisfaction level 
ggplot(hr, aes(x = JobSatisfaction)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Distribution of Job Satisfaction",
       x = "Job Satisfaction Level",
       y = "Number of Employees")


#Satisfaction vs Performance
ggplot(hr, aes(x = JobSatisfaction,
               y = as.numeric(PerformanceRating))) +
  
  # Bar chart layer
  stat_summary(fun = mean,
               geom = "bar",
               aes(fill = JobSatisfaction),
               width = 0.6) +
  
  # Error bars layer
  stat_summary(fun.data = mean_se,
               geom = "errorbar",
               width = 0.2) +
  
  # Line chart layer
  stat_summary(fun = mean,
               geom = "line",
               aes(group = 1),
               color = "red",
               linewidth = 1,
               linetype = "solid") +
  
  # Points on line
  stat_summary(fun = mean,
               geom = "point",
               aes(group = 1),
               color = "red",
               size = 3) +
  
  labs(title = "Mean Performance by Job Satisfaction",
       x = "Job Satisfaction",
       y = "Mean Performance Rating") +
  theme_minimal()



#Visualization of Multiple Satisfaction Factors
hr %>%
  select(JobSatisfaction, EnvironmentSatisfaction,
         RelationshipSatisfaction, WorkLifeBalance) %>%
  pivot_longer(cols = everything()) %>%
  ggplot(aes(value)) +
  geom_bar(fill = "steelblue") +
  facet_wrap(~name)



#Standard Deviation
dplyr::summarise(hr, across(c(JobSatisfaction, EnvironmentSatisfaction,
                              RelationshipSatisfaction, WorkLifeBalance),
                            mean, na.rm = TRUE))
#Frequency Tables
table(hr$JobSatisfaction)
prop.table(table(hr$JobSatisfaction))

hr %>%
  count(JobSatisfaction) %>%
  mutate(Percentage = round(n / sum(n) * 100, 2))

#Scatter Plot (relationship check)
ggplot(hr, aes(x = JobSatisfaction, y = as.numeric(PerformanceRating))) +
  geom_jitter(width = 0.2, alpha = 0.5) +
  labs(title = "Scatter Plot: Satisfaction vs Performance")

















