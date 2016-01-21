specdata <- read.csv(file = "C:/Users/rockc_000/Documents/Github_Maria/datasciencecoursera/Course 2/specdata/001.csv")


pollutantmean <- function(directory, pollutant, ids = 1:332) {
    # Get Data
    
    # Compute Mean
    mean()
}

directory = "C:/Users/rockc_000/Documents/Github_Maria/datasciencecoursera/Course 2/specdata/"
pollutant = "sulfate"
ids = 1:10

for(id in ids){
    id <- if(nchar(id) == 1) {
        paste0("00", id)
    } else if(nchar(id) == 2) {
        paste0("0", id)
    } else if(nchar(id) == 3) {
        id
    }
     
    specdata <- paste0("C:/Users/rockc_000/Documents/Github_Maria/datasciencecoursera/Course 2/specdata/", id, ".csv")
    
    read.csv(specdata)
    addvector <- c()
    
    
}












answer <- c()
for(i in 1:10){
    answer <- c(answer, i)
    print(answer)
    print(i)
}


## Write a function that takes the ids and computes the minimum date across all files
minDate <- function(ids){
    allDates <- NULL
    for(id in ids){
        id <- if(nchar(id) == 1) {
            paste0("00", id)
        } else if(nchar(id) == 2) {
            paste0("0", id)
        } else if(nchar(id) == 3) {
            id
        }
        file <- paste0("C:/Users/rockc_000/Documents/Github_Maria/datasciencecoursera/Course 2/specdata/", id, ".csv")
        d <- read.csv(file)[1:3, ]
        currentDates <- as.Date(d[, 1])
        allDates <- as.Date(c(allDates, currentDates), origin = as.Date("1970-01-01"))
    }
    return(min(allDates))
}

minDate(ids = 1:10)
minDate(ids = 1)
