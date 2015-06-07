# Create plot1. Used by main.R that loads the data.
#

plot1 <- function() {
  par(mfrow = c(1,1))
  png("plot1.png", width=480, height=480, res=72)
  hist(dati$Global_active_power,col="red",xlab="Global Active Power (kilowatts)", main="Global Active Power")  
  dev.off()
}
