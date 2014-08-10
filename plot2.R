#source("main.R")

load("household_power_data_2days.RData")
plot(daten$datetime, daten$Global_active_power, type='l', xlab="", ylab="Global Active Power (kilowatts)")

#### Create PNG - File
png(file="plot2.png")
plot(daten$datetime, daten$Global_active_power, type='l', xlab="", ylab="Global Active Power (kilowatts)")
 
dev.off()