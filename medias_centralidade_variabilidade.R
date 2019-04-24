#Author: Rodrigo Tamura
#Description: Centralized averages and Variabilities

#Creating one Vector of salaries, and setting it in order
salaries = sort(c(4000, 1800, 1200, 2500, 3000, 1400, 3000, 4000, 8000))

salary_length = length(salaries)#Obtaining salary length

#Obtaining mean
#mean_salary = mean(salaries)
mean_salary = sum(salaries) / salary_length
mean_salary

#Obtaining median
#median_salary = median(salaries)

if(salary_length %% 2 == 0){#even
  
  median_salary_p1 = salary_length / 2 #Getting position of P1
  median_salary_p2 = median_salary_p1 + 1 #Getting position of P2
  median_salary = (salaries[median_salary_p1] + salaries[median_salary_p2]) / 2
  
}else{#odd
  
  median_salary_pos = (salary_length + 1) / 2
  median_salary = salaries[median_salary_pos]  
  
}
median_salary

#Obtaining quantiles
#q_salary = quantile(salaries)
q_salary = c(0,0,0)
for (q in 1:3){
  q_position = (q * (salary_length + 1)) / 4 #applying formula of quantil and getting current position
  
  if(q_salary[q]%%1 != 0){#if is an float, 
    pos1_q = ceiling(q_salary[q]) - 1 #P1 position
    pos2_q = pos1_q #P2 position
    
    q_salary[q] = (salaries[pos1_q] + salaries[pos2_q]) / 2
  }else{
    q_salary[q] = salaries[q_position]
  }
}

q_salary

#Obtaining standard deviation
#sd_salary = sd(salaries)
sigma_sd = 0

for (sal in salaries) {
  
  sigma_sd = sigma_sd + ((sal - mean_salary)^2)
  
}

sd_salary = sqrt(sigma_sd / salary_length)
#The expression sigma_sd / salary_length represents the variation
sd_salary

#Summary of salaries
summary(salaries)
