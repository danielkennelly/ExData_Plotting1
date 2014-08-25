source("datprep.R")

#2 by 2 plot
par(mfrow = c(2,2))

#plot 1: datetime by global active power
x <- psub$datetime
y <- psub$global_active_power

plot(x,y, type="n", xlab="", ylab="Global Active Power")
lines(x,y, type="s")

#plot 2: datetime by voltage
x <- psub$datetime
y <- psub$voltage
plot(x,y, type="n", xlab="datetime", ylab="Voltage")
lines(x,y,type="s")

#plot 3: datetime by sub meterings 1-3
x <- psub$datetime
y <- psub$sub_metering_1

plot(x,y, type="n", xlab="", ylab="Energy sub metering")

lines(x, psub$sub_metering_1)
lines(x, psub$sub_metering_2, col = "red")
lines(x, psub$sub_metering_3, col = "blue")
legend("topright", c("sub_metering_1", "sub_metering_2", "sub_metering_3"), 
        lty=1, lwd = 0.2, cex = 0.35, y.intersp = 0.25, xjust = 1, 
        col=c("black", "red", "blue"), inset = 0.025)

#plot 4: datetime by global reactive power
x <- psub$datetime
y <- psub$global_reactive_power
plot(x,y, type="n", xlab="datetime", ylab="Global_reactive_power")
lines(x,y,type="s")

#create png
dev.copy(png, file = "plot4.png", width = 480, height = 480)
dev.off()