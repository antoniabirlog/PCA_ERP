#preluare componente (nestandardizate)
C = rezultat.ACP$scores
write.csv(x = C,file = "C:/Users/Antonia/Desktop/MASTER sem 4/ERP/scripts/Componente.csv")

rGraphics::scatterplot(X = list(C[,1:2]),
                       titlu = "Plot instante in spatiul 1X2 - Componente",
                       titluX = "Componenta 1",
                       titluY = "Componenta 2", asp=TRUE)
