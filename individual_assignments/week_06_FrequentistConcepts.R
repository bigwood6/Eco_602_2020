#how to find exactly 3 in pop of 4
dbinom(3, 4, 0.75)
#how to find sum of dist from 0:3 count
sum(dbinom(0:3, 4, 0.75))

pbinom(3, 4, 0.75)
#how to found sum of 4 and 5 count dist
sum(dbinom(4:5, 5, 0.75))
#chance to observe value less than 1.2
pnorm(1.2, 2, 2)
#chance to observe value greater than 1.2
pnorm(1.2, 2, 2, lower.tail = FALSE)
#probability of observing a value between 1.2 and 3.2
pnorm(3.2, 2, 2, lower.tail = TRUE) - pnorm(1.2, 2, 2, lower.tail = TRUE)