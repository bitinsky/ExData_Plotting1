# Assume datafile exists in working directory
# f <- file("household_power_consumption - sample.txt")
f <- file("household_power_consumption.txt")

dt<- read.table(text = grep("^[1,2]/2/2007|Date", readLines(f), value = TRUE),
                sep=";", header = TRUE)
close(f)  #close connection create in readLines

png(filename = "plot1.png", width = 480, height = 480, unit = "px")
hist(dt$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()


