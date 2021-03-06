# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![Linear Regression to Predict MPG](https://user-images.githubusercontent.com/74469315/111876020-20d4e680-8973-11eb-95b1-f01f956188ca.PNG)

The variables that provide a non-random amount of variance to the mpg values in the dataset are the intercept, vehicle length and ground clearance, because those Pr(>|t|) values are very, very small.

The slope of the linear model is not zero. The slope(s) are determined by the coefficient. There are multiple coefficients in a multiple regression model, and in this case, none of them are zero. This means that all of the variables had an impact on the result.

This does effectively predict the mpg of MechaCar prototypes because the p value is far lower than 0.05, and the r-squared value is fairly high. It is at 0.71 which indicates that about mpg for about 70% of cars can be accurately predicted by this equation.


## Summary Statistics on Suspension Coils

![total_summary](https://user-images.githubusercontent.com/74469315/111927018-8addb080-8a85-11eb-8de3-3fa0d5aae38b.PNG)

The overall data for the PSI meets the specifications as the variance of the total summary is only about 62.

![lot_summary](https://user-images.githubusercontent.com/74469315/111926949-46eaab80-8a85-11eb-83d6-cbb9fccbfaec.PNG)

The current manufacturing data does not meet the design specification, which dictates that the variance of suspension coils must not exceed 100 pounds per square inch. While the lots in total meet this design specification, the lots individually do not meet the specifications. The variance of Lot 3 is 220 pounds per square inch, which exceeds the design specification set.

## T-Tests on Suspension Coils

![T test on suspension coils](https://user-images.githubusercontent.com/74469315/111882759-b7160600-898d-11eb-9c53-d4ef0a48a698.PNG)

When a t-test was ran on the data from all manufacturing lots, the result was the above. This shows that the PSI from these lots is not statistically different from the population mean. The p-value was above 0.05, which means we can reject the alternative hypothesis, which is that the means are not equal. That means the null hypothesis - that the means ARE equal - can be accepted.

![T test on coils by lot](https://user-images.githubusercontent.com/74469315/111882790-ddd43c80-898d-11eb-8b02-812ed92dfa2e.PNG)

Based on the t-tests done on the coils produced in all three lots, the PSI for each manufacturing lot is NOT statistically different from the population mean of 1,500 pounds per square inch. The p-value of all three tests was higher than 0.05. Just like with the data from all manufacturing lots, this means that we can accept the null hypothesis that the mean of the dataset is equal to the mean of the population standard.

## Study Design: MechaCar vs Competition

In order to determine how the MechCar performs against the competition, I would want to compare the averages of important metrics of the MechaCar to those of its competition. Perhaps I would look first at how its fuel effciency compared to cars of a similar size. I would test the mean fuel efficiency of the MechaCar against the mean fuel efficiency of a competitor's car through a one-tailed t test. The null hypothesis would be that the average fuel efficiency (as measured by mpg) of the MechaCar is higher than the average fuel efficiency of the competitor. In order to run this test, I would need mpg data from a number of cars from both creators.
