
load("household_power_data_2days.RData")

op <- par(mfrow=c(2,2))
plot(daten$datetime, daten$Global_active_power, xlab="", type='l', ylab="Global Active Power")
plot(daten$datetime, daten$Voltage, type='l', xlab="datetime", ylab="Voltage")

plot(daten$datetime, daten$Sub_metering_1, type='l', xlab="", ylab="Energy sub metering")
lines(daten$datetime, daten$Sub_metering_2, col=2)
lines(daten$datetime, daten$Sub_metering_3, col='blue')
legend("topright", c("Sub_metering_1", "Sub_metering_3", "Sub_metering_3"), lty=1, col=c(1,2,'blue'), bty = 'n')

with(daten, plot(datetime, Global_reactive_power, type='l', xlab="datetime"))
par(op)

############ Create PNG - File
png(file="plot4.png")
op <- par(mfrow=c(2,2))
plot(daten$datetime, daten$Global_active_power, xlab="", type='l', ylab="Global Active Power")
plot(daten$datetime, daten$Voltage, type='l', xlab="datetime", ylab="Voltage")

plot(daten$datetime, daten$Sub_metering_1, type='l', xlab="", ylab="Energy sub metering")
lines(daten$datetime, daten$Sub_metering_2, col=2)
lines(daten$datetime, daten$Sub_metering_3, col='blue')
legend("topright", c("Sub_metering_1", "Sub_metering_3", "Sub_metering_3"), lty=1, col=c(1,2,'blue'), bty = 'n')

with(daten, plot(datetime, Global_reactive_power, type='l', xlab="datetime"))
par(op)
dev.off()