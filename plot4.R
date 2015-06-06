plot4 <- function() {
  png("plot4.png", width=480, height=480, res=72)
  par(mfrow = c(2, 2), cex.lab = 1, cex.axis = 1, oma = c(0,0,0,0), mar = c(4,4,1,1))
  #
  plot(dati$Date_C,dati$Global_active_power,type="n", ylab="",xlab="")
  lines(dati$Date_C,dati$Global_active_power)
  #
  plot(dati$Date_C, dati$Voltage, xlab="datetime", ylab="Voltage", type="n")
  lines(dati$Date_C, dati$Voltage)
  #
  with(dati, {
    plot(dati$Date_C,dati$Sub_metering_1,type="n", ylab="Energy sub metering",xlab="")
    lines(dati$Date_C,dati$Sub_metering_1)
    lines(dati$Date_C,dati$Sub_metering_2,col="red")
    lines(dati$Date_C,dati$Sub_metering_3,col="blue")
    legend("topright", lty=c(1,1), col = c("black","blue", "red"), 
           legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
           bty="n")
    }
  )
  #
  plot(dati$Date_C, dati$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="n")
  lines(dati$Date_C, dati$Global_reactive_power)
  #
  dev.off()
}