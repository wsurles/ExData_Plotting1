##| square grid of plots
load("power.RData")

png(filename="plot4.png")

par(mfrow = c(2,2))

plot(df2$Time, df2$Global_active_power, type="l",
     xlab = "",
     ylab = "Global Active Power")

plot(df2$Time, df2$Voltage, type="l",
     xlab = "datetime",
     ylab = "Voltage")

plot(df2$Time, df2$Sub_metering_1, 
     type="l",
     xlab = "",
     ylab = "Energy sub metering")
lines(x, df2$Sub_metering_2, col = "red")
lines(x, df2$Sub_metering_3, col = "blue")
legend("topright", lty = 1,
       col = c("black","red","blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(df2$Time, df2$Global_reactive_power, type="l",
     xlab = "datetime",
     ylab = "Global_reactive_power")

dev.off()