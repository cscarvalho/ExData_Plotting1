##plot4.R
datafile="household_power_consumption.txt"
data=read.table(datafile,sep=";",header=TRUE,stringsAsFactors=FALSE,dec=".")
#head(data)
subdata=data[data$Date %in% c("1/2/2007","2/2/2007"),]

x=strptime(paste(subdata$Date,subdata$Time,sep=""),"%d/%m/%Y %H:%M:%S")

png(file="plot4.png")
par(mfrow=c(2,2))
##
y=as.numeric(subdata$Global_active_power)
plot(x,y,type="l",xlab="",ylab="Global Active Power (kilowatts)")
##
y=as.numeric(subdata$Voltage)
plot(x,y,type="l",xlab="datetime",ylab="Voltage")
##
y1=as.numeric(subdata$Sub_metering_1)
y2=as.numeric(subdata$Sub_metering_2)
y3=as.numeric(subdata$Sub_metering_3)
plot(x,y1,xlab="",ylab="Energy sub metering",type="l")
points(x,y2,type="l",col="red")
points(x,y3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,bty="n")
##
y=as.numeric(subdata$Global_reactive_power)
plot(x,y,type="l",xlab="datetime",ylab="Global_reactive_power")
dev.off()

#par(mfrow=c(1,1))