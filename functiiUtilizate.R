#install.packages("C:/Users/Antonia/Desktop/MASTER sem 4/scripts/rGraphics_0.1.0.tar.gz", repos = NULL, type = "source");
#install.packages("psych");
calcul.indicatori.varianta = function(varianta){
  n = length(varianta)
  varianta.cum = cumsum(varianta)
  proc = varianta*100/n
  procent.cum = cumsum(proc)
  return(data.frame(Varianta = varianta,
                    Varianta.cumulata = varianta.cum,
                    Procent = proc,
                    Procent.cumulat = procent.cum))
}


corelograma1 = function(x,y=NULL,corelatii=TRUE,titlu=""){
  if(!corelatii){
    if(is.null(y)){
      R = cor(x)
    } else {
      R = cor(x,y)
    }
  } else {
    R = x
  }
  dev.new(noRStudioGD = TRUE)
  psych::cor.plot(r = round(R,digits = 5),main = titlu)
}



multiLinii = function(X,titlu="",titluX="",titluY="",legenda=FALSE){
  tryCatch(
    {
      dev.new(noRStudioGD = T)
      ylim = range(X)
      m = ncol(X)
      n = nrow(X)
      culori = rainbow(m)
      plot(x = X[,1],xlab = titluX,ylab = titluY,main = titlu,type = "n",ylim = ylim,
           xaxt="n",lwd=2)
      axis(side = 1,at=1:n,labels = rownames(X),las=2)
      for(i in 1:m){
        lines(x = X[,i],col=culori[i],lwd=2)
      }
      if(legenda){
        legend(locator(1),fill = culori,legend = names(X))
      }
      abline(h=1,col="green",lwd=2)
    },
    error=function(e){
      stop(paste("Eroare trasare multilinii!",e))
    }
  )
  
  points(x=X)
  
  m = length(X)
  d = X[1:(m-1)]-X[2:m]
  eps = d[1:(m-2)]-d[2:(m-1)]
  j = which(eps<0)
  abline(h = X[j[1]+1],col="blue",lwd=2)
}
e=90

