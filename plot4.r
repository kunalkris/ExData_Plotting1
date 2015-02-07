household_power_consumption <- read.table("~/Documents/Programming/r/exdata/household_power_consumption.txt", sep=";", header = TRUE, na.strings="?")
household_power_consumption <- household_power_consumption[household_power_consumption$Date %in% c('1/2/2007', '2/2/2007'),]
household_power_consumption$DateTime <- strptime(paste(household_power_consumption$Date, household_power_consumption$Time),"%d/%m/%Y %H:%M:%S")
png(filename = './exdata/ExData_plotting1/plot4.png', width = 480, height = 480)
par(mfrow=c(2,2))
plot(household_power_consumption$DateTime, household_power_consumption$Global_active_power, type = 'l', xlab = '', ylab = 'Global Active Power')
plot(household_power_consumption$DateTime, household_power_consumption$Voltage, type = 'l', xlab = 'datetime', ylab = 'Voltage')
plot(household_power_consumption$DateTime, household_power_consumption$Sub_metering_1, type = 'n', xlab = '', ylab = 'Energy sub metering')
lines(household_power_consumption$DateTime, household_power_consumption$Sub_metering_1, type = 'l', col = 'black')
lines(household_power_consumption$DateTime, household_power_consumption$Sub_metering_2, type = 'l', col = 'red')
lines(household_power_consumption$DateTime, household_power_consumption$Sub_metering_3, type = 'l', col = 'blue')
legend('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col = c('black', 'red', 'blue'), lty='solid', bty = 'n')
plot(household_power_consumption$DateTime, household_power_consumption$Global_reactive_power, type = 'l', xlab = 'datetime', ylab = 'Global_reactive_power')
dev.off()
