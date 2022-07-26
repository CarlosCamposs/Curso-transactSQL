# Sesion 82
# Nubes de palabras

# Set working directory
setwd("C:/Users/Carlos Campos/Desktop/GitHub/Curso-transactSQL/Recursos")

#Cargamos el pqeuete tm, util en minería de datos
install.packages("tm")
library(tm)

comentarios<-read.csv('opiniones+acerca+de+vinos.csv', header=T, sep = ',',dec = '.', row.names = 1)

        #La columna 'description' es la que usaremos para la nube de palabras


# Función VCorpus
palabras<-VCorpus(VectorSource(comentarios$description))
      #Esto se hace para cargar el texto en un formato especial

#Cambiamos las mayúsculas por minusculas
palabras<-tm_map(palabras, content_transformer(tolower))

      #Puesto que es case sensitive

#Quitamos los signos de puntuación
palabras <- tm_map(palabras,removePunctuation)

#Quitamos artículos, conjunciones y otras palabras, dentro del parámetro stopwords le indicamso el lenguaje en el
#que está del texto
palabras<-tm_map(palabras,removeWords,stopwords('english'))


#Vamos a diferenciar las palabras con un paquete llamado RcolorBewer
install.packages("RColorBrewer")
library(RColorBrewer)

#Creamos un objeto que contenga los colores que queremos utilizar  con la función brewer.pal
colores=brewer.pal(8,'Dark2')

        #Cantidad de colores (8) que contiene el conjunto de colores Dark2

        #Para ver la paleta de colores que tiene
        display.brewer.all(colorblindFriendly = T)

#Para crear la nube de palabras usaremos el paquete wordcloud
install.packages("wordcloud")
library(wordcloud)        

# Aplicamos la función wordcloud con los respectivos parámetros
wordcloud(palabras, scale=c(2.6,0.3), random.order = F,
          max.words = 75, rot.per=0.25, colors=colores)

        #Random.order=F es para que las palabras con mayor frecuencia se pongna en el centro y hacia afuera las que menos se repiten
        #scale es para el tamaño de la palabra más grande y la mas pequeña, respectivamente
        #rot.per es el porcentaje de palabras que quiero que tengan orientacion vertical
        
title(main='wordCloud vinos', cex.main=1.5)









