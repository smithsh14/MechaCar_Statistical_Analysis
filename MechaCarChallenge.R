Deliverable 1: Linear Regression to Predict MPG

#Step 3 - Load necessary packages
library(dplyr)
library(tidyverse)

#Step 4 -   Import and Read the CSV File as DataFrame
Car_Data <- read.csv("MechaCar_mpg.csv")
head(Car_Data)

#Step 5 - Perform linear regression using the lm()function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =Car_Data)

#Step 6 - Use summary statistics to get values
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =Car_Data)) 

Deliverable 2: Create Visualizations for the Trip Analysis

#Step 2 - Import and Read in the Suspension Coil csv
#Import and Read the CSV File as DataFrame
Coil_Data <- read.csv("Suspension_Coil.csv")
head(Coil_Data)

#Step 3 - Create a total summary dataframe using the summarize()function
Mean = mean(Coil_Data$PSI)
Median=median(Coil_Data$PSI)
Variance=var(Coil_Data$PSI)
SD = sd(Coil_Data$PSI)

total_Summary <- data.frame(Mean,Median,Variance,SD)

#Step 4 - Create a lot summary dataframe using both the groupby() and the Summarize() functions
lot_summary <- Coil_Data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median = median(PSI),Variance = var(PSI),SD = sd(PSI), .groups = 'keep') 
View(lot_summary)

Deliverable 3 - T-tests on Suspension coils 

#Step 1 - Write a RScript using the t.test() function
t.test((Coil_Data$PSI),mu = 1500)

#Step 2 - Write a RScript for each lot using t.test() and subset() functions
t.test(subset(Coil_Data,Manufacturing_Lot =="Lot1")$PSI,mu = 1500)
t.test(subset(Coil_Data,Manufacturing_Lot =="Lot2")$PSI,mu = 1500)
t.test(subset(Coil_Data,Manufacturing_Lot =="Lot3")$PSI,mu = 1500)
