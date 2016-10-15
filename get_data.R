get_data = function() {
  if (!file.exists("household_power_consumption.txt")) {
    download.file(
      "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
      "exdata_data_household_power_consumption.zip",
      "curl",
      quiet = T
    )
    unzip("exdata_data_household_power_consumption.zip")
  }
  
  setClass("date-ddmmyyyy")
  setAs("character", "date-ddmmyyyy", function(from)
    as.Date(from, format = "%d/%m/%Y"))
  data <-
    read.table(
      "household_power_consumption.txt",
      sep = ";",
      header = T,
      na.strings = "?",
      colClasses = c(
        "date-ddmmyyyy",
        "character",
        "numeric",
        "numeric",
        "numeric",
        "numeric",
        "numeric",
        "numeric",
        "numeric"
      )
    )
  
  d <- data[(data$Date == as.Date("2007-02-01") | data$Date == as.Date("2007-02-02")) , ]
  d
}

get_data_time = function(date, time) {
  datetime <- as.POSIXct(paste(date, time))
  datetime
}