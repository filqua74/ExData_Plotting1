# Load data
loaddata <- function() {
  cl <- c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
  dati <- read.table("./household_power_consumption.txt", sep=";", header=TRUE, colClasses=cl, na.strings="?")
  dati <- transform(dati, Date_C = strptime(paste(Date, Time),"%d/%m/%Y %H:%M:%S"))
  begin <- as.POSIXct(strptime("2007-02-01 00:00:00", "%Y-%m-%d %H:%M:%S"))
  end <- as.POSIXct(strptime("2007-02-02 23:59:59","%Y-%m-%d %H:%M:%S"))
  ind <- (dati[,"Date_C"] - begin) >= 0 & (dati[,"Date_C"] - end) <= 0
  dati <- dati[ind,]
  dati
}