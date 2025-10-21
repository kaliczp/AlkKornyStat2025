library(readxl) # Csomag betöltés
NAronszennyviz <- as.data.frame(read_excel("NAronszennyviz.xlsx")) # teszt beolvasás


SzVTerület <- NAronszennyviz[27:45,] # Terület kiválsztása
names(SzVTerület) <- as.vector(t(NAronszennyviz[26,])) # Fejléc
