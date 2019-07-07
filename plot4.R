sub_set<-read.csv('sub_set.csv')

png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))

# Top left
plot(sub_set$Time, sub_set$Global_active_power,type="l",xlab="",ylab="Global Active Power")

# Top right
plot(sub_set$Time, sub_set$Voltage, type="l",xlab="date-time", ylab="Voltage")

# Bottom left
plot(sub_set$Time, sub_set$Sub_metering_1, type="l", col="black",xlab="", ylab="Energy sub metering")
lines(sub_set$Time, sub_set$Sub_metering_2, col="red")
lines(sub_set$Time, sub_set$Sub_metering_3, col="blue")
legend("topright",col=c("black", "red", "blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1, box.lwd=0)

# Bottom right
plot(sub_set$Time, sub_set$Global_reactive_power, type="n", xlab="date-time", ylab="Global reactive power")
lines(sub_set$Time, sub_set$Global_reactive_power)
dev.off()
