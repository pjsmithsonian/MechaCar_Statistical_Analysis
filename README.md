# MechaCar_Statistical_Analysis

## Overview
The following is a written analysis of the statistical analysis done in the MechaCarChallenge.R file and our findings.

## Linear Regression to Predict MPG

![linear_regression](/Resources/deliverable_one_summary.PNG)

From our linear regression performed we can say that the ground_clearance and vehicle_length coefficients are unlikely to provide a non-random amount of variance to the mpg due to their individual p-values. We can also say, due to regressions p-value, that the slope of the linear model is considered to be zero since our p-value is less than our assumed significance level of 0.05%. With an r-squared value of .7149, but a lack of significant variables, our model does not effectively predict the mpg of MechaCar prototypes.

## Summary Statistics on Suspension Coils
With the design specifications for the MechaCar suspension coils dictating that the variance of the suspension coils must not exceed 100 pounds per square inch, the manufacturing data as a whole does meet this specification, but Lot3 does not Individually with a variance of 170. 

### Total Lot Summary
![total](/Resources/deliverable_2_total_summary.PNG)

### Individual Lot Summary
![lot](/Resources/deliverable_2_lot_summary.PNG)

## T-Tests on Suspension Coils
For our suspension coils, using a t-test to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch, we would determine that we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

![total](/Resources/deliverable_3_ttest_total.PNG)

This holds true on each individual lot population as well, with Lot 1 having a a mean that is the same as the population mean.

### Lot 1
![lot1](/Resources/deliverable_3_lot1_ttest.PNG)

### Lot 2
![lot1](/Resources/deliverable_3_lot2_ttest.PNG)

### Lot 3
![lot1](/Resources/deliverable_3_lot3_ttest.PNG)

## Study Design: MechaCar vs Competition
A statistical study that can quantify how the MechaCar performs against the competition would be to compare the fuel efficiency of MechCar versus a competitor. To perform this study we would need a mile per gallon (mpg) value from the competitors models which they will likely be advertising as it is important to customers. Our null hypothesis would be that there is no statistical difference between the mpg in the MechCar vehicles as it relates to their competitors. Our alternate hypothesis would be the the MechCar vehicles' mpg is significantly more than our presumed population mean. In this design, we would use a t-test to do the analysis of the mpg value for MechCar and their competitor. We would need a mile per gallon (mpg) value from the competitors models, but that would likely be easy to find as they will likely be advertising as it is important to customers.

## Summary
Using the above test and R we have had some interesting findings that paint a much clearer picture of the data we are looking at.