NEI <- readRDS("exdata_data_NEI_data/summarySCC_PM25.rds")

Balt <- subset(NEI, fips == "24510")
Agg <- aggregate(Balt[c("Emissions")], list(year = Balt$year), sum)

#  Create Plot
png('plot2.png', width=480, height=480)
plot(Agg$year, Agg$Emissions, type = "l", 
     main = "Total Emissions from PM2.5 in Baltimore City",
     xlab = "Year", ylab = "Emissions")
dev.off()