#tabelul cu variantele compenentelor (absolut, relativ, cumulat)
tabel.varianta = calcul.indicatori.varianta(varianta = varianta.comp);
write.csv(tabel.varianta,file = "C:/Users/Antonia/Desktop/MASTER sem 4/ERP/scripts/Varianta.csv");
#grafic varianta conform criteriului Kaiser
multiLinii(X = as.matrix(varianta.comp),titlu = "Plot varianta componente",titluY = "Varianta",legenda = FALSE)

