wiwa_counts = c(2, 6)
dpois(x = wiwa_counts, lambda = 4.0)

dpois(x = 2, lambda = 4.0) * dpois(x = 6, lambda = 4.0)

sum(log(dpois(x = wiwa_counts, lambda = 4.0)))

#find, load bird data
dat_birds <- read.csv("https://michaelfrancenelson.github.io/eco_602_634_2020/data/bird.sta.csv", header = TRUE, sep = ",")
dat_habitat <- read.csv("https://michaelfrancenelson.github.io/eco_602_634_2020/data/hab.sta.csv", header = TRUE, sep = ",")
dat_all <- merge(dat_birds, dat_habitat)

#dat_bird = read.csv(here::here("data", "bird.sta.csv"))
#dat_habitat = read.csv(here::here("data", "hab.sta.csv"))
#dat_all = merge(dat_bird, dat_habitat)

#histogram
summary(dat_all$WIWA)
sum(log(dpois(x = dat_all$WIWA, lambda = 1.67)))
wiwa <- dat_all$WIWA
hist(wiwa, breaks = 8, xlab = "Winter Wren Count", ylab = "Frequency", main = "Winter Wren Count Frequency")

#to binomial dist
sum(log(dbinom(wiwa, size = length(wiwa), mean(wiwa)/length(wiwa))))