########################################################################
# Plot1.R 
# Create histogram of how much active power is consumed
# per minute in kiloWatt. 
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

png(filename = "plot1.png", width = 480, height = 480, unit = "px")
par(bg=NA)
hist(dt$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()


