## install.packages("readxl") # Csomag telepítés
library(readxl) # Csomag betöltés
as.data.frame(read_excel("Évi középhömérséklet, csapadék .xlsx")) # teszt beolvasás
Mometeo <- as.data.frame(read_excel("Évi középhömérséklet, csapadék .xlsx", range = "A1:C102"))
names(Mometeo)
plot(Mometeo[,1:2]) # Első plot hőmérséklet : operátor tartomány megadással
plot(Mometeo[,c(1,3)]) # Második vektor indexszel
plot(Mometeo[,c(1,3)], type = "h") # tüskés ábra
plot(Mometeo[,1:2], type = "l", xaxs = "i", col = "red", lwd=2) # Kicsit haladóbb vonalas ábra.
