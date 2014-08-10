# source("main.R")
load("household_power_data_2days.RData")

plot(daten$datetime, daten$Sub_metering_1, type='l', xlab="", ylab="Energy sub metering")
lines(daten$datetime, daten$Sub_metering_2, col=2)
lines(daten$datetime, daten$Sub_metering_3, col='blue')
legend("topright", c("Sub_metering_1", "Sub_metering_3", "Sub_metering_3"), lty=1, col=c(1,2,'blue'))


#### Create PNG - File
png(file="plot3.png")
plot(daten$datetime, daten$Sub_metering_1, type='l', xlab="", ylab="Energy sub metering")
lines(daten$datetime, daten$Sub_metering_2, col=2)
lines(daten$datetime, daten$Sub_metering_3, col='blue')
legend("topright", c("Sub_metering_1", "Sub_metering_3", "Sub_metering_3"), lty=1, col=c(1,2,'blue'))

dev.off()