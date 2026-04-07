#chi sqaure

#Job Satisfaction vs Performance

#H₀: Job Satisfaction has no effect on performance rating
#H₁: Job Satisfaction affects performance rating

table_js <- table(hr$JobSatisfaction, hr$PerformanceRating)
chisq.test(table_js)
#p-value = 2.2e-16
#p-value < 0.05
#Reject H0 There is  statistically significant difference in performance ratings across different job satisfaction levels.

----------------------------------------------------------------------------------

#Environment Satisfaction vs Performance

#H₀: Environment Satisfaction has no effect on performance rating
#H₁: Environment Satisfaction affects performance rating

table_env <- table(hr$EnvironmentSatisfaction, hr$PerformanceRating)
chisq.test(table_env)

#p-value =  0.674
#p-value > 0.05
#Do not Reject H0 There is no statistically significant difference in performance ratings across different job satisfaction levels.

--------------------------------------------------------------------------------------

#Job involvement vs Performance
  
#H₀: Job involvement  has no effect on performance rating
#H₁: Job involvement  affects performance rating
  
table_jobinv <- table(hr$JobInvolvement, hr$PerformanceRating)
chisq.test(table_jobinv)

#p-value =  0.2187
#p-value > 0.05
#Do not Reject H0 There is no statistically significant difference in performance ratings across different Job involvement levels.

------------------------------------------------------------------------------------
#Relationship Satisfaction vs Performance
  
#H₀: Relationship Satisfaction has no effect on performance rating
#H₁: Relationship Satisfaction  affects performance rating
  
table_rel <- table(hr$RelationshipSatisfaction, hr$PerformanceRating)
chisq.test(table_rel)

#p-value =   0.987
#p-value > 0.05
#Do not Reject H0 There is no statistically significant difference in performance ratings across different Relationship Satisfaction levels.

----------------------------------------------------------------------------------
#Work life balance  vs Performance
  
#H₀: Work life balance has no effect on performance rating
#H₁: Work life balance  affects performance rating
  
table_wlb <- table(hr$WorkLifeBalance, hr$PerformanceRating)
chisq.test(table_wlb)

#p-value =  0.617
#p-value > 0.05
#Do not Reject H0 There is no statistically significant difference in performance ratings across different Relationship Satisfaction levels.

-----------------------------------------------------------------------------
  
#Overall Satisfaction vs Performance

#H₀: None of the satisfaction variables affect performance
#H₁: At least one satisfaction variable affects performance

aov_full <- aov(PerfRat_num ~ JobSat_num + EnvSat_num  +
                  JobInv_num + RelSat_num + WLB_num ,
                data = hr)

summary(aov_full)
#p-value = 2e-16 ,0.582,0.147,0.920,0.515
#p-value > 0.05

#At least one satisfaction variable significantly affects performance, while the others do not show a significant effect.

-------------------------------------------------------------------------------------------------------------------------

#Final Decision for Main Hypothesis
#Since at least one variable (Job Satisfaction) affects performance:

#Main Hypothesis
#H₀: Employee satisfaction does NOT influence organizational performance
#H₁: Employee satisfaction influences organizational performance
  
#Reject H₀
#Accept H₁
  
#Final Conclusion
#Based on the Chi Sqaure results, Job Satisfaction has a statistically significant 
#effect on employee performance (p < 0.05), while other satisfaction variables do not show significant effects.
# Since at least one satisfaction factor influences performance,the null hypothesis is rejected. 
#Therefore, employee satisfaction does influence organizational performance.
  
  
  
  
  

