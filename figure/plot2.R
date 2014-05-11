data <- read.table(file = "household_power_consumption.txt", 
                   +  sep = ";", 
                   +  skip = 66637,
                   +  nrows = 2880,col.names=c("Date","Time",
                   +  "Global_active_power","Global_reactive_power","Voltage",
                   +"Global_intesnisty","Sub_metering_1","Sub_metering_2",
                   +"Sub_metering_3"))
y <- strptime(paste(data$Date,data$Time),format="%d/%m/%Y %H:%M:%OS")
data<-cbind(data,y)

png(filename="plot2.png",width=480,height=480)
plot(y,data$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()

