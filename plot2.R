##plot2.R
datafile="household_power_consumption.txt"
data=read.table(datafile,sep=";",header=TRUE,stringsAsFactors=FALSE,dec=".")
#head(data)
subdata=data[data$Date %in% c("1/2/2007","2/2/2007"),]

x=strptime(paste(subdata$Date,subdata$Time,sep=""),"%d/%m/%Y %H:%M:%S")
y=as.numeric(subdata$Global_active_power)

png(file="plot2.png")
plot(x,y,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()