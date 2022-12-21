#Source plot1 file to avoid having to re-read and subset the dataset
source("plot1.R")

#Create plot2 and copy to png file
with(data1,plot(datetime,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)"))
dev.copy(png,file="plot2.png")
dev.off()