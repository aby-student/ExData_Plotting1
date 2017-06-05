
# Read the data set into variable.

initial_power_data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")

# Format the date
initial_power_data$Date <- as.Date(initial_power_data$Date, "%d/%m/%Y")

# Filter the required data for plotting
power_data_final <- subset(initial_power_data,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

# combine data and time column and then format the date and time

power_data_final$DateTime <- paste(power_data_final$Date, power_data_final$Time)
power_data_final$DateTime <- strftime(power_data_final$DateTime, "%Y-%m-%d %H:%m:%S")

#Plotting the histogram

hist(power_data_final$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")

# Saving the plot in png file
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()