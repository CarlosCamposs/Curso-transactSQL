# Sesion 72
# Algunas técnicas de reemplazo de valores

# Métodos de sustitución de valores faltantes, veremos los más sencillos pero no necesariamente son los mas indicados
# en todas las ocasiones


#Indicamos nuestro working directory
setwd("C:/Users/Carlos Campos/Desktop/GitHub/Curso-transactSQL/Recursos")

#Leemos el archivo (considerando na.strings='')
niveles<-read.csv(file="Niveles+de+contaminacion.csv",na.strings='',header=T,sep = ',', dec='.')
        # Recordar que na.strings='' pone a todos los espacios vacios como NAs


#Vamos a copiar el archivo csv en niveles2 para hacer algunos reemplazos
niveles2<-niveles


######### Vamos a reemplazar los valores perdidos (NAs) con la media y mediana
# En la columna PM2.5 existen 4 valores NAs

    #Reemplazando los valores perdidos de la columna PM2.5 con la media
    niveles2$PM2.5_mean<-ifelse(is.na(niveles2$PM2.5),  mean(niveles2$PM2.5, na.rm = T),  niveles2$PM2.5)
    
    
    #Reemplazando los valores perdidos de la columna PM2.5 con la mediana
    niveles2$PM2.5_median<-ifelse(is.na(niveles2$PM2.5),  median(niveles2$PM2.5, na.rm = T),  niveles2$PM2.5)


######### Método de los k-vecinos
        # No solo toma en cuenta los valores existentes en una columna determinada, sino que también toma
        # en cuena los valores que tienen todas las variables en la fila que contiene los NAs y busca las filas
        # que tengan valores similares a ella apra asignar un valor a los NAs

    
#Reemplazo de todos los NAs del archivo niveles con el método de los k-vecinos
install.packages("DMWR", dep=T)    
library(DMWR)    
    #Data Mining with R, no está disponible en esta versión de R
        
#Nota: buscar sobre este método

niveles3<-knnImputation(niveles)
        # Todos los NA ya tienen un valor, y ese valor para los NA los deja en la misma columna, no agrega una nueva columna





