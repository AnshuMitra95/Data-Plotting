myfile<-"d://Data Science//household_power_consumption.txt"
consume<-read.table(myfile,header = TRUE,sep = ";",dec = ".",na.strings = "?")
consume_filter<-consume[66638:69517,]
png(filename = "plot1.png",width=480,height = 480)
histogram<-hist(consume_filter$Global_active_power,col = "red",xlab = "Gobal Active Power(kilowatts)", main="Gobal Active Power")
dev.off()