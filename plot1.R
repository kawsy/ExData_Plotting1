readData <- function(fileName){
  read.table(
    "household_power_consumption.txt",
    na.strings="?"
    sep=";",
    colClasses=c(Date,numeric,numeri)
    )
}

fileConn <- file("household_power_consumption.txt")
open(fileConn)
i<- 0
while(i < 10){
  data <- scan(fileConn, n=1, nlines=1,sep=";",what="list",quiet=TRUE)[1]
  print(data)
  i <- i+1
}
close(fileConn)


fileConn <- file("household_power_consumption.txt")
open(fileConn)
data <- scan(fileConn, nlines=1,sep=";",what="list",quiet=TRUE)[1]
print(data)
data <- scan(fileConn, nlines=1,sep=";",what="list",quiet=TRUE)[1]
print(data)
data <- scan(fileConn, nlines=1,sep=";",what="list",quiet=TRUE)[1]
print(data)
data <- scan(fileConn, nlines=1,sep=";",what="list",quiet=TRUE)[1]
print(data)
close(fileConn)
