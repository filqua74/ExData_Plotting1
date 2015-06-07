# Create plot2. Used by main.R that loads the data.
#

plot2 <- function(lab="Global Active Power (kilowatts)") { 
  png("plot2.png", width=480, height=480, res=72)
  plot(dati$Date_C,dati$Global_active_power,type="n", ylab=lab,xlab="")
  lines(dati$Date_C,dati$Global_active_power)
  dev.off()
}