library(sqldf)

data <- read.csv.sql("household_power_consumption.txt",
                     "select * from file where Date in ('2/2/2007', '1/2/2007')", 
                     sep=";")

data <- cbind(dateTime = strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S"),data)

png(file="plot2.png", width=480, height=480)
with(data, plot(dateTime, Global_active_power, type="l",
                xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()