
load("household_power_data_2days.RData")
hist(daten$Global_active_power, col=2, main="Global Active Power", xlab="Global Active Power (kilowatts)")

#### Create PNG - File
png(file="plot1.png")
hist(daten$Global_active_power, col=2, main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()