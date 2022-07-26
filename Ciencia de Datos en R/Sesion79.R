# Sesion 79
# Hsitogramas

# Set working directory
setwd("C:/Users/Carlos Campos/Desktop/GitHub/Curso-transactSQL/Recursos")

#Cargamos la información correspondiente a Latinos
Latinos<-read.csv(file='Latinos.csv', header=TRUE, sep=',',dec='.',row.names = 1)
Latinos

#Para crear un histograma necesitamos información numérica, esta viene en la columna Tiempo


#--------------------
#Histograma con gráficos básicos de R

#Creando un histograma con los tiempos de los corredores latinos
hist(Latinos$Tiempo)

#Cambiando la cantidad de divisiones del histograma
hist(Latinos$Tiempo, breaks=10)

#Pintando el histograma de color azul
hist(Latinos$Tiempo, breaks=10, col='blue')

#Cambiando las etiquetas de los ejes x, y y el título
hist(Latinos$Tiempo, breaks=10, col=rainbow(12),
     xlab='Tiempos', ylab='Frecuencias', main='Histograma de los tiempos')

#--------------------
#Histograma con ggplot2
library(ggplot2)

ggplot(Latinos,aes(x=Tiempo))+
  geom_histogram(bins=10, fill=rainbow(10), col='black')+
  labs(title='Tiempos Registrado', x='Tiempo', y='Frecuencias')+
  theme_classic()+
  theme(plot.title=element_text(hjust=0.5))






