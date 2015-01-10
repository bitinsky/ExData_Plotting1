# Assume datafile exists in working directory
# f <- file("household_power_consumption - sample.txt")
f <- file("household_power_consumption.txt")

dt<- read.table(text = grep("^[1,2]/2/2007|Date", readLines(f), value = TRUE),
                sep=";", header = TRUE)
close(f)  #close connection create in readLines

# combine Date and Time into single column
dt$DateTime <- strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S") 

png(filename = "plot3.png", width = 480, height = 480, unit = "px")
plot(dt$DateTime, dt$Sub_metering_1,
     type = "l",
     xlab = "",
     ylab = "Energy sub metering",
     col = "black")
lines(dt$DateTime, dt$Sub_metering_2, col = "red")
lines(dt$DateTime, dt$Sub_metering_3, col = "blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col = c("black","red","blue"), lty = 1)
dev.off()
