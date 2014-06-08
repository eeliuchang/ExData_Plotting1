setwd("~/Desktop/R Workspace/plot")
d <- read.table("household_power_consumption.txt", header = TRUE,sep = ";", na.strings = "?")
df <- d[as.Date(strptime(d$Date,"%d/%m/%Y"))=="2007-02-01" | as.Date(strptime(d$Date,"%d/%m/%Y"))=="2007-02-02", ]
hist(df$Global_active_power)
dev.copy(png,'plot1.png')
dev.off()
