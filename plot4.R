plot3 <- function() {
        #Set working dir with data file:
        setwd("C:/Users/Jonas/Documents/R")
        #Character vector with names of variables:
        names <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
        #Read data for the two days:
        data <- read.csv("household_power_consumption.txt", sep=";", nrows = 2880, skip = 66636, col.names = names, na.strings = "?")
        
        #Character vector containing positions for day names:
        sted <- c(1, 1441,2881)
        
        #Open graphics device for writing to PNG-file:
        #png(file="plot2.png", width = 480, height = 480, units = "px")
        
        #Make a "canvas" for plotting four plots:
        par(mfrow=c(2,2))
        
        #Make plot #1 (previously called "Plot 2":
        plot(1:2880, data$Global_active_power, ylab="Global Active Power (kilowatts)", type="o", axes=FALSE, ann=FALSE, xlim=c(0,2881),pch = 26)
        sted <- c(1, 1441,2881)
        axis(1, at=sted, lab=c("Thu","Fri", "Sat"))
        axis(2, las=1, at=2*0:max(data$Global_active_power))
        box()
        title(ylab= "Global Active Power (kilowatts)")
        
        #Close graphics device for writing to PNG-file to save file:
        #dev.off()     
        
}