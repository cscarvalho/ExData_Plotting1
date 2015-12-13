##plot1.R
datafile="household_power_consumption.txt"
data=read.table(datafile,sep=";",header=TRUE,stringsAsFactors=FALSE,dec=".")
#head(data)
subdata=data[data$Date %in% c("1/2/2007","2/2/2007"),]

x=as.numeric(subdata$Global_active_power)
png(file="plot1.png")
hist(x,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
dev.off()