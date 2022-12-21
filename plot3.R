#Source plot1 file to avoid having to re-read and subset the dataset
source("plot1.R")

#Create plot3 directly to png
png(file="plot3.png")
with(data1,plot(datetime,Sub_metering_1,type="l",col="black",xlab="",ylab="Energy sub metering"))
with(data1,points(datetime,Sub_metering_2,type="l",col="red"))
with(data1,points(datetime,Sub_metering_3,type="l",col="blue"))
legend("topright",lty="solid",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()