library("dplyr")
library("ggplot2")

# Setting work directory
setwd("~/Shikha/Coursera/Exploratory course4/week1 project")

head(data)
summary(data)

# Reading data for only 01/02/2007 and 01/02/2007
df <- read.table(text = grep("^[1,2]/2/2007", readLines("household_power_consumption.txt"), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)
head(df)

png("plot2.png", width= 480, height= 480)
dt <- strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(dt, as.numeric(df$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
