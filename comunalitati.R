#calcul comunalitati
#Comunalitati
R2 = R*R
write.csv(x = R2,file = "R2.csv")
Comm=NULL
for(i in 1:m){
  Comm = rbind(Comm,cumsum(x = R2[i,]))
}
rownames(Comm)=rownames(R)
write.csv(x = Comm,file = "C:/Users/Antonia/Desktop/MASTER sem 4/ERP/scripts/Comunalitati.csv")
corrplot::corrplot(Comm, method="circle")
 