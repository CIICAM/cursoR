setwd("C:/Users/ghosa/OneDrive/Documentos/GitHub/cursoR/tabelas")

happiness = 
  read.delim("tabelas/world-happiness-report-2021.csv", sep = ",")

barplot(happiness$Freedom.to.make.life.choices, ylim=c(0,1), names.arg=happiness$ï..Country.name, las=2)

regiones = c()

regiones$names = unique(happiness$Regional.indicator)

for (i in 1:length(regiones$names)){
  
  print(regiones$names[i])
  regiones$media[i] = mean(happiness$Freedom.to.make.life.choices[happiness$Regional.indicator == regiones$names[i] ])
  regiones$desvio[i] = sd(happiness$Freedom.to.make.life.choices[happiness$Regional.indicator == regiones$names[i] ])
  
}

x = barplot(regiones$media,beside=T,ylim=c(0,1),ylab="score", 
            names.arg = regiones$names,
            las = 2,
            col = as.factor(unique(regiones$names)))

arrows(x0=x,y0=regiones$media-regiones$desvio,
       x1=x,y1=regiones$media+regiones$desvio,
       angle=90,length=0.14,code=3)

