#Read in the household power consumption table then create a new variable from Date and Time
library(dplyr)
setwd("C:/Users/joesc/OneDrive/Documents/OnlineCourses/Rprog/exdata")
HPC <- read.table("household_power_consumption.txt", sep =";", header = TRUE) #HPC = Household Power Consumption
datetime <- paste(HPC$Date, HPC$Time) # Paste together as Factors.  When a Date, it's harder to paste them
datetime <- as.POSIXct(strptime(datetime, "%d/%m/%Y %H:%M:%S")) #Date is in the format d/m/Y with Y meaning 4 digit Year
HPC <- cbind(HPC,datetime) # datetime to the data frame HPC
#Subset the datetime for only the two days we need using the time also
HPCs <- subset(HPC, HPC$datetime >= "2007-02-01 00:00:01" & HPC$datetime <= "2007-02-02 23:59:59")
#Create Numeric (double) variables to chart.   as.numeric == as.double
HPCs$Global_active_power <- as.double(HPCs$Global_active_power)
HPCs$Global_reactive_power <- as.double(HPCs$Global_reactive_power)
HPCs$Voltage <- as.double(HPCs$Voltage)
HPCs$Global_intensity <- as.double(HPCs$Global_intensity)
HPCs$Sub_metering_1 <- as.double(HPCs$Sub_metering_1)
HPCs$Sub_metering_2 <- as.double(HPCs$Sub_metering_2)
HPCs$Sub_metering_3 <- as.double(HPCs$Sub_metering_3)
# free up some memory
rm(datetime)  
rm(HPC)
str(HPCs)