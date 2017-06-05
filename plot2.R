# Creating second plot after cleaning the data. Using type = "l" to create line graph.

with(power_data_final, plot(Global_active_power ~ DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab=""))

# Saving the plot in PNG

dev.copy(png,"plot2.png", width=480, height=480)
dev.off()