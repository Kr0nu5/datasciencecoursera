## define the a few variables and pull dataset to working directory
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
file <- 'Elec_power_data.zip'
if(!file.exists(file)){
        download.file(url,file, mode = "wb") 
}
unzip(file, files = NULL, exdir=".") # unzips file to working directory

## read dataset into a data frame for the purpose of subsetting the dates fo rthis exercise 1-2 FEB 2007
raw_set <- read.table('household_power_consumption.txt',sep=';',header=TRUE,na='?')
raw_set$Time <- strptime(paste(raw_set$Date, raw_set$Time), "%d/%m/%Y %H:%M:%S") # change tiem format for better plotting
raw_set$Date<-as.Date(raw_set$Date, '%d/%m/%Y') # update date format
sub_dates<-as.Date(c('2007-02-01','2007-02-02'),'%Y-%m-%d') # define date range for subset

## subset and write csv to be used for creating each plot - saves memory and compute time
sub_set<-subset(raw_set, Date %in% sub_dates)
write.csv(sub_set,file = 'sub_set.csv')
