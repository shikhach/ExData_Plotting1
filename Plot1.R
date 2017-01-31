library("dplyr")
library("ggplot2")

# Setting work directory
setwd("~/Shikha/Coursera/Exploratory course4/week1 project")

head(data)
summary(data)

#First way to subset data
#data <- read.csv("household_power_consumption.txt", sep = ";")
#df1 <- data[data$Date %in% c(01/02/2007,02/02/2007) , ]

# Second way to subset data, directly reading data for only 01/02/2007 and 01/02/2007
df <- read.table(text = grep("^[1,2]/2/2007", readLines("household_power_consumption.txt"), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)
head(df)

png("plot1.png", width= 480, height= 480)
plot1<- hist(df$Global_active_power, main="Global Active Power",xlab="Global Active Power (Killowatts)", ylab= "Frequency", col= "red")
dev.off()
