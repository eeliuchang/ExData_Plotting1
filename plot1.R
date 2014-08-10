#setwd("~/Desktop/R Workspace/plot")
d <- read.table("household_power_consumption.txt", header = TRUE,sep = ";", na.strings = "?")
d$Date <- as.Date(strptime(d$Date,"%d/%m/%Y"))
df <- d[d$Date=="2007-02-01" | d$Date=="2007-02-02", ]

hist(df$Global_active_power,xlab="Gloval Active Power (kilowatts)", ylab="Frequency", main="Global Active Power",col="red")
dev.off()


