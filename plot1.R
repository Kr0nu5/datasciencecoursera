sub_test<-read.table('sub_set.csv') ## For each subsequent plot

png("plot1.png", width=480, height=480)
hist(sub_set$Global_active_power,col='red',main='Global Active Power',xlab='Global Active Power (kilowatts)')
dev.off()
