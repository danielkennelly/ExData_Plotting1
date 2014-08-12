source("datprep.R")

x <- psub$datetime
y <- psub$global_active_power

plot(x,y, type="n", xlab="", ylab="Global Active Power (kilowatts)")
lines(x,y, type="s")

dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()