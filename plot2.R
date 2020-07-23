## load clean data using loadData() at loadData.R

source("loadData.R")
d <- loadData() 

##prepare device for use
par(mfrow= c(1,1))

#plot
plot(d$NewDate, d$Global_active_power, type= "l", xlab= "", ylab= "Global Power (kilowatts)") 

#copy to image file
dev.copy(png,'plot2.png')
dev.off()