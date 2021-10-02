# MechaCar_Statistical_Analysis
Booctamp Module 15

## Linear Regression to Predict MPG
Using multiple design specifications collected from each vehicle, we created a linear model that predicts the MPG of MechaCar Protopyes. These are the main takeaways:
- We can see the variables with non-random amount of variance to the mpg values are Vehicle_length and ground_clearence.
- We can reject the null hypothesis, beacuase the pvalue is small. We can say the anternative hypothesis is true. Therefore we can prove the slope is not equal to 0.
- Given the adjusted r-squared value of 0.7149, we can conclude the linear model predicts the mpg relatively well.

<img width="768" alt="Captura de Pantalla 2021-10-02 a la(s) 11 51 14" src="https://user-images.githubusercontent.com/85461477/135727901-0eab72c1-e09a-4495-82bc-154adf077b1c.png">


## Summary Statistics on Suspension Coils
To test if the manufacturing process is consitent, the weight capactities of suspenssion coils were tested. The design specifications states that the suspenssion coils must not exceed 100 PSI. As we can see in the chat bellow, the overall variance meets limitation.
<img width="327" alt="Captura de Pantalla 2021-10-02 a la(s) 12 32 32" src="https://user-images.githubusercontent.com/85461477/135728326-0d36910e-119d-4e1c-a3ef-2a3765c29bdb.png">

However, by separationg the coils in Lots, we can see that Lot3 exceeds specification limitation with a 170.28 variance.
<img width="477" alt="Captura de Pantalla 2021-10-02 a la(s) 12 32 22" src="https://user-images.githubusercontent.com/85461477/135728405-e367193b-edf4-4e37-be43-8f1a91366f4b.png">


## T-Tests on Suspension Coils
Testing the production of all manufacting lots, we fail tu reject the null hypothis, which means there is no statistical difference from our sample compared to population. Our p value equals .06028, wich means we fail to reject the hypothesis.
<img width="767" alt="Captura de Pantalla 2021-10-02 a la(s) 12 49 20" src="https://user-images.githubusercontent.com/85461477/135728621-852c0530-72b7-4a6a-a362-649f1b25b3cf.png">

By testing the 3 different Lots individually, we get the following results:
- Lot 1: We fail to reject the hypothesis, since our p vale equals 1.
- Lot 2: We fail to reject the hypothesis, since our p vale equals 0.6072.
- Lot 3: We are able to reject the hypothesis, since our p vale equals 0.04168.

<img width="768" alt="Captura de Pantalla 2021-10-02 a la(s) 12 49 31" src="https://user-images.githubusercontent.com/85461477/135728657-929e929c-5dc0-45e2-8795-dbded7471ced.png">


## Study Design: MechaCar vs Competition
I believe that in a competitive industry such as the car industry, we should take into consideration a fuel efficency. This is important since fuel is a regullar expense of the user. I believe we should consider comparing MechaCars City Fuel Efficieny againts the competitions. With this analysis we can take a sample of the competitions performance vs MechaChars.
- Our Metric will be City Fuel Efficiency by MPG.
- Our null Hypothesis is that both cars have the same City Fuel efficiency. Our alternative Hypothesis is that MechaCars is higher or lower.
- Statistical test: We will be using two sample t-tests.
- We will need a sample of MechaCars City Fuel Efficiency and one of the competitors. 

