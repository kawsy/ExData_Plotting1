library(sqldf)

data <- read.csv.sql("household_power_consumption.txt",
                     "select * from file where Date in ('2/2/2007', '1/2/2007')", 
                     sep=";")

data <- cbind(dateTime = strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S"),data)

png(file="plot3.png", width=480, height=480)
with(data,{
    plot(Sub_metering_1 ~ dateTime, type="l", xlab="", ylab="Energy sub metering", )
    points(Sub_metering_2 ~ dateTime,type="l",col="red")
    points(Sub_metering_3 ~ dateTime,type="l",col="blue")
    legend("topright", lty="solid", col=c("black","red","blue"),
           legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
})
dev.off()
