1.dataFile <- "exp.txt"
2.data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
3.subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

  4.#str(subSetData)
  5.globalActivePower <- as.numeric(subSetData$Global_active_power)
  6.png("plot1.png", width=480, height=480)
  7.hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
  8.dev.off()
