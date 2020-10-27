setwd("/Users/jasonmasurovsky/Classwork Projects/MechaCar_Statistical_Analysis")

# Deliverable 1

library(dplyr)
MechaCar_mpg <- read_csv("MechaCar_mpg.csv")
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)
summary(model)


# Deliverable 2

Suspension_Coil <- read_csv("Suspension_Coil.csv")
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary

# Deliverable 3

t.test(log10(Suspension_Coil$PSI),mu=1500)
t.test(Suspension_Coil$PSI,mu=1500)
?t.test
t.test(log10(Suspension_Coil$PSI),mu=1500)#, subset = Suspension_Coil$Manufacturing_Lot == "Lot1")

lot1 <- subset(Suspension_Coil, Suspension_Coil$Manufacturing_Lot == "Lot1")

t.test(log10(lot1$PSI),mu=1500)

lot2 <- subset(Suspension_Coil, Suspension_Coil$Manufacturing_Lot == "Lot2")
t.test(log10(lot2$PSI),mu=1500)


lot3 <- subset(Suspension_Coil, Suspension_Coil$Manufacturing_Lot == "Lot3")
t.test(log10(lot3$PSI),mu=1500)

