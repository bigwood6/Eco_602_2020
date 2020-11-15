delomys = read.csv("/Users/zachary/Documents/GitHub/Eco_602_2020/data/delomys.csv")
##exaple histograms
hist(delomys$body_mass)
hist(delomys$body_length)
##scatterplot
plot(delomys$body_length, delomys$body_mass)
##boxplot just for species to bodymass
boxplot(body_mass ~ binomial, data = delomys)
##boxplot just for sex to bodymass
boxplot(body_mass ~ sex, data = delomys)
##boxplot for sex and species to bodymass
boxplot(body_mass ~ sex * binomial, data = delomys)