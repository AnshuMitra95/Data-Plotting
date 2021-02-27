library(lubridate)
myfile<-"d://Data Science//household_power_consumption.txt"
consume<-read.table(myfile,header = TRUE,sep = ";",dec = ".",na.strings = "?")
consume_filter<-consume[66638:69517,]
png(filename = "plot4.png",width=480,height = 480)
given_date<-dmy(consume_filter$Date)
given_time<-hms(consume_filter$Time)
add_date_time<-given_date+given_time
p<-par(mfrow=c(2,2),mar=c(4,4,2,1))
plot(consume_filter$Global_active_power~add_date_time,type="l",col="black",xlab="",ylab="Gobal Active Power(kilowatts)")
plot(consume_filter$Voltage~add_date_time,type="l",col="black",xlab="datetime",ylab="Voltage")
plot(consume_filter$Sub_metering_1 ~add_date_time,type="l",col="black",xlab="",ylab="Energy sub metering")
points(consume_filter$Sub_metering_2~add_date_time,type="l",col="red")
points(consume_filter$Sub_metering_3~add_date_time,type="l",col="blue")
legend("topright", lty = 1,bty="n", col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(consume_filter$Global_reactive_power~add_date_time,type="l",col="black",xlab="datetime",ylab="Gobal_reactive_power")
dev.off()