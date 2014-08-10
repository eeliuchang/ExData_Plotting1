setwd("~/Desktop/R Workspace/plot")
d <- read.table("household_power_consumption.txt", header = TRUE,sep = ";", na.strings = "?")
d$Date <- as.Date(strptime(d$Date,"%d/%m/%Y"))
df <- d[d$Date=="2007-02-01" | d$Date=="2007-02-02", ]

png('plot2.png',width = 480, height = 480,units = "px")
plot(df$Global_active_power,type="l",xlab="",ylab="Gloval Active Power (kilowatts)",xaxt='n')
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
dev.off()
