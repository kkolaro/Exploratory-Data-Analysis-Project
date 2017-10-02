powerData <- "./Data/household_power_consumption.txt"

data <- read.table(powerData, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")


febdata<-subset(data,data$Date=="1/2/2007" | data$Date=="2/2/2007")
ActivePower <- as.numeric(febdata$Global_active_power)
DateTime <- strptime(paste(febdata$Date, febdata$Time, sep=" "), format = "%d/%m/%Y %H:%M:%S") 

png(filename = "plot2.png",width=480,height = 480)
plot(DateTime,ActivePower, type="l", xlab="",ylab="Global Active Power (kilowatts)")
dev.off()

