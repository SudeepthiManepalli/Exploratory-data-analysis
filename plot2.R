obj<-read.table("./data_dscience/household_power_consumption.txt",header =  TRUE,sep = ";");
#obj$Date<-as.Date(obj$Date, "%d/%m/%Y")
obj1<-subset(obj,Date %in% c("1/2/2007","2/2/2007"));
obj1$Global_active_power<-as.numeric(obj1$Global_active_power);

datetime<-paste(as.Date(obj1$Date, "%d/%m/%Y"),obj1$Time);
obj1$Datetime<-as.POSIXct(datetime);
png(filename = "plot2.png",width = 480,height = 480);
with(obj1,plot(Global_active_power~Datetime,type = "l",ylab = "Global Active Power (kilowatts)",xlab=""));
dev.off();