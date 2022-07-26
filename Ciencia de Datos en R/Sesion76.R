# Sesion 76
# Diagramas de dispersión


# Set working directory
setwd("C:/Users/Carlos Campos/Desktop/GitHub/Curso-transactSQL/Recursos")

# Cargamos la información correspondiente a Latinos

Latinos<-read.csv(file='Latinos.csv',header = T,sep = ',',dec='.',row.names = 1)
Latinos

# Diagrama de dispersión con gráficos básicos de R
plot(Latinos$Tiempo~Latinos$Edad,
    ylab='Tiempo', xlab='Edad',
    main='Tiempo vs Edad')

# Diagrama de dispersión con más de dos variables
Estudiantes<-read.csv(file='Ejemplo+Estudiantes.csv', header = T,sep = ',',dec = '.',row.names = 1)
Estudiantes

#Gráfico de dispersión básico de R
pairs(data=Estudiantes,
      ~Matematicas+Ciencias+Espanol+Historia+Deportes, #Indico cuales columnas incluiré en el gráfico
      pch=19, #Forma de los puntos, si queremos cuadrados usamso 15
      main='Calificaciones de Estudiantes') #Titulo


#-------------------------------------
#Diagrama de dispersión con ggplot2
library(ggplot2)

#Aqui le vamos diciendo cómo queremos cada elemento del gráfico

ggplot(data=Latinos)+
      geom_point(aes(x=Edad,y=Tiempo))+
          labs(title='Maraton NY 2002',x='Edades',y='Tiempos')+
              theme_classic()+
                  theme(plot.title = element_text(hjust=0.5))

  #Nota importante: para que respete el centrado del título, el comando
  # theme(plot.title=element_text(hjust=0.5))   debe estar después del
  #comando theme_classic()

#---------------------------
#Gráfico de dispersión con GGally, que es una extensión de ggplot

install.packages("GGally")
library(GGally)


ggpairs(Estudiantes,
        columns=1:5,
        title='Calificaciones de Estudiantes'
)+
        theme_bw()+ #Coloca el cuadriculado en gris claro para facilitar la ubicación de los puntos en el eje
  theme(plot.title = element_text(hjust=0.5)) # Se agrega esta linea para centrar el título





