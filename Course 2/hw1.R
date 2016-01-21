packageVersion("swirl")
library(swirl)
install_from_swirl("R Programming")
swirl()
MariaBrowning

x <- read.csv("C:/Users/rockc_000/Desktop/hw1_data.csv")
filter1 <- x[, 1] > 31
filter1
filter1[is.na(filter1)] <- FALSE
filter1
x[filter1, ]
subset2 <- x[filter1, ]
subset2
subset2[, 4] > 90
subset3 <- subset2[, 4] > 90
subset2[subset3, ]
final <- subset2[subset3, ]
mean(final[, 2], na.rm = TRUE)



# Problem 19
x[, 5] == 6
filter3 <- x[, 5] == 6
colnames(x)
x[filter3, ]
d1 <- x[filter3, ]
mean(d1[, 4])


# Problem 20
x[, 5] == 5
filter4 <- x[, 5] == 5
subest3 <- x[filter4,]

max(subest3[, 1], na.rm = TRUE)
is(1)
is(1:5)
