#download, read, and process data
source("datprep.R")

png(filename = "plot3.png", width = 480, height = 480, 
    units = "px", bg = "transparent")

#set x variable
x <- psub$datetime

#set y variable
y <- psub$sub_metering_1 

#create plot
plot(x,y, type="l", xlab="", ylab="Energy sub metering")

#add lines
lines(x, psub$sub_metering_2, col = "red")
lines(x, psub$sub_metering_3, col = "blue")

#add legend
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
                col=c("black", "red", "blue"), lwd = 1)

dev.off()