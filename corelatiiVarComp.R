#'CALCULUL CORELATIILOR DINTRE COMPONENTE SI VARIABILE CAUZALE
#'= corelatii factoriale
#'matricea coeficientilor de lagatura intre 
#'componente si variabilele cauzale
#'loadings = vectorii proprii ai matricei de corelatie
a = rezultat.ACP$loadings
R = NULL #matricea corelatiilor dintre componente si variabile
for (i in 1:m) {
  R = cbind(R,a[,i]*abatere.std.comp[i])
}
#numele coloanelor din R
colnames(R) = paste("Comp.",1:m,sep = " ")
write.csv(x = R,file = "C:/Users/Antonia/Desktop/MASTER sem 4/ERP/scripts/CorelatiiFactoriale.csv")

#desenare corelograma
corrplot::corrplot(R, method="circle")