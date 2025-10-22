library(readxl) # Csomag betöltés
NAronszennyviz <- as.data.frame(read_excel("NAronszennyviz.xlsx")) # teszt beolvasás


SzVTerület <- NAronszennyviz[28:45,] # Terület kiválsztása
Fejléchez <- as.vector(t(NAronszennyviz[26,]))
Fejléchez[2] <- "Loc" # Hely neve
names(SzVTerület) <- Fejléchez # Fejléc

Standard <- NAronszennyviz[27,] # Határ
names(Standard) <- Fejléchez # Fejléc

barplot(as.numeric(SzVTerület[,3]), log = "y")
axis(2, at = as.numeric(Standard[,3]), tck = 1, lab = "")
