+Irvinedata <- "./data/household_power_consumption.txt"
+Irvinedata <- read.table(Irvinedata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
+subsetUC <- Irvinedata[Irvinedata$Date %in% c("1/2/2007","2/2/2007") ,]
+globalActivePower <- as.numeric(subsetUC$Global_active_power)
+png("plot1.png", width=480, height=480)
+hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
+dev.off()
