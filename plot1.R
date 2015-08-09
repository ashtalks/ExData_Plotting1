file <- "C:/Users/Ash/Coursera-R/Course3/Project1/household_power_consumption.txt"
myData <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetmyData <- myData[myData$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetmyData)
globalActivePower <- as.numeric(subSetmyData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()