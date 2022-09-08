# Deliverable 1
#Libraries
library(tidyverse)
library(dplyr)

#Read CSV
mecha_table <- read.csv(file="MechaCar_mpg.csv", check.names=F, stringsAsFactors = F)

#Linear Regression
lin_reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_table)

#Summary of linear regression
summary(lin_reg)


# Deliverable 2
#Read CSV
suspension_coil <- read.csv(file="Suspension_Coil.csv", check.names=F, stringsAsFactors = F)

#Create a summary data frame
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Using groupby and summarize to make lot_summary dataframe

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(
  Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)
)


#Deliverable 3

# t-test on PSI for all lots
t.test(lot_summary$Mean, mu=1500)


#Creating subsets
lot1_summary <- subset(suspension_coil, Manufacturing_Lot == "Lot1")
lot2_summary <- subset(suspension_coil, Manufacturing_Lot == "Lot2")
lot3_summary <- subset(suspension_coil, Manufacturing_Lot == "Lot3")

# t-test for Lot 1
t.test(lot1_summary$PSI, mu=1500)

# t-test for lot 2
t.test(lot2_summary$PSI, mu=1500)

# t-test for lot 3
t.test(lot3_summary$PSI, mu=1500)
