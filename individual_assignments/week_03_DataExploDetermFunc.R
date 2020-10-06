install.packages("here")
library(here)
require(here)

getwd()
data_habitat <- read.csv(here("data","hab.sta.csv"))

elev <- data_habitat$elev
slope <- data_habitat$slope
aspect <- data_habitat$aspect
ba <- data_habitat$ba.tot


png(filename = "BAscats.png")
par(mfrow = c(3,1))
plot(ba, slope, main = "Relationship between Basal Area and Slope")
plot(ba, elev, main = "Relationship between Basal Area and Elevation")
plot(ba, aspect, main = "Relationship between Basal Area and Aspect")
dev.off()


png(filename = "aspecthist.png")
hist(aspect)
dev.off()