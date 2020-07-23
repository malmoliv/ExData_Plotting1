## load clean data using loadData() at loadData.R

source("loadData.R")
d <- loadData() 

##prepare device for use, using 4 plots
par(mfrow= c(2,2))

#plot 1
plot(d$NewDate, d$Global_active_power, type= "l", xlab= "", ylab= "Global Active Power") 

#plot 2
plot(d$NewDate, d$Voltage, type= "l", xlab= "datetime", ylab= "Voltage") 

#plot 3
plot(d$NewDate, d$Sub_metering_1, type= "l", xlab= "", col= "black", ylab= "Energy sub metering") 

lines(d$NewDate, d$Sub_metering_2, col="red")

lines(d$NewDate, d$Sub_metering_3, col="blue")

legend("topright",
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","blue","red"), lty=1, lwd=1, cex=0.3, yjust=0, y.intersp=0.5)

#plot 4
plot(d$NewDate, d$Global_reactive_power, type= "l", xlab= "datetime", ylab= "Global Reactive Power") 


#copy to image file
dev.copy(png,'plot4.png')
dev.off()