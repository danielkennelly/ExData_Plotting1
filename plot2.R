source("datprep.R")

png(filename = "plot2.png", width = 480, height = 480, 
    units = "px", bg = "transparent")

x <- psub$datetime
y <- psub$global_active_power

plot(x,y, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()