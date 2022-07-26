# Sesion 81 
# Matrices de Correlación

# Set working directory
setwd("C:/Users/Carlos Campos/Desktop/GitHub/Curso-transactSQL/Recursos")

#Cargamos ela rchivo llamado mtcars
mtcars<-read.csv('mtcars.csv',header=T, sep=',',dec = '.')


#Para hacer la matriz de correlación, las variables que pongamos deben ser numéricas, por lo que necesitamos quitar
#la columna que tiene los modelos (la primera)


#Quitamos las columnas que no son numéricas o las que no nos interesan
mtcars$Modelo=NULL

#Calculamos la correlación que existe entre las variables
mtcars_cor<-cor(mtcars,method='pearson')

        #Existen los métodos pearson, kendall y spearman

#Redondeamos los valores de las correlaciones para tener solamente un decimal

round_corr<-round(mtcars_cor,digits=1)
round_corr

        #En la consola vemos la matriz de correlación, la diagonal es 1 pues es la correlación de la variable consigo misma


#------------------------------------------
#Vamos a visualizar esto de mejor forma con un paquete
install.packages("corrplot")
library(corrplot)

corrplot(round_corr)

#------------------------------------------
#Veamos una versión más compleja para este gráfico
install.packages("ggcorrplot")
library(ggcorrplot)

ggcorrplot(round_corr, method='circle', lab=T)+
  ggtitle('Matriz de Correlación')+
  theme_minimal()
      # Los valores mostrados por arriba y debajo de la diagonal son los mismos

#Para graficar solo los valores debajo de la diagonal principal
ggcorrplot(round_corr, method='circle', type='lower',lab=T)+
  ggtitle('Matriz de Correlación')+
  theme_minimal()







