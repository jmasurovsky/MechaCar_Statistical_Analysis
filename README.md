# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Vehicle length and ground clearance are statistcally unlikely to provide random amount of variance to the linear model. This means smaller cars that are lower to the ground are likely to increase fuel efficiency. The slope of the linear model is not zero with a p-value of 5.35 x 10^-11. According to Pearson's correlation, the linear model predicts mpg strongly with an r-squared of 0.7149 (0.72 rounded). The use of a multiple linear regression showed variables that are more likely to be statistically significant in predicting mpg such as vehicle length and ground clearance. Variables that showed to be not significant in predicting mpg were weight, angle, and AWD.

![img_1](https://github.com/jmasurovsky/MechaCar_Statistical_Analysis/blob/main/Images/regressionOutput.png)

Figure 1: Regression output


## Summary Statistics on Suspension Coils

Results of the individual lot summary show that lots 1 and 2 met specification goals of suspension coil variance not exceeding 100 pounds per square inch, while lot 3 does not with a variance of 220. 

## T-Tests on Suspension Coils

- Briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

The results of the t-test performed on all manufacturing lots showed a p-value of 0.5117 which is greater than 0.05. Therefore there is not enough evidence to reject the null hypothesis that all lots are statistically different from the mean of 1,500 pounds per square inch. T-test performed on all three lots invidivually resulted in similar p-values of 2.2 x 10^-16, therefore we can accept the hypothesis that each lot is statistically different from the mean of 1,500 pounds per square inch.

![img_2](https://github.com/jmasurovsky/MechaCar_Statistical_Analysis/blob/main/Images/t-test_allLots.png)

Figure 2: t-test results on all lots

![img_3](https://github.com/jmasurovsky/MechaCar_Statistical_Analysis/blob/main/Images/t-test_lot1.png)

Figure 3: t-test results on lot 1 (similar p-value as lot 2 & 3 results)

## Study Design: MechaCar vs Competition

A study design I would perform would be comparing cost and fuel efficiency across competitors by car type. There would need to be data collection of competitor cost, mpg, and car type (i.e. sedan, suv). To make this comparision, using an ANOVA test by inputting  The null hypothesis would be there are no differences between the mean cost by car type from MechaCar's competitors. The alternative hypothesis would state there is a difference between the mean cost of each car type to MechaCar's competitors. This test would help MechaCar better understand how to price each car type at certain mpg levels against its competitors.
