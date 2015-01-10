# Assume datafile exists in working directory
# f <- file("household_power_consumption - sample.txt")
f <- file("household_power_consumption.txt")

dt<- read.table(text = grep("^[1,2]/2/2007|Date", readLines(f), value = TRUE),
                sep=";", header = TRUE)
close(f)  #close connection create in readLines

# combine Date and Time into single column
dt$DateTime <- strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S") 

png(filename = "plot4.png", width = 480, height = 480, unit = "px")
par(mfrow = c(2,2))
with(dt, {
    
    plot(DateTime, Global_active_power,
       type = "l",
       xlab = "",
       ylab = "Global Active Power")
  
    plot(DateTime, Voltage, type="l", xlab="datetime", ylab="Voltage")
  
    plot(DateTime, Sub_metering_1,
          type = "l",
          xlab = "",
          ylab = "Energy sub metering",
          col = "black")
    lines(DateTime, Sub_metering_2, col = "red")
    lines(DateTime, Sub_metering_3, col = "blue")
    legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
          col = c("black","red","blue"), lty = 1, bty = "n")
    
    plot(DateTime, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_pwoer")
     })
dev.off()
