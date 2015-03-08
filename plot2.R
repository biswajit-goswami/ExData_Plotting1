d <- read.csv(file="household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE,na.strings="?")
d_limited=d[(d$Date=="1/2/2007"|d$Date=="2/2/2007"),]
d_limited$CombinedDtTime=strptime(paste(d_limited$Date,d_limited$Time),"%d/%m/%Y %H:%M:%S")
plot(d_limited$CombinedDtTime,d_limited$Global_active_power,type = "l",ylab="Global Active Power(kilowatts)",xlab="")
dev.copy(png,file="plot2.png",height=480,width=480)
dev.off()



