##plot3.R
datafile="household_power_consumption.txt"
data=read.table(datafile,sep=";",header=TRUE,stringsAsFactors=FALSE,dec=".")
#head(data)
subdata=data[data$Date %in% c("1/2/2007","2/2/2007"),]

x=strptime(paste(subdata$Date,subdata$Time,sep=""),"%d/%m/%Y %H:%M:%S")
y1=as.numeric(subdata$Sub_metering_1)
y2=as.numeric(subdata$Sub_metering_2)
y3=as.numeric(subdata$Sub_metering_3)

png(file="plot3.png")
plot(x,y1,xlab="",ylab="Energy sub metering",type="l")
points(x,y2,type="l",col="red")
points(x,y3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
dev.off()