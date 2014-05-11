##| line plots of sub-metered energy data
load("power.RData")

x <- df2$Time
y1 <- df2$Sub_metering_1
y2 <- df2$Sub_metering_2
y3 <- df2$Sub_metering_3

png(filename="plot3.png")

plot(x, y1, 
     type="l",
     xlab = "",
     ylab = "Energy sub metering")
lines(x, y2, col = "red")
lines(x, y3, col = "blue")
legend("topright", lty = 1,
       col = c("black","red","blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()