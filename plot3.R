powerData <- "./Data/household_power_consumption.txt"

data <- read.table(powerData, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")


febdata<-subset(data,data$Date=="1/2/2007" | data$Date=="2/2/2007")
ActivePower <- as.numeric(febdata$Global_active_power)
DateTime <- strptime(paste(febdata$Date, febdata$Time, sep=" "), format = "%d/%m/%Y %H:%M:%S") 

subMetering1 <- as.numeric(febdata$Sub_metering_1)

subMetering2 <- as.numeric(febdata$Sub_metering_2)

subMetering3 <- febdata$Sub_metering_3

png(filename = "plot3.png",width=480,height = 480)
plot(DateTime, subMetering1, type="l", ylab="Energy Submetering", xlab="")


lines(DateTime, subMetering2, type="l", col="red")

lines(DateTime, subMetering3, type="l", col="blue")

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2, col=c("black", "red", "blue"))
dev.off()

