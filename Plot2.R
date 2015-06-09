### Plot 2
expData <- read.table("household_power_consumption.txt",skip=66637,nrows=2880,sep = ";")
colnames(expData) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
expData$date_time <- dmy_hms(paste(expData$Date, expData$Time))

plot(expData$date_time, expData$Global_active_power, lwd=1, type="l", xlab = "", ylab = "Global Active Power (Kilowatt)", main = "Global Active Power")
dev.copy(png, file = "plot2.png")
dev.off()