# Create plot3. Used by main.R that loads the data.
#

plot3 <- function() {
  png("plot3.png", width=480, height=480, res=72)
  with(dati, {
    plot(dati$Date_C,dati$Sub_metering_1,type="n", ylab="Energy sub metering",xlab="")
    lines(dati$Date_C,dati$Sub_metering_1)
    lines(dati$Date_C,dati$Sub_metering_2,col="red")
    lines(dati$Date_C,dati$Sub_metering_3,col="blue")
    legend("topright", lty=c(1,1), col = c("black","blue", "red"), 
           legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
           bty="y")
    }
  )
  dev.off()
}