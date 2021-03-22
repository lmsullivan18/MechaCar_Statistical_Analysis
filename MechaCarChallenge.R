library(dplyr)

MechaCar <- read.csv('C:\\Users\\lmsul\\OneDrive\\Documents\\R_Analysis\\Challenge\\MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import MechaCar dataset

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar))

SuspensionCoil <- read.csv('C:\\Users\\lmsul\\OneDrive\\Documents\\R_Analysis\\Challenge\\Suspension_Coil.csv',check.names = F, stringsAsFactors = F) #import suspension coil dataset

total_summary <- SuspensionCoil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table

lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table

t.test(SuspensionCoil$PSI, mu=1500) #compare sample versus population means

Lot1 <- subset(SuspensionCoil, Manufacturing_Lot == "Lot1")
Lot2 <- subset(SuspensionCoil, Manufacturing_Lot == "Lot2")
Lot3 <- subset(SuspensionCoil, Manufacturing_Lot == "Lot3")

t.test(Lot1$PSI, mu=1500)

t.test(Lot2$PSI, mu=1500)

t.test(Lot3$PSI, mu=1500)
