d <- read.csv(file="household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE,na.strings="?")
d_limited=d[(d$Date=="1/2/2007"|d$Date=="2/2/2007"),]
d_limited$CombinedDtTime=strptime(paste(d_limited$Date,d_limited$Time),"%d/%m/%Y %H:%M:%S")
plot(d_limited$CombinedDtTime,d_limited$Sub_metering_1,type="l",ylab="Global Active Power(kilowatts)",xlab="")
lines(d_limited$CombinedDtTime,d_limited$Sub_metering_2,type="l",col="red")
lines(d_limited$CombinedDtTime,d_limited$Sub_metering_3,type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1, col=c('black', 'red', 'blue'),bty='o', cex=.75)
dev.copy(png,file="plot3.png",height=480,width=480)
dev.off()