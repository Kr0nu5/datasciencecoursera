sub_set<-read.csv('sub_set.csv')

png("plot3.png", width=480, height=480)
plot(sub_set$Time, sub_set$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(sub_set$Time, sub_set$Sub_metering_2, col="red")
lines(sub_set$Time, sub_set$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), c("Sub metering 1", "Sub metering 2", "Sub metering 3"),lty=1)
dev.off()
