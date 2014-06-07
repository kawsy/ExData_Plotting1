library(sqldf)

data <- read.csv.sql("household_power_consumption.txt",
                     "select * from file where Date in ('2/2/2007', '1/2/2007')", 
                     sep=";")

data <- cbind(dateTime = strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S"),data)

png(file="plot4.png", width=480, height=480)
par(mfrow=c(2,2))
with(data,{
    plot(Global_active_power ~ dateTime, type="l",
         xlab="", ylab="Global Active Power")
    plot(Voltage ~ dateTime, type="l")
    
    plot(Sub_metering_1 ~ dateTime,type="l", xlab="", ylab="Energy sub metering", )
    points(Sub_metering_2 ~ dateTime,type="l",col="red")
    points(Sub_metering_3 ~ dateTime,type="l",col="blue")
    legend("topright", bty="n", lty="solid", col=c("black","red","blue"),
           legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    
    plot(Global_reactive_power ~ dateTime, type="l")
})
dev.off()