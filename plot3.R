setwd("~/Desktop/R Workspace/plot")
d <- read.table("household_power_consumption.txt", header = TRUE,sep = ";", na.strings = "?")
d$Date <- as.Date(strptime(d$Date,"%d/%m/%Y"))
df <- d[d$Date=="2007-02-01" | d$Date=="2007-02-02", ]

png('plot3.png',width = 480, height = 480,units = "px")
with(df,plot(Sub_metering_1,col="black",type="l",xaxt="n",xlab="",ylab="Energy sub metering"))
points(df$Sub_metering_2,col="red",type="l",xaxt="n",xlab="")
points(df$Sub_metering_3,col="blue",type="l",xaxt="n",xlab="")
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
legend("topright",lty=c(1,1,1),col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

