household_power_consumption <- read.table("~/Documents/Programming/r/exdata/household_power_consumption.txt", sep=";", header = TRUE, na.strings="?")
household_power_consumption <- household_power_consumption[household_power_consumption$Date %in% c('1/2/2007', '2/2/2007'),]
household_power_consumption$DateTime <- strptime(paste(household_power_consumption$Date, household_power_consumption$Time),"%d/%m/%Y %H:%M:%S")
png(filename = './exdata/ExData_plotting1/plot2.png', width = 480, height = 480)
plot(household_power_consumption$DateTime, household_power_consumption$Global_active_power, type = 'l', xlab = '', ylab = 'Global Active Power (kilowatts)')
dev.off()
