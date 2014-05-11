##| line plot of global active power
load("power.RData")

png(filename="plot2.png")

plot(df2$Time, df2$Global_active_power, 
     type="l",
     xlab = "",
     ylab = "Global Actvie Power (kilwatts)")

dev.off()
