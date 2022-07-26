# Sesion 75
# Medidas de dispersión

# Set working directory
setwd("C:/Users/Carlos Campos/Desktop/GitHub/Curso-transactSQL/Recursos")

#Cargamos la información
Corredores<-read.csv(file='Maraton+NY.csv',header=T,sep=',',dec = '.',row.names=1)

#Obtenemos el rango
rango=max(Corredores$age)-min(Corredores$age)
rango

#Varianza
var(Corredores$age)

#Desviación estándar
sd(Corredores$age)
