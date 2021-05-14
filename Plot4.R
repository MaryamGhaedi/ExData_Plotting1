hpc <- read.table("./household_power_consumption.txt", sep = ";")
hpc_dates <- as.character(hpc[,"V1"]) == "1/2/2007" | as.character(hpc[,"V1"]) == "2/2/2007"
hpc_dates_data <- hpc[hpc_dates,]

dev.off()# if you have used a different par specification for plotting 
par(mfrow = c(2, 2))
plot(time, as.numeric(paste(hpc_dates_data[, "V3"])), type = "l", xlab = " ",
     ylab = "Global Active Power")

plot(time, as.numeric(paste(hpc_dates_data[, "V5"])), type = "l", xlab = "datetime",
     ylab = "Voltage")

plot(time, as.numeric(paste(hpc_dates_data[,"V7"])), type = "n", xlab = " ", ylab = "Energy sub metering")
points(time, as.numeric(paste(hpc_dates_data[,"V7"])), type = "l")
points(time, as.numeric(paste(hpc_dates_data[,"V8"])), type = "l", col = "red")
points(time, as.numeric(paste(hpc_dates_data[,"V9"])), type = "l", col = "blue")
legend("topright", pch = "_", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(time, as.numeric(paste(hpc_dates_data[, "V4"])), type = "l", xlab = "datetime",
     ylab = "Global_reactive_power")
