#matricea de corelatie
matrice.corelatie = cor(tabel.date);

#corelograma
#rGraphics::corelograma1(x = matrice.corelatie,corelatii = TRUE,
#                        titlu = "Corelograma variabile observate ")
corrplot::corrplot(matrice.corelatie, method="circle")