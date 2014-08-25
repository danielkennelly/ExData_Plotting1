#download, read, and process data
source("datprep.R")

#set x variable
x <- psub$datetime

#set y variable
y <- psub$sub_metering_1 

#create plot
plot(x,y, type="n", xlab="", ylab="Energy sub metering", mar=c(2,2,2,2))

#add lines
lines(x, psub$sub_metering_1)
lines(x, psub$sub_metering_2, col = "red")
lines(x, psub$sub_metering_3, col = "blue")

#add legend
legend("topright", cex = 0.5, c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
                lty=1, xjust = 1, col=c("black", "red", "blue"), inset = 0)

#create png
dev.copy(png, file = "plot3.png", width = 480, height = 480)
dev.off()