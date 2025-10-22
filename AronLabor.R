library(readxl) # Csomag betöltés
NAronszennyviz <- as.data.frame(read_excel("NAronszennyviz.xlsx")) # teszt beolvasás


SzVTerület <- NAronszennyviz[28:45,] # Terület kiválsztása
Fejléchez <- as.vector(t(NAronszennyviz[26,]))
Fejléchez[2] <- "Loc" # Hely neve
names(SzVTerület) <- Fejléchez # Fejléc

Standard <- NAronszennyviz[27,] # Határ
names(Standard) <- Fejléchez # Fejléc

par(mar=c(10,4.1,0.3,0.3), las = 2)
barplot(as.numeric(SzVTerület[,3]), log = "y")
axis(2, at = as.numeric(Standard[,3]), tck = 1, lab = "")
axis(1, at = seq(0.7, by = 1.2, length.out = nrow(SzVTerület)), labels = SzVTerület[,2])

### Higitott módosítása
SzVTerületmod <- SzVTerület
## Cimkék
SzVTerületmod[10:12, "Loc"] <- sub(" 10x higitott", "", SzVTerületmod[10:12, "Loc"])
## Számmá konvertálás
SzVTerületmod[,3:18] <- as.numeric(as.matrix(SzVTerületmod[,3:18]))
## Tízszeres szorzó
SzVTerületmod[10:12,3:18] <- SzVTerületmod[10:12,3:18] * 10
# 15?
komponens <- 16
print(Fejléchez[komponens])
par(mar=c(10,4.1,0.3,0.3), las = 2)
barplot(as.numeric(SzVTerületmod[, komponens]), log = "y", col = "#a1d76a")
axis(2, at = as.numeric(Standard[, komponens]), tck = 1, lab = "", col = "#e9a3c9", lwd = 3)
axis(1, at = seq(0.7, by = 1.2, length.out = nrow(SzVTerületmod)), labels = SzVTerületmod[,2])

## nominál 7, 9, 10, 11, 12, 13, 15, 16
komponens <- 18
print(Fejléchez[komponens])
par(mar=c(10,4.1,0.3,0.3), las = 2)
barplot(as.numeric(SzVTerületmod[, komponens]), col = "#a1d76a")
axis(2, at = as.numeric(Standard[, komponens]), tck = 1, lab = "", col = "#e9a3c9", lwd = 3)
axis(1, at = seq(0.7, by = 1.2, length.out = nrow(SzVTerületmod)), labels = SzVTerületmod[,2])

## Ábra
## 10 cm magas, 17 cm png.
for(komponens in 3:18) {
    png(paste0(Fejléchez[komponens], "nominal.png"),
        height = 10, width = 17, units = "cm", res = 300, pointsize = 8)
    par(mar=c(10,4.1,0.3,0.3), las = 2)
    barplot(as.numeric(SzVTerületmod[, komponens]), col = "#a1d76a")
    axis(2, at = as.numeric(Standard[, komponens]), tck = 1, lab = "", col = "#e9a3c9", lwd = 3)
    axis(1, at = seq(0.7, by = 1.2, length.out = nrow(SzVTerületmod)), labels = SzVTerületmod[,2])
    dev.off()
}

for(komponens in c(3:6,8,15)) {
    png(paste0(Fejléchez[komponens], "log.png"),
        height = 10, width = 17, units = "cm", res = 300, pointsize = 8)
    par(mar=c(10,4.1,0.3,0.3), las = 2)
    barplot(as.numeric(SzVTerületmod[, komponens]), col = "#a1d76a", log = "y")
    axis(2, at = as.numeric(Standard[, komponens]), tck = 1, lab = "", col = "#e9a3c9", lwd = 3)
    axis(1, at = seq(0.7, by = 1.2, length.out = nrow(SzVTerületmod)), labels = SzVTerületmod[,2])
    dev.off()
}
