source("get_data.R")

data <- get_data()

datetime <- get_data_time(data$Date, data$Time)

png("plot2.png", width = 480, height = 480)

plot(
  x = datetime,
  y = data$Global_active_power,
  type = "l",
  main = "",
  xlab = "",
  ylab = "Global Active Power (kilowatts)"
)

dev.off()
