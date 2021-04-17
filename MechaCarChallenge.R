# Deliverable 1
# load the dplyr package
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe
m_car <- read.csv(file="Resources/MechaCar_mpg.csv")

# Perform linear regression using the lm() function
lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length, data = m_car)

# Summary to determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length, data = m_car))

# Deliverable 2
# import and read in the Suspension_Coil.csv file
sus_coil <- read.csv(file="Resources/Suspension_Coil.csv")

# creates dataframe to get the mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary <- sus_coil %>%summarize(mean=mean(PSI), median= median(PSI), variance= var(PSI), SD = sd(PSI))

# dataframe using group_by() and summarize() to group manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>%  summarize(mean=mean(PSI), median= median(PSI), variance= var(PSI), SD = sd(PSI))


# Deliverable 3
# t.test() function to determine if PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test((sus_coil$PSI),mu=1500) #compare sample versus population means

# determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
lot_one <- subset(sus_coil,Manufacturing_Lot == "Lot1")
lot_two <- subset(sus_coil,Manufacturing_Lot == "Lot2")
lot_three <- subset(sus_coil,Manufacturing_Lot == "Lot3")


t.test((lot_one$PSI),mu=1500)
t.test((lot_two$PSI),mu=1500)
t.test((lot_three$PSI),mu=1500)

