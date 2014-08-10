plot1 <- function() {
        #Set working dir with data file:
        setwd("C:/Users/Jonas/Documents/R")
        #Character vector with names of variables:
        names <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
        #Read data for the two days:
        data <- read.csv("household_power_consumption.txt", sep=";", nrows = 2880, skip = 66636, col.names = names, na.strings = "?")##data <- read.csv("household_power_consumption.txt", sep=";", colClasses = "character", nrows = 4600, skip = 66500, col.names = names)        
        #Open graphics device for writing to PNG-file:
        png(file="plot1.png", width = 480, height = 480, units = "px")
        #Plot histogram:
        hist(data$Global_active_power, col ="red", main = "Global Active Power", xlab="Global Active Power (kilowatts)")
        #Close graphics device for writing to PNG-file to save file:
        dev.off()
}