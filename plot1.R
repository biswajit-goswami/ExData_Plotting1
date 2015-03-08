d <- read.csv(file="household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE,na.strings="?")
d_limited=d[(d$Date=="1/2/2007"|d$Date=="2/2/2007"),]
hist((as.numeric(d_limited$Global_active_power)),main="Global Active Power",col="red",xlab="Global Active Power (kilowatts)")
dev.copy(png,file="plot1.png",height=480,width=480)
dev.off()