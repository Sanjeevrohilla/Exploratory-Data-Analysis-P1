 1. dataFile <- "exp.txt"
  2.data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
  3.subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
  
    4.#str(subSetData)
    5.datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
    6.globalActivePower <- as.numeric(subSetData$Global_active_power)
    7.png("plot2.png", width=480, height=480)
    8.plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
    9.dev.off()
