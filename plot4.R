data <- read.table(file = "household_power_consumption.txt", 
                   +  sep = ";", 
                   +  skip = 66637,
                   +  nrows = 2880,col.names=c("Date","Time",
                                               +  "Global_active_power","Global_reactive_power","Voltage",
                                               +"Global_intesnisty","Sub_metering_1","Sub_metering_2",
                                               +"Sub_metering_3"))
y <- strptime(paste(data$Date,data$Time),format="%d/%m/%Y %H:%M:%OS")
data<-cbind(data,y)
png(filename="plot4.png",width=480,height=480)
par(mfrow = c(2, 2), cex=0.65)

plot(y,data$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
plot(y,data$Voltage,type="l",ylab="Voltage",xlab="datetime")
plot(c(min(y),max(y)),c(0,40),type="n",xlab="",ylab="Energy sub metering")
lines(y,data$Sub_metering_1,type="l")
lines(y,data$Sub_metering_2,type="l",col="red")
lines(y,data$Sub_metering_3,type="l",col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=
                 +            +c(1,1,1),lwd=c(2.5,2.5),col=c("black","red","blue"))
plot(y,data$Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="datetime")

dev.off()

