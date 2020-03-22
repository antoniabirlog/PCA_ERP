#calcul scoruri (componente standardizate)
S = NULL
m = length(k)
for (j in 1:m) {
  S = cbind(S,C[,j]/abatere.std.comp[j])
}
#asignare nume coloane cu cele din C
colnames(S) = colnames(C)
write.csv(x = S,file = "C:/Users/Antonia/Desktop/MASTER sem 4/ERP/scripts/Scoruri.csv")

rGraphics::scatterplot(X = list(S[,1:2]),
                       titlu = "Plot instante in spatiul 1X2 - Scoruri",
                       titluX = "Componenta 1",
                       titluY = "COmponenta 2",
                       asp = TRUE)
