#installs of data packages
install.packages("palmerpenguins")
install.packages("here")
require(palmerpenguins)
require(here)

#checking class of penguins. making sure its a data frame.
class(penguins)
penguins = data.frame(penguins)
head(penguins)

#running mean function with na.rm = TRUE gets rid of our NA values.
mean(penguins$body_mass_g, na.rm = TRUE)

summary(penguins)

#making histogram using variable of body mass
bodymass <- penguins$body_mass_g
hist(bodymass)

#making boxplot. separating results by sex on second line
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)

#comparing boxplots side by side
par(mfrow = c(1, 2))
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)

#coplot example code. using variables then calling the data after
coplot(body_mass_g ~ bill_depth_mm | sex, data = penguins)

#demonstrating png function
require(here)
png(filename = here("basic histogram.png"), width = 800 , height = 600)
hist(penguins$body_mass_g)
dev.off()


#deliverable section coplots and boxplots
par(mfrow = c(1, 2))
boxplot(body_mass_g ~ sex, data = penguins, xlab = "Sex of the penguin", ylab = "Body mass in Grams", main = "Body mass of penguins separated by sex")
boxplot(penguins$body_mass_g, xlab = "Male and female penguins", ylab = "Body mass in Grams", main = "Body mass of both male and female penguins")
dev.off