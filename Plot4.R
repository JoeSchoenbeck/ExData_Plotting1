#Plot 4 - 4 Plots on the same page
par(mfrow = c(2,2))
#First Plot in Upper Left
plot(x = HPCs$datetime, y = HPCs$Global_active_power,type = "n",xlab = "", ylab = "Global Active Power")
lines(HPCs$datetime,HPCs$Global_active_power)
#Second Plot of Voltage
plot(x = HPCs$datetime, y = HPCs$Voltage, type= "n",xlab = "datetime", ylab = "Voltage")
lines(HPCs$datetime,HPCs$Voltage)
#Third Plot Stacked Below - Sub Metering
plot(x = HPCs$datetime, y = HPCs$Sub_metering_1,type = "l", xlab = "", ylab = "Sub Metering", ylim = c(0,40))
lines(HPCs$datetime, HPCs$Sub_metering_2, col = "red")
lines(HPCs$datetime, HPCs$Sub_metering_3, col = "blue")
legend("topright", c("1","2","3"),lty = c(1,1,1), col = c("black","red","blue"))
#Fourth Plot of Reactive Power like the Active Power Line Chart
plot(x = HPCs$datetime, y = HPCs$Global_reactive_power,type = "n",xlab = "datetime", ylab = "Global Reactive Power")
lines(HPCs$datetime,HPCs$Global_reactive_power)