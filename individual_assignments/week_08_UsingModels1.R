#load cat rate data
catrate <- read.csv(here::here("data", "catrate.csv"))
#summary and hist
summary(catrate)
hist(catrate$cat.rate, main = 'Salamander Reproduction Catastrophic Rates', xlab = 'CatastrophicRate', ylab = 'Frequency')
#check for normality
shapiro.test(catrate$cat.rate)
#one sided t-test
t.test(catrate$cat.rate, mu = 0)
#wilcoxon rank sum
wilcox.test(catrate$cat.rate, mu = 2 / 7)
#comparing 2 sample means
require(palmerpenguins)
penguin_dat = droplevels(subset(penguins, species != "Gentoo"))
summary(penguin_dat)
boxplot(flipper_length_mm ~ species, data = penguin_dat)
# Extract the Adelie penguin data
dat_adelie = subset(penguin_dat, species == "Adelie")
shapiro.test(dat_adelie$flipper_length_mm)
dat_chinstrap = subset(penguin_dat, species == "Chinstrap")
shapiro.test(dat_chinstrap$flipper_length_mm)
#creating two histograms and stacking them
hgA <- hist(dat_chinstrap$flipper_length_mm, main = 'Flipper Length Comparison', xlab = 'Flipper Length in mm of Chinstrap', col = "red", breaks = 5)
hgB <-hist(dat_adelie$flipper_length_mm, main = 'Flipper Length Comparison', xlab = 'Flipper Length in mm of Adelie', col = "blue")
plot(hgA, col = rgb(0,0,1,1/4), xlim = c(170, 220), ylim = c(0, 50), main = "Flipper Length Comparison", xlab = "Length of Flipper in MM")
plot(hgB, col = rgb(1,0,0,1/4), add = TRUE, xlim = c(70, 220), ylim = c(0, 50))
#Actual answer to Q10
par(mfrow = c(1,2))
hgA <- hist(dat_chinstrap$flipper_length_mm, main = 'Chinstrap Flipper Length Frequency', xlab = 'Flipper Length in MM of Chinstrap', col = "red", breaks = 5, xlim = c(170, 220), ylim = c(0, 30))
hgB <-hist(dat_adelie$flipper_length_mm, main = 'Adelie Flipper Length Frequency', xlab = 'Flipper Length in MM of Adelie', col = "blue", xlim = c(170, 220), ylim = c(0, 50))
#multi t.test
t.test(flipper_length_mm ~ species, data = penguin_dat)
