source("get_data.R")

data <- get_data()

datetime <- get_data_time(data$Date, data$Time)

png("plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))
plot(
  x = datetime,
  y = data$Global_active_power,
  type = "l",
  main = "",
  xlab = "",
  ylab = "Global Active Power"
)

plot(
  x = datetime,
  y = data$Voltage,
  type = "l",
  main = "",
  xlab = "datetime",
  ylab = "Voltage"
)

plot(
  x = datetime,
  y = data$Sub_metering_1,
  type = "l",
  main = "",
  xlab = "",
  ylab = " Energy sub metering"
)
lines(x = datetime,
      y = data$Sub_metering_2,
      col = "red")
lines(x = datetime,
      y = data$Sub_metering_3,
      col = "blue")
legend(
  "topright",
  lty = 1,
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  col = c("black", "red", "blue"),
  lwd = 2,
  y.intersp = 1,
  bty = "n",
  xjust = 1
)


plot(
  x = datetime,
  y = data$Global_reactive_power,
  type = "l",
  main = "",
  xlab = "datetime",
  ylab = "Global_reactive_power"
)

dev.off()