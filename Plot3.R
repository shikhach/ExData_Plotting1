library("dplyr")
library("ggplot2")

# Setting work directory
setwd("~/Shikha/Coursera/Exploratory course4/week1 project")

head(data)
summary(data)

# Reading data for only 01/02/2007 and 01/02/2007
df <- read.table(text = grep("^[1,2]/2/2007", readLines("household_power_consumption.txt"), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)
head(df)

png("plot3.png", width= 480, height= 480)

plot(dt, as.numeric(df$Sub_metering_1), type="l", xlab="", ylab="Energy Sub metering")
lines(dt, as.numeric(df$Sub_metering_2), type="l", col="red")
lines(dt, as.numeric(df$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),  lwd=2.5, col=c("black", "red", "blue"), bty="o")

dev.off()


