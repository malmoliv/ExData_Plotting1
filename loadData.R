## read data from file household_power_consumption.txt and prepare for use

data <- NULL

loadData <- function(){
        
        ## if data doesn't exists
        if (is.null(data)){
                datafile <- "./data/household_power_consumption.txt"
                data <- read.csv(datafile, sep=";",header=TRUE, na="?")
                
                ##only specified dates
                data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007" ,]
                
                ##create new date_time column
                data$NewDate <- strptime(paste(data$Date,data$Time, sep=" "),format="%d/%m/%Y %H:%M:%S")
        }
        
        data
        
}