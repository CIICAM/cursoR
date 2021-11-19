datos = read.csv("tabelas/Consumo_cerveja.csv", dec = c(","), header = TRUE, sep = ";")

str(datos)

names(datos)
colnames(datos) = c("Fecha", "Temperatura media", "Temperatura minima",
                    "Temperatura máxima", "Preciptación", "Finales de semaña",
                    "Consumo de cerveza en litros")

dim(datos)

head(datos$Fecha)[1]

tail(datos$Fecha)[6]

# Evaluación del consumo de cerveza en litros en 2015
summary(datos$`Consumo de cerveza en litros`)

# Distribuición de los datos
hist(datos$`Consumo de cerveza en litros`)

# Grafico de cajas
boxplot(datos$`Consumo de cerveza en litros`)

# Cual es la temperatura media cuando se consome mas cerveza?
datos$`Temperatura media`[datos$`Consumo de cerveza en litros` == max(datos$`Consumo de cerveza en litros`)]

# Creando una columna con respectivo mes
datos$mes = strftime(datos$Fecha,format="%m")
head(datos)

# Evaluación del consumo por mes
con_mes = aggregate(`Consumo de cerveza en litros` ~ mes, data = datos, FUN = "mean")

barplot(con_mes$`Consumo de cerveza en litros`, names.arg = 1:12)

# Análise estadística del consumo en los meses del año de 2015
modelo = lm(datos$`Consumo de cerveza en litros` ~ datos$mes)

anova_mes = aov(modelo)

summary(anova_mes)

# Test de Tukey (comparación de las médias en pares)
#install.packages("agricolae")

library(agricolae)

tukey = HSD.test(modelo, 'datos$mes')
tukey
