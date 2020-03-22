#fisier = "C:/Users/Antonia/Desktop/Proiect Analiza Datelor/ProiectAD/Date Brute/DateNivelTrai.csv"
fisier = choose.files(multi = FALSE, filters = c("Fisiere csv", "*.csv"))
#data frame-ul folosit pentru a retine datele
tabel.date = read.csv(file = fisier)
cheieP = names(tabel.date)[1]

#citire fara numele coloanei 1
tabel.date = read.csv(file = fisier,row.names = 1)
#aliminare NA
tabel.date = adPackage::naElim(t = tabel.date)
k = names(tabel.date)[1:9] #ce variabile voi folosi

#aplicarea modelului
rezultat.ACP = princomp(x=tabel.date[,k],cor = TRUE)

#abateri standard componente = valori proprii ale matricei de corelatie
abatere.std.comp = rezultat.ACP$sdev #valorile eigen
#variantele componentelor = masura a imprastierii
varianta.comp = abatere.std.comp^2



