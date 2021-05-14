hpc <- read.table("./household_power_consumption.txt", sep = ";")
hpc_dates <- as.character(hpc[,"V1"]) == "1/2/2007" | as.character(hpc[,"V1"]) == "2/2/2007"
hpc_dates_data <- hpc[hpc_dates,]

# plot 1
hist(as.numeric(paste(hpc_dates_data[,"V3"])), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)"
     , ylab = "Frequency")