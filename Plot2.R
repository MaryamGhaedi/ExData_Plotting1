hpc <- read.table("./household_power_consumption.txt", sep = ";")
hpc_dates <- as.character(hpc[,"V1"]) == "1/2/2007" | as.character(hpc[,"V1"]) == "2/2/2007"
hpc_dates_data <- hpc[hpc_dates,]

library(lubridate)
dt <- data.frame(hpc_dates_data[,"V1"], hpc_dates_data[,"V2"]) 
dt$newcol <- paste(dt$hpc_dates_data....V1.., dt$hpc_dates_data....V2.., sep="_")

time <- strptime(dt$newcol, "%d/%m/%Y_%H:%M:%S")
plot(time, as.numeric(paste(hpc_dates_data[, "V3"])), type = "l", xlab = " ",
     ylab = "Global Active Power (kilowatts)")