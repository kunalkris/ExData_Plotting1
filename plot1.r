household_power_consumption <- read.table("~/Documents/Programming/r/exdata/household_power_consumption.txt", sep=";", header = TRUE, na.strings="?")
household_power_consumption <- household_power_consumption[household_power_consumption$Date %in% c('1/2/2007', '2/2/2007'),]
png(filename = './exdata/ExData_plotting1/plot1.png', width = 480, height = 480)
hist(household_power_consumption$Global_active_power, xlab = 'Global Active Power (kilowatts)', main = 'Global Active Power', col = 'red')
dev.off()