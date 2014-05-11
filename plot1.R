##| Bar plot of Global Active Power
load("power.RData")

png(filename="plot1.png")

hist(df2$Global_active_power, 
     col = "red",
     breaks = 25,
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")

dev.off()