#plot 3
myfile <- read.table("D:/data/new/household_power_consumption.txt", sep=";", header=TRUE,na.strings="?")
md <- myfile[myfile$Date %in% c("1/2/2007","2/2/2007") ,]
dt <- strptime(paste(md$Date, md$Time), format="%d/%m/%Y %H:%M:%S")
plot(dt,md$Sub_metering_1,type="l",xlab="",ylab="Energy Submetering")
lines(dt,md$Sub_metering_2,type="l",col="red")
lines(dt,md$Sub_metering_3,type="l",col="blue")
legend("topright", col = c("black","red","blue"),c("Sub_metering_1 ","Sub_metering_2 ", "Sub_metering_3 "), lty=c(1.1),lwd=c(1,1))
dev.copy(png, file = "plot3.png",width=480, height=480)
dev.off() 