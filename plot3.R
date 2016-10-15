source("get_data.R")

data <- get_data()

datetime <- get_data_time(data$Date, data$Time)

png("plot3.png", width = 480, height = 480)

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
  y.intersp = 1,
  lwd = 2
)

dev.off()
