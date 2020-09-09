a <- c("Zachary Bigwood")
b1 <- c(45.6)
b2 <- c("45.6")
c <- c(0:3) 

class(a)
class(b1)
class(b2)
class(c)

Q4 <- b1 + b2
Q6 <- b1 + c
Q6

v1 <- c(-2:2)
v2 <- v1 * 3
sum(v2)

#this is a list
my_list_1 <- list(c(5.2), c("five point two"), c(0:5))
my_list_1

names(my_list_1) <- c("two", "one", "three")
my_list_1

my_list_1[3]
my_list_1$one

my_vec <- rep(1:3, 5)
my_vec

my_bool_vec <- my_vec == 3
data.frame(my_vec, my_bool_vec)

my_vec[my_bool_vec == TRUE]

## [1] 3 3 3 3 3