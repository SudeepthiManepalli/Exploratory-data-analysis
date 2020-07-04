obj<-read.table("./data_dscience/household_power_consumption.txt",header =  TRUE,sep = ";");

obj1<-subset(obj,Date %in% c("1/2/2007","2/2/2007"));
obj1$Global_active_power<-as.numeric(obj1$Global_active_power);

datetime<-paste(as.Date(obj1$Date, "%d/%m/%Y"),obj1$Time);
obj1$Datetime<-as.POSIXct(datetime);
png(filename = "plot3.png",width = 480,height = 480);
plot(obj1$Datetime,obj1$Sub_metering_1,col = "black",type = "l",ylab = "Energy sub metering",xlab = "");
lines(obj1$Datetime,obj1$Sub_metering_2,col = "red");
lines(obj1$Datetime,obj1$Sub_metering_3,col = "blue");
legend("topright",col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1,lwd = 2);
dev.off();