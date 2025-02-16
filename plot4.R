png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))  # 2x2 grid layout

# Plot 1
plot(filtered_data$DateTime, filtered_data$Global_active_power, type="l", xlab="", ylab="Global Active Power")

# Plot 2
plot(filtered_data$DateTime, filtered_data$Voltage, type="l", xlab="datetime", ylab="Voltage")

# Plot 3
plot(filtered_data$DateTime, filtered_data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(filtered_data$DateTime, filtered_data$Sub_metering_2, col="red")
lines(filtered_data$DateTime, filtered_data$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, bty="n")

# Plot 4
plot(filtered_data$DateTime, filtered_data$Global_reactive_power, type="l", xlab="datetime", ylab="Global Reactive Power")

dev.off()
