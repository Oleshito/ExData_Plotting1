## Verifico la existencia del .R que arma los datos en memoria y lo invoco
if (!"LecturaDeDatos.R" %in% list.files()) {setwd("~/Desktop/Coursera/R_WorkingDirectory/exdata-data-household_power_consumption/")} 
source("LecturaDeDatos.R")

## Armo el Grafico según descripción. 
## Histograma Rojo de 480 * 480 px y ajuste de Título principal y el del Eje X. limite de Y y 12 barras 

png(filename = "plot1.png", 
    width = 480, 
    height = 480, 
    units = "px", 
    bg = "transparent")

hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))

dev.off()