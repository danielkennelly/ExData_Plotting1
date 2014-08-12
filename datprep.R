url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
destfile <- "dataset.zip"

download.file(url, destfile, method = "curl")

f <- "household_power_consumption.txt"
power <- read.table(unz(destfile, f), header=T, sep=";", stringsAsFactors=F)

#lower-case names
names(power) <- tolower(names(power))

#merge Date and Time columns, remove old columns, reorder
power$datetime <- paste(power$date, power$time, sep = " ")
power$date <- NULL
power$time <- NULL
power <- power[, c(8,1,2,3,4,5,6,7)]

#convert datetime to date class
power$datetime <- strptime(power$datetime, format="%d/%m/%Y %T")

#start and end times for subsetting
start <- as.Date("2007-02-01")
end <- as.Date("2007-02-02")

#subset all obs between start and end dates
psub <- subset(power, as.Date(power$datetime) >= start & as.Date(power$datetime) <= end)

#convert all variable columns except datetime to numeric
psub[,2:8] <- sapply(psub[,2:8], as.numeric)







