## install.packages("readxl") # Csomag telepítés
library(readxl) # Csomag betöltés
as.data.frame(read_excel("Évi középhömérséklet, csapadék .xlsx")) # teszt beolvasás
Mometeo <- as.data.frame(read_excel("Évi középhömérséklet, csapadék .xlsx", range = "A1:C102"))
names(Mometeo)
plot(Mometeo[,1:2]) # Első plot hőmérséklet : operátor tartomány megadással
plot(Mometeo[,c(1,3)]) # Második vektor indexszel
plot(Mometeo[,c(1,3)], type = "h") # tüskés ábra
plot(Mometeo[,1:2], type = "l", xaxs = "i", col = "red", lwd=2) # Kicsit haladóbb vonalas ábra.

## Egymásra
par("mar") # mekkora a margó
par(mar=c(5.1,4.1,0.6,4.1)) # mekkora a margó
plot(Mometeo[,c(1,3)], type = "h", xaxs = "i", col="blue", ylim=c(3000,0),yaxs = "i", xaxt="n", yaxt="n", ylab = "", xlab ="") # Csapadék
axis(4, at=seq(0,1200,300), cex = 0.5)
mtext(names(Mometeo)[3],4,3, at= 600)
par(new = TRUE)
plot(Mometeo[,1:2], type = "l", xaxs = "i", col = "red", lwd=2) # Hőmérséklet

