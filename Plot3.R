## Verifico la existencia del .R que arma los datos en memoria y lo invoco
if (!"LecturaDeDatos.R" %in% list.files()) {setwd("~/Desktop/Coursera/R_WorkingDirectory/exdata-data-household_power_consumption/")} 
source("LecturaDeDatos.R")

## Armo el Grafico según descripción. 
## Lineas, 3 series con cambio de color (negro, rojo, azul) y leyenda

png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
dev.off()