
## load clean data using loadData() at loadData.R

source("loadData.R")
d <- loadData() 

##prepare device for use
par(mfrow= c(1,1))
        
##plot
hist(d$Global_active_power, main="Global Active Power",
             xlab="Global Active Power (kilowatts)",
             col="red")



##copy to image file
dev.copy(png,'plot1.png')
dev.off()
        
        
