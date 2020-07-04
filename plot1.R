obj<-read.table("./data_dscience/household_power_consumption.txt",header =  TRUE,sep = ";");
#obj$Date<-as.Date(obj$Date, "%d/%m/%Y")
obj1<-subset(obj,Date %in% c("1/2/2007","2/2/2007"));
obj1$Global_active_power<-as.numeric(obj1$Global_active_power);
png(filename = "plot1.png",width = 480,height = 480);
hist(obj1$Global_active_power,col = "red",xlab = "Global Active Power (kilowatts)",ylab = "Frequency",main = "Global Active Power");
dev.off();
