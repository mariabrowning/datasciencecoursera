rm(list = ls())

# Initialize a data.frame
d = data.frame(x = 1:4, y = 5:8, z = 9:12, w = 13:16)

# Calculate the column means in the simplest way possible
colmean = c(mean(d[, 1]), mean(d[, 2]), mean(d[, 3]), mean(d[, 4]))

# Use a for loop
colmean = numeric(4)
for(i in 1:4){
    y = mean(d[, i])
    colmean[i] = y
}
colmean

# Use a for loop with arbitrary size
d = data.frame(x = 1:10, y = 11:20)
d = data.frame(x = 1:4, y = 5:8, z = 9:12, w = 13:16)
n = ncol(d)
colmean = numeric(n)
for(i in 1:n){
    y = mean(d[, i])
    colmean[i] = y
}
colmean

# Turn this code into a function
f = function(d){
    n = ncol(d)
    colmean = numeric(n)
    for(i in 1:n){
        y = mean(d[, i], na.rm = TRUE)
        colmean[i] = y
    }
    colmean
}

d = data.frame(x = 1:10, y = c(11:19, NA))
f(d)
d = data.frame(x = 1:4, y = 5:8, z = 9:12, w = 13:16)
f(d)












d = matrix(1:16, nrow = 4)

meanrow = function(d){
    numrows <- nrow(d)
    rows <- numeric(numrows)
    for(i in 1:numrows) {
        rows[i] <- mean(d[i, ])
    }
    return(rows)
}

d = matrix(1:12, nrow = 3)
meanrow(d)
newData = matrix(1:12, nrow = 12)
d
newData
meanrow(d)
meanrow(newData)
