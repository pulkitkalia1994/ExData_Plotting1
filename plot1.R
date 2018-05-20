plot1<-function(){
  plot1<-read.csv.sql(".\\power\\household_power_consumption.txt",sep = ";",sql = "select * from file where Date IN ('1/2/2007','2/2/2007')")
  png(filename = "plot1.png",height = 480, width = 480, units = "px")
  hist(plot1$Global_active_power,xlab = "Global Active Power (kilowatts)", col="red", main="Global Active Power")
  dev.off()
}