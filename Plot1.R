#Plot 1
par(mfrow = c(1,1),mar = c(5,5,5,5))
hist(HPCs$Global_active_power, breaks = 20, col ="Red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
