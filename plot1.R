data <- read.table(file = "household_power_consumption.txt", 
                   +  sep = ";", 
                   +  skip = 66637,
                   +  nrows = 2880,col.names=c("Date","Time",
                   +  "Global_active_power","Global_reactive_power","Voltage",
                   +"Global_intesnisty","Sub_metering_1","Sub_metering_2",
                   +"Sub_metering_3"))
png(filename="plot1.png",width=480,height=480)
with(data,hist(data$Global_active_power,col="red",main="Global Active Power",xlab="Global Active
               + Power (kilowatts)")) 
dev.off()

