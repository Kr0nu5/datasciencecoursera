sub_set<-read.csv('sub_set.csv')

png("plot2.png", width=480, height=480)
plot(sub_set$Time,sub_set$Global_active_power,type='l',xlab='',ylab='Global Active Power (kilowatts)')
dev.off()
