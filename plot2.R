library(lubridate)
myfile<-"d://Data Science//household_power_consumption.txt"
consume<-read.table(myfile,header = TRUE,sep = ";",dec = ".",na.strings = "?")
consume_filter<-consume[66638:69517,]
png(filename = "plot2.png",width=480,height = 480)
given_date<-dmy(consume_filter$Date)
given_time<-hms(consume_filter$Time)
add_date_time<-given_date+given_time
plot(consume_filter$Global_active_power~add_date_time,type="l",col="black",xlab="",ylab="Gobal Active Power(kilowatts)")
dev.off()