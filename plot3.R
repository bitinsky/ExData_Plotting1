########################################################################
# Plot3.R 
# Create plot of daily active power consumption, by sub-meter, per minute.
# 
# Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). 
#         It corresponds to the kitchen, containing mainly a dishwasher, 
#         an oven and a microwave (hot plates are not electric but gas powered).
# Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). 
#         It corresponds to the laundry room, containing a washing-machine, 
#         a tumble-drier, a refrigerator and a light.
# Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). 
#         It corresponds to an electric water-heater and an air-conditioner.
# Kevin Bitinsky

ifelse(!dir.exists(file.path("data")), dir.create(file.path("data")), "Directory already exists")

url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
destfile <- "./data/Dataset.zip" 

if (!file.exists(destfile)) {
        download.file(url ,destfile,method="auto") 
        unzip(destfile,exdir="./data")
}

file <- file("./data/household_power_consumption.txt")
dt<- read.table(text = grep("^[1,2]/2/2007|Date", readLines(file), value = TRUE),
                sep=";", header = TRUE)
close(file)  #close connection created in readLines

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
