plot3<-function(){
  plot3<-read.csv.sql(".\\power\\household_power_consumption.txt",sep = ";",sql = "select * from file where Date IN ('1/2/2007','2/2/2007')")
  dateTime<-paste(plot3$Date,plot3$Time)
  dateTime<-strptime(dateTime,format = "%d/%m/%Y %H:%M:%S")
  png("plot3.png", height = 480, width = 480, units = "px")
  plot(dateTime,plot3$Sub_metering_1,type = "n", xlab=" ",ylab="Energy sub metering")
  lines(dateTime,plot3$Sub_metering_1)
  lines(dateTime,plot3$Sub_metering_2,col="red")
  lines(dateTime,plot3$Sub_metering_3,col="blue")
  legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1))
  dev.off()
}