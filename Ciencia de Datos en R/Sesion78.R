# Sesion 78
# Gráficos circulares o pastel

# Set working directory
setwd("C:/Users/Carlos Campos/Desktop/GitHub/Curso-transactSQL/Recursos")

#Cargamos la información
Corredores_Pais<-read.csv(file='Corredores+Latinos+por+Pais.csv',header=T,sep=',',dec = '.',row.names=1)
        #Así es como necesitamos tener organizada la información cuando queremos hacer una gráfica de pastel

#Formamos las etiquetas que se va a colocar en el gráfico circular
etiquetas<-paste(Corredores_Pais$Pais, Corredores_Pais$total_por_Pais)
etiquetas

#-----------------
#Con gráficos básicos de R

pie(Corredores_Pais$total_por_Pais, col=rainbow(12), labels=etiquetas, #Etiquetas en cada sección del círculo
    main='Corredores latinos por pais')

#-----------------
#Con ggplot2
library(ggplot2)

Pais<-Corredores_Pais$Pais

ggplot(Corredores_Pais,aes(x='', y=Corredores_Pais$total_por_Pais,fill=Pais))+
  geom_bar(stat='identity', color='black')+
  coord_polar('y', start=0)+
  geom_text(aes(label=Corredores_Pais$total_por_Pais), position=position_stack(vjust=0.5),
            color='blue')+
  labs(title='Corredores por Pais')+
  theme_void()











