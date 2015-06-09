
### Plot 1

expData <- read.table("household_power_consumption.txt",skip=66637,nrows=2880,sep = ";")
colnames(expData) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
expData$Time <- strptime(expData$Time,"%H:%M:%S")
expData$Date <- as.Date(expData$Date,"%Y/%M/%D")

hist(expData$Global_active_power, col = "red", xlab = "Global Active Power (Kilowatt)", main = "Global Active Power")
dev.copy(png, file = "plot1.png")
dev.off()