plot2<-function(){
  plot2<-read.csv.sql(".\\power\\household_power_consumption.txt",sep = ";",sql = "select * from file where Date IN ('1/2/2007','2/2/2007')")
  dateTime<-paste(plot2$Date,plot2$Time)
  dateTime<-strptime(dateTime,format = "%d/%m/%Y %H:%M:%S")
  png("plot2.png", height = 480, width = 480, units = "px")
  plot(dateTime,plot2$Global_active_power,type = "n", ylab="Global Active Power (kilowatts)", xlab = "")
  lines(dateTime,plot2$Global_active_power)
  dev.off()
}