NEI <- readRDS("exdata_data_NEI_data/summarySCC_PM25.rds")

agg <- aggregate(NEI[c("Emissions")], list(year = NEI$year), sum)

#  Create Plot
png('plot1.png', width=480, height=480)
plot(agg$year, agg$Emissions, type = "l", 
     main = "Total Emissions from PM2.5 in the US",
     xlab = "Year", ylab = "Emissions")
dev.off()