#Author: Rodrigo Tamura
#Description: Centralized averages and Variabilities

#Creating one Vector of salaries
salaries = c(4000, 1800, 1200, 2500, 3000, 1400, 3000, 4000, 8000)

#Obtaining mean
mean_salary = mean(salaries)
mean_salary

#Obtaining median
median_salary = median(salaries)
median_salary

#Obtaining quantiles
q_salary = quantile(salaries)
q_salary

#Obtaining standard deviation
sd_salary = sd(salaries)
sd_salary

#Summary of salaries
summary(salaries)
