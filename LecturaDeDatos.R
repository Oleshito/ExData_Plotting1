## Armo el SubSet newData y defino DateTime

Archivo <- "./household_power_consumption.txt"
datos    <- read.table(Archivo,
                   header=TRUE,
                   sep=";",
                   ##colClasses=c("character", "character", rep("numeric",7)),
                   colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"),
                   na="?")
newData <- data[datos$Date == "1/2/2007" | datos$Date == "2/2/2007",]

x <- paste(Date, Time)

newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newData) <- 1:nrow(newData)