#plot2
myfile <- read.table("D:/data/new/household_power_consumption.txt", sep=";", header=TRUE,na.strings="?")
md <- myfile[myfile$Date %in% c("1/2/2007","2/2/2007") ,]
dt <- strptime(paste(md$Date, md$Time), format="%d/%m/%Y %H:%M:%S")
plot(dt,md$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png",width=480, height=480)
dev.off()