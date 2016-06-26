#Plot 2
par(mar = c(3,3,3,3))
plot(data = HPCs, x = HPCs$datetime, y = HPCs$Global_active_power,type = "n",main = "Global Active Power",xlab = "", ylab = "Global Active Power (kilowatts)")
lines(HPCs$datetime,HPCs$Global_active_power)
