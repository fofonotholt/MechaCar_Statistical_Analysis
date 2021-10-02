library(dplyr)

# Deliverable 1 - Linear Regression to Predict MPG
## Importing the Data
mecha_car_mpg <- read.csv(file='Resources/MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

## Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg)
## Using the summary() function, determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg))
### Adjusted R-squared:  0.6825 , p-value: 5.35e-11


# Deliverable 2 - Create Visualizations for the Trip Analysis
## import and read in the Suspension_Coil.csv file as a table
suspenssion_coil <- read.csv(file='Resources/Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
## Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- suspenssion_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
## Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- suspenssion_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI))

# Deliverable 3 - T-Tests on Suspension Coils
## write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspenssion_coil$PSI, mu = 1500)
## Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
t.test(subset(suspenssion_coil,Manufacturing_Lot =="Lot1")$PSI,mu = 1500)
t.test(subset(suspenssion_coil,Manufacturing_Lot =="Lot2")$PSI,mu = 1500)
t.test(subset(suspenssion_coil,Manufacturing_Lot =="Lot3")$PSI,mu = 1500)
