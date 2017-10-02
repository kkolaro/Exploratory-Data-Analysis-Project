powerData <- "./Data/household_power_consumption.txt"

data <- read.table(powerData, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")


febdata<-subset(data,data$Date=="1/2/2007" | data$Date=="2/2/2007")
ActivePower <- as.numeric(febdata$Global_active_power)

png(filename = "plot1.png",width=480,height = 480)

hist(ActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()

