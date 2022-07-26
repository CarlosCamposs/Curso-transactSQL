#Sesion 74
# Medidas de tendencia central

#Set working directory
setwd("C:/Users/Carlos Campos/Desktop/GitHub/Curso-transactSQL/Recursos")

#Cargamos la información
Corredores<-read.csv(file='Maraton+NY.csv',header=T,sep=',',dec = '.',row.names=1)

#Obtenemos el promedio
mean(Corredores$age)

#Obtenemos la mediana
median(Corredores$age)

#Obtenemos la moda
table(Corredores$age)

        #Con esta tabla podemos ver que el valor que más se repite en 33 (con un valor de 71)

#Esta tabla de frecuencias la vamos a transformar en un dataframe
frecuencias<-data.frame(table(Corredores$age))

moda<-frecuencias[which.max(frecuencias$Freq),1]

moda
