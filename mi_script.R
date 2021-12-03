# Mi script
# estructuras condicionales

promedio = 12

if (promedio >= 11) {
  print('Pasaste de año')
}else{
  print('Repetiste de año')
}
}

promedio = 8

if (promedio >= 11) {
  print('Pasaste de año')
}else{
  print('Repetiste de año')
}

if (promedio >= 11) {
  print('Pasaste de año')
}else if (promedio < 11 & promedio > 6) {
  print('Necessistas recuperación')
}else{
  print('Repetiste de año')
}

head(df)
str(df)

# error!
if (df$Ladder.score > 5.90) {
  print('país feliz')
}else{
  print('más fiestas')
}

# estructuras de repetición

for(i in 1:10) {
  print(i)
}


for (i in 1:nrow(df)) {
  if (df$Ladder.score[i] > 5.90) {
    print('País feliz!')
  } else{
    print('Más fiestas!')
  }
}



