# Sesion 77
  #Gráfica de barras
  # Recordemos que la altura de cada barra representa la frecuencia que aparece cada observación


# Set working directory
setwd("C:/Users/Carlos Campos/Desktop/GitHub/Curso-transactSQL/Recursos")

Estudiantes<-read.csv(file='Ejemplo+Estudiantes.csv', header = T, sep = ',', dec = '.',row.names = 1)

#--------------------
#Ahora graficaremos las calificaciones que obtuvieron en matemáticas
barplot(Estudiantes$Matematicas, main='Calificaciones de Matematicas',
        names.arg=row.names(Estudiantes), ylim=c(0,10), col="yellow")
              
        # Con el parámetro ylim le indicamos el mínimo y el máximo que queremos que tenga el eje y

###### Ejemplo 2
#Graficando cuantos corredores hay de cada pais

#Cargamos el archivo Latinos
Latinos<-read.csv(file='Latinos.csv',header = T,sep = ',',dec = '.',row.names = 1)


#Ahora veremos cuantos corredores de cada pais participaron en el maraton
library(dbplyr)

por_pais<-group_by(Latinos,Pais) 

      # Nombre del objeto, y la columna
      #Le indicamos que queremos agrupar los datos de acuerdo al pais de cada corrdor

por_pais
      #Si pedimos que nos muestre el objeto por_pais nos indicará que el objeto pais tiene 4 grupos


#Contamos cuantos corredores hay por pais
count_por_pais<-summarise(por_pais,total_por_pais=length(Pais))
    
#Grabaré la información en un archivo csv para analizar después
write.csv(count_por_pais,file ='Corredores_Latinos_por_Pais.csv ')


#-----------------------------------------------
#Con esta información ya podemos crear el gráfico de barras    
#Con gráficos básicos de R, mismos argumentos que antes


barplot(count_por_pais$total_por_pais, names.arg = count_por_pais$Pais, #El nombre de las variables a graficar se encuentran en la columna Pais
        main='Corredores por pais', ylim=c(0,16), col=rainbow(12))










