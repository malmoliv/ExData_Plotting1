## load clean data using loadData() at loadData.R

source("loadData.R")
d <- loadData() 

##prepare device for use
par(mfrow= c(1,1))

#plot

plot(d$NewDate, d$Sub_metering_1, type= "l", xlab= "", col= "black", ylab= "Energy sub metering") 

lines(d$NewDate, d$Sub_metering_2, col="red")

lines(d$NewDate, d$Sub_metering_3, col="blue")

legend("topright",
        c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
                col=c("black","blue","red"), lty=1, lwd=2)

#copy to image file
dev.copy(png,'plot3.png')
dev.off()