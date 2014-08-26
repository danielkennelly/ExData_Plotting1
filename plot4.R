source("datprep.R")

#initiate png
png(filename = "plot4.png", width = 480, height = 480, 
        units = "px", bg = "transparent")


#2 by 2 plot
par(mfrow = c(2,2))

#plot 1: datetime by global active power
x <- psub$datetime
y <- psub$global_active_power

plot(x,y, type="l", xlab="", ylab="Global Active Power")

#plot 2: datetime by voltage
x <- psub$datetime
y <- psub$voltage
plot(x,y, type="l", xlab="datetime", ylab="Voltage")

#plot 3: datetime by sub meterings 1-3
x <- psub$datetime
y <- psub$sub_metering_1
plot(x,y, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(x, psub$sub_metering_2, col = "red")
lines(x, psub$sub_metering_3, col = "blue")
legend("topright", bty = "n", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),  
        col=c("black", "red", "blue"), lwd = 1)

#plot 4: datetime by global reactive power
x <- psub$datetime
y <- psub$global_reactive_power
plot(x,y, type="l", xlab="datetime", ylab="Global_reactive_power", col = "black")

dev.off()