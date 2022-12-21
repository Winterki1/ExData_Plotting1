# Check if data directory exists and file has already been unzipped, otherwise create directory, download and unzip 
if(!file.exists("data")) {
  dir.create("data")
}
if(!file.exists("household_power_consumption.txt")){
  fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileURL,"./data/temp.zip")
  unzip("./data/temp.zip") # will unzip to working directory
}

#Read table, create datetime column and change Date column to date format 
data <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",nrows=2075259,colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
data$datetime <- strptime(paste(data$Date,data$Time),format="%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date,format="%d/%m/%Y")

#Subset the two relevant dates in the data set
data1 <-subset(data,Date=="2007-02-01"|Date=="2007-02-02")

#Create plot1 and copy to png file
hist(data1$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")
dev.copy(png,file="plot1.png")
dev.off()

