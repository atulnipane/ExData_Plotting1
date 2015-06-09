### Plot 4

expData <- read.table("household_power_consumption.txt",skip=66637,nrows=2880,sep = ";")
colnames(expData) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
expData$date_time <- dmy_hms(paste(expData$Date, expData$Time))

par(mfrow = c(2,2))

plot(expData$date_time, expData$Global_active_power, lwd=1, type="l", xlab = "", ylab = "Global Active Power (Kilowatt)")

plot(expData$date_time, expData$Voltage, lwd=1, type="l", xlab = "Datetime", ylab = "Voltage")


plot(expData$date_time,expData$Sub_metering_1, type="l", ylab = "Energy Sub Metering", xlab = "")
points(expData$date_time,expData$Sub_metering_2, type="l", col="red")
points(expData$date_time,expData$Sub_metering_3, type="l", col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black","red","blue"), lty=1, cex = 0.3);

plot(expData$date_time, expData$Global_reactive_power, lwd=1, type="l", xlab = "Datetime", ylab = "Global_reactive_power")

dev.copy(png, file = "plot4.png")
dev.off()