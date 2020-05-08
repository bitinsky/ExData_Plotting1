########################################################################
# Plot2.R 
# Create plot of daily active power consumption, per minute.
# 
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

png(filename = "plot2.png", width = 480, height = 480, unit = "px")
plot(dt$DateTime, dt$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()
