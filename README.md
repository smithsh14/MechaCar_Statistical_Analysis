# MechaCar_Statistical_Analysis
Statistics and R

# Project Overview
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this project, we are helping Jeremy and the data analytics team with the following tasks…

•	Deliverable 1: Linear Regression to Predict MPG
o	Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes

•	Deliverable 2: Summary Statistics on Suspension Coils
o	Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

•	Deliverable 3: T-Test on Suspension Coils
o	Run t-tests to determine if the manufacturing lots are statistically different from the mean population

•	Deliverable 4: Comparison Study Proposal
o	Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Deliverable 1 Results

Task: Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.

The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle.

![Pic_1]( https://github.com/smithsh14/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable1-Step5.png) 


1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
vehicle_length with p-value=2.60e-12 which is less than 0.05
ground_clearance with p-value=5.21e-08 which is less than 0.05

2. Is the slope of the linear model considered to be zero? Why or why not?
No. If the slope were zero, then there would be no correlation between mpg and the independent variables. However, we have Multiple R-squared = 0.7149, which indicates a strong correlation.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The R squared value is 71.49% which implies that roughly 72% of the time the predictions will be correct using the linear model.

![Pic_2]( https://github.com/smithsh14/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable1-Step6.png) 

## Deliverable 2 Results

Task: Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

1.The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The data for all lots shows that the suspension coil variance is 62.29356, which is below the limit of 100 pounds per square inch. (see image below)

![Pic_3]( https://github.com/smithsh14/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable2-TotalSummary.png) 

However, when broken down my lot, we can see Lot 3 has a suspension coil variance of 170.2861224, which is above the limit of 100 pounds per square inch. Lot 1 (0.9897433) and Lot 2 (7.4693878) are within the variance limit. (see image below)

![Pic_4]( https://github.com/smithsh14/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable2-LotSummary.png) 

## Deliverable 3 Results

Task: Run t-tests to determine if the manufacturing lots are statistically different from the mean population

As seen in the images below, only Lot 3 is presenting with statistically significant differences in comparison to the other lots.

![Pic_5]( https://github.com/smithsh14/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable3-Step1.png) 

![Pic_6]( https://github.com/smithsh14/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable3-Step2.png) 

## Deliverable 4 Results

### Study Design: MechaCar vs Competition
Task: Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

### Potential Research Project

When considering the metrics on the MechaCar brand in comparison to other brands, this research study attempts to test whether there is a statistically significant difference in the summary statistics among the vehicle brands and how those statistical outcomes compare to overall safety of the vehicle brand. 

In your description, address the following questions:

•	What metric or metrics are you going to test?

o	Overall Safety Rating: Safety Ratings are available at https://www.nhtsa.gov/ratings. The ‘overall’ category is made up of various sub-categories like: Frontal Crash, Side Crash, Rollover, etc.; but we just need a categorical ‘overall safety rating’ (e.g. A, B, C, D, E, and F)
o	Vehicle Weight: We need the vehicle weight for all current cars. This can be converted into categories (less than 1000 pounds, 1000 - 4000 pounds, greater than 4000)
o	Vehicle Length: We need the vehicle length for all current cars. This can be converted into categories by length (less than 10 feet, 10-14 feet, greater than 14 feet)
o	Ground Clearence: We need the vehicle ground clearance for all current cars. This can be converted into categories by length 

•	What is the null hypothesis or alternative hypothesis?
(Vehicles that are heavier and longer with a lower ground clearance experience a higher number of accidents than vehicles that are lighter, shorter and has a higher ground clearance)

Null Hypothesis – There is no statistical difference between the summary statistics on the metrics (vehicle weight, vehicle length, ground clearance) between MechaCar and their competitors in terms of overall safety of the vehicles.

    - Alternative Hypothesis
      - There is no statistical difference between lighter vehicles and heavier vehicles in terms of overall safety.
      - There is no statistical difference between longer vehicles and shorter vehicles in terms of overall safety.
      - There is no statistical different between vehicles with a lower ground clearance and vehicles with a higher ground clearance in terms of safety. 

•	What statistical test would you use to test the hypothesis? And why?

ANOVA: Since we have more than one performance metric, the ANOVA test will serve better in this study because ANOVA tells you if there are any statistical differences between the means of three or more independent groups.

    - Essentially, we are using ANOVA to tell us if there is a statistically significant difference in the vehicle’s weight, length or ground clearance between MechaCar and its competitors.

Chi-Squared Test: This test can be used to determine if there is a difference in categorical frequencies between groups since we are also looking at the overall safety metrics as well (frequency of accidents).

    - If there is a statistical difference among MechaCar’s vehicle and its competitors in those three metrics, this test will essentially tell us if there is a statistically significant difference in the frequency of accidents as we compare the weight, length and ground clearance to the number of accidents per category.  

•	What data is needed to run the statistical test?

o	Vehicle Weight data for all current vehicle models (including the MechaCar brand)

o	Vehicle Length data for all current vehicle models (including the MechaCar brand)

o	Ground Clearence data for all current vehicle models (including the MechaCar brand)

o	Crash Test Results converted into “Overall Safety Rating for all current vehicle models (including the MechaCar)

o	Verify Pre-conditions for Chi-Squared Test

