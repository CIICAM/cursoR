setwd("C:/Users/ghosa/OneDrive/Documentos/GitHub/cursoR/tabelas")

happiness = 
  read.csv("felicidad_red.csv")

barplot(happiness$Indice_felicidad, ylim=c(0,8), names.arg=happiness$Pais, las=2)

regiones = c()

regiones$names = unique(happiness$Region)

for (i in 1:length(regiones$names)){
  
  print(regiones$names[i])
  regiones$media[i] = mean(happiness$Indice_felicidad[happiness$Region == regiones$names[i] ])
  regiones$desvio[i] = sd(happiness$Indice_felicidad[happiness$Region == regiones$names[i] ])
  
}

x = barplot(regiones$media,beside=T,ylim=c(0,8),ylab="score", 
            names.arg = regiones$names,
            las = 2,
            col = as.factor(unique(regiones$names)))

arrows(x0=x,y0=regiones$media-regiones$desvio,
       x1=x,y1=regiones$media+regiones$desvio,
       angle=90,length=0.14,code=3)
