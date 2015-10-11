#plot1
myfile <- read.table("D:/data/new/household_power_consumption.txt", sep=";", header=TRUE,na.strings="?")
md <- myfile[myfile$Date %in% c("1/2/2007","2/2/2007") ,]
hist(md$Global_active_power,main="Global Active Power",col="red",xlab="Global Active Power(kilowatts)")
dev.copy(png, file = "plot1.png",width=480, height=480)
dev.off() 