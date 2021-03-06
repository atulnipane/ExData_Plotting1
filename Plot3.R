### Plot 3

expData <- read.table("household_power_consumption.txt",skip=66637,nrows=2880,sep = ";")
colnames(expData) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
expData$date_time <- dmy_hms(paste(expData$Date, expData$Time))

plot(expData$date_time,expData$Sub_metering_1, type="l", ylab = "Energy Sub Metering", xlab = "")
points(expData$date_time,expData$Sub_metering_2, type="l", col="red")
points(expData$date_time,expData$Sub_metering_3, type="l", col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=0.9, col = c("black","red","blue"), lty=1);
dev.copy(png, file = "plot3.png")
dev.off()