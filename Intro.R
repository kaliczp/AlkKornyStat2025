a = 1 # a nevű objektum létrehozása
a <- 1 # ugyan az, de az R-es hozzárendelő operátorral
2 > 1 # logikai, relációs operátorok is vannak, mint a matekban eredménye TRUE vagy FALSE
a # obejtum nevet beírva nézhetem az objektum tartalmát
b <- c(12.1,12.5,11.9,13.1,12.9,11) # b objektum több adattal
b # az új vektor tartalmának kiírása
plot(b) # a fenti adatok megjelenítése az index alapján
sum(b) # a vektor összes elemének összege
?sum # segítség a függvény használatához vagy help()
NA # adathiány (not available)
bmod <- rep(b,3) # a b vektort háromszor megismétlem
length(bmod) # Hány elemből áll a vektor?
str(bmod) # információ az objekturól
summary(bmod) # felfedező adatelemzési összegzés
mean(bmod) # átlag számítása
bmod <- c(bmod, NA, 1000, bmod)  # meglévő objektum felülírása
summary(bmod) # felfedező adatelemzési összegzés a kiugró értékre a medián nem érzékeny!
hist(bmod) # gyakoriság diagram
hist(bmod, freq=FALSE, main = "", xlab = "CC", ylab = "Relatív gyakoriság", ylim = c(0,0.5)) # hisztogram
lines(density(bmod, na.rm = TRUE)) # Simított hisztrogram, mint a sűrűségfüggvény
bnoext <- bmod[-20] # extrém adat törlése indexszel
bnoext <- bmod[bmod < 500] # extrém adat törlése indexszel
hist(bnoext, freq=FALSE, main = "", xlab = "CC", ylab = "Relatív gyakoriság") # hisztogram
lines(density(bnoext, na.rm = TRUE)) # Simított hisztrogram, mint a sűrűségfüggvény
boxplot(bmod) # boxplot
boxplot(bnoext) # a kiugró nélkül
summary(bnoext) # a boxplot elemei
quantile(bnoext, na.rm = TRUE) # percentilise
IQR(bnoext, na.rm = TRUE) # inter-kvartilis terjedelem
## Normális adatok vizualizálása legközelebb
