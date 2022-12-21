#Source plot1 file to avoid having to re-read and subset the dataset
source("plot1.R")

#Create plot4 directly to png
png(file="plot4.png")
par(mfrow=c(2,2),mar=c(5.1,4.1,3.5,1.5))
with(data1, {
  plot(datetime,Global_active_power,type="l",xlab="",ylab="Global Active Power")
  plot(datetime,Voltage,type="l",xlab="datetime",ylab="Voltage")
  plot(datetime,Sub_metering_1,type="l",col="black",xlab="",ylab="Energy sub metering")
  points(datetime,Sub_metering_2,type="l",col="red")
  points(datetime,Sub_metering_3,type="l",col="blue")
  legend("topright",lty="solid",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n")
  plot(datetime,Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
}
)
dev.off()