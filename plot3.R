#PLOT3
        #Set working dir with data file:
        setwd("C:/Users/Jonas/Documents/R")
        #Character vector with names of variables:
        names <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
        #Read data for the two days:
        data <- read.csv("household_power_consumption.txt", sep=";", nrows = 2880, skip = 66636, col.names = names, na.strings = "?")
        
        #Character vector containing positions for day names:
        sted <- c(1, 1441,2881)
        
        #Open graphics device for writing to PNG-file:
        png(file="plot3.png", width = 480, height = 480, units = "px")
         
        #Get maximum y-value
        max_y <- max(data$Sub_metering_1, data$Sub_metering_2, data$Sub_metering_3)
        
        # Graph the submeter data:
        plot(data$Sub_metering_1, type="o", col = "black", ylim=c(0,max_y), axes=FALSE, ann=FALSE, pch=26)
        lines(data$Sub_metering_2,, type="o", pch=26, col="red")
        lines(data$Sub_metering_3,, type="o", pch=26, col="blue")
        axis(1, at=sted, lab=c("Thu","Fri", "Sat"))
        axis(2, las=0, at=10*0:max_y)
        box()
        title(ylab= "Energy sub metering") 
        legendnames <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
        legendcol <- c("black", "red", "blue")
        legend(x ="topright", max_y, legendnames, col=legendcol, pch=26, lty=1)
        
        #Close graphics device for writing to PNG-file to save file:
        dev.off()     
        
