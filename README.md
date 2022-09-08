# MechaCar Statistical Analysis

## Overview

Analysis on car prototypes to determine contributing factors to mpg and also determine whether production specifications are being met.

## Linear Regression to Predict MPG

* Vehicle weight, spoiler angle and all-wheel drive all contribute a non-random amount of variance to mpg.

* The slope is not considered zero because the p-value is 5.35^-11

* The r^2 value is 0.7149, meaning that 71% of the mpg variations could be attributed to the variables tested. The p-value remained significant so the model is efficient at predicting the mpg for these prototypes.

![mpg_regression](https://github.com/mcwatts88/MechaCar_Statistical_Analysis/blob/main/images/mpg_regression.PNG)

## Summary Statistics on Suspension Coils

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The overall variance when looking at all 3 lots is 62.3 psi. Lot 1's variance is 0.98 psi, lot 2's variance is 7.47 psi and lot 3's variance is 170.29 psi. Lot 3 is out of spec; lots 1 and 2 are within spec.

![total_summary](https://github.com/mcwatts88/MechaCar_Statistical_Analysis/blob/main/images/total_summary.PNG)

![lot_summary](https://github.com/mcwatts88/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.PNG)

## T-Tests on Suspension Coils

* T-Test on All Manufacturing Lots:

The p-value of all the lots is 0.45, the null hypothesis cannot be rejected.

![lot_summary_ttest.PNG](https://github.com/mcwatts88/MechaCar_Statistical_Analysis/blob/main/images/lot_summary_ttest.PNG)

* T-Test on Manufacturing Lot 1:

The p-value of lot 1 is 1, the null hypothesis cannot be rejected.

![lot1_summary_ttest.PNG](https://github.com/mcwatts88/MechaCar_Statistical_Analysis/blob/main/images/lot1_summary_ttest.PNG)

* T-Test on Manufacturing Lot 2:

The p-value of lot 2 is 0.61, the null hypothesis cannot be rejected.

![lot2_summary_ttest.PNG](https://github.com/mcwatts88/MechaCar_Statistical_Analysis/blob/main/images/lot2_summary_ttest.PNG)

* T-Test on Manufacturing Lot 3:

The p-value of lot 3 is 0.04, the null hypothesis can be rejected. The psi in lot 3 is statistically different.

![lot3_summary_ttest.PNG](https://github.com/mcwatts88/MechaCar_Statistical_Analysis/blob/main/images/lot3_summary_ttest.PNG)

## Study Design: MechaCar vs Competition

* Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

* Metrics

    * Cost and Horse Power

* What is the null hypothesis or alternative hypothesis?

    * Null Hypothesis: MechCar is not priced similarly to competitors based on horse power.

    * Alternative Hypothesis: MechaCar is priced similarly to compitetors based on horse power.

* What statistical test would you use to test the hypothesis? And why?

    * A multiple linear regression would determine whether horse power and cost are correlated in a significant manner.

* What data is needed to run the statistical test?

    * Cost of Vehicles

    * Horse Power