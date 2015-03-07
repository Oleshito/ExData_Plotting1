## Verifico la existencia del .R que arma los datos en memoria y lo invoco
if (!"LecturaDeDatos.R" %in% list.files()) {setwd("~/Desktop/Coursera/R_WorkingDirectory/exdata-data-household_power_consumption/")} 
source("LecturaDeDatos.R")

## Armo el Grafico según descripción. 
## Linea, 480 * 480 px y ajuste de Título del Eje Y.

png(filename = "plot2.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()