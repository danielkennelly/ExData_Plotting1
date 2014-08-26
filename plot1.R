source("datprep.R")

png(filename = "plot1.png", width = 480, height = 480, 
    units = "px", bg = "transparent")

hist(psub$global_active_power, col = "red", main = "Global Active Power", 
                        xlab = "Global Active Power (kilowatts)")

dev.off()