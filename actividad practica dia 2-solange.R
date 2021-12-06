#mi script
tabela_actividades_practicas_dia_2 = read.csv("actividades_practicas/tabela_actividades_practicas_dia_2.csv")
library(readr)
tabela_actividades_practicas_dia_2 <- read_csv("C:/Users/Cora Corita/Downloads/CURSO (R STUDIO)/tabela_actividades_practicas_dia_2.csv")
View(tabela_actividades_practicas_dia_2)

#1-estructura de data:
mi_data=tabela_actividades_practicas_dia_2
str(mi_data)


#2-tipo de variables:
class(mi_data)
names(mi_data)

#3-variables tipo caracter:
class(Categoría)
str(Categoría)

#4-numero total de especie por año:
attach(mi_data)

na.omit(mi_data[,2])
x2010=na.omit(mi_data[,2])
x2010
sum(x2010)

na.omit(mi_data[,3])
x2011=na.omit(mi_data[,3])
x2011
sum(x2011)

na.omit(mi_data[,4])
x2012=na.omit(mi_data[,4])
x2012
sum(x2012)

na.omit(mi_data[,5])
x2013=na.omit(mi_data[,5])
x2013
sum(x2013)

na.omit(mi_data[,6])
x2014=na.omit(mi_data[,6])
x2014
sum(x2014)

na.omit(mi_data[,7])
x2015=na.omit(mi_data[,7])
x2015
sum(x2015)

na.omit(mi_data[,8])
x2016=na.omit(mi_data[,8])
x2016
sum(x2016)

na.omit(mi_data[,9])
x2017=na.omit(mi_data[,9])
x2017
sum(x2017)

na.omit(mi_data[,10])
x2018=na.omit(mi_data[,10])
x2018
sum(x2018)

na.omit(mi_data[,11])
x2019=na.omit(mi_data[,11])
x2019
sum(x2019)

#5-diferencia en el número de especies de peces continetales entre los años 2010 y 2019?
mi_data
peces2010 = mi_data[5,2]
peces2010

peces2019 = mi_data[5,11]
peces2019

Resta = peces2019 - peces2010
Resta

#6-Cuántas especies tienen más aves en comparación con los mamíferos en 2019?

mi_data
mamifero2019=mi_data[4,11]
mamifero2019

aves2019=mi_data[3,11]
aves2019

Resta1 = aves2019 - mamifero2019
Resta1


#7-Porcentaje de los números de especies respectivas para el año 2019.

anfibios2019=mi_data[1,11]

reptiles2019=mi_data[2,11]

pecescont2019=mi_data[5,11]

pecesmari2019=mi_data[6,11]

angioygimno2019=mi_data[7,11]

suma2019= anfibios2019+reptiles2019+aves2019+mamifero2019+pecescont2019+pecesmari2019+angioygimno2019
suma2019

anfibios2019/suma2019*100
reptiles2019/suma2019*100
aves2019/suma2019*100
mamifero2019/suma2019*100
pecescont2019/suma2019*100
pecesmari2019/suma2019*100
angioygimno2019/suma2019*100

#8-Cuál es la razón del número total de especies para 2019 y 2010
sum(x2010)/sum(x2019)


#9-¿Es el número de especies de aves en 2016 mayor que la suma del número de peces de 2012 a 2016? 
mi_data

aves2016=mi_data[3,8]
aves2016

pecessss=mi_data[5,4]+mi_data[5,5]+mi_data[5,6]

aves2016>pecessss
