#Sesion 80
# Diagrama de Pareto
    
      # También conocido como análisis ABC, facilita la detección de las principales causas generadoras de un fenómeno
  
      #El 80% de las consecuencias de un fenómeno es ocasionado por el 20% de las causas, se colocan barras de forma descendente 
      #con base en su valor, sobre cada una de las barras se ponen las frecuencias relativas


# Set working directory
setwd("C:/Users/Carlos Campos/Desktop/GitHub/Curso-transactSQL/Recursos")

#Leemos el archivo a analizar
ventas<-read.csv('Datos+Compras.csv',sep=',',dec='.',header=T)

#Obtenemos las veces que fue vendido cada producto
productos_vendidos<-table(ventas$Producto)
productos_vendidos


#Cargamos en memoria el paquete qcc
install.packages("qcc",dep=T)
library(qcc)

#Creamos el diagrama de Pareto
pareto.chart(productos_vendidos,col=rainbow(length(productos_vendidos)), main='Diagrama de Pareto')

        #Despliega la tabla de frecuencias en la consola y al lado el diagrama de Pareto

        #La primera columna es la frecuencia absoluta
        #La tercera columna es la frecuencia relativa (o porcentaje) (Frecuencia absoluta/Productos vendidos totales)

        #La linea arriba de las barras es la frecuencia relativa ACUMULADA
        
# El 80% de las ventas está conformada por la leche, mantequilla, pan y las galletas, por lo que 
# Si se tuviera un desabasto de los primeros 4 productos, la tienda se vería muy afectada, por lo que sería bueno
# tener varios proveedores de ese producto para no depender

#Lo asignamos a una variable
Tabla_Frec_ventas<-pareto.chart(productos_vendidos,col=rainbow(length(productos_vendidos)), main='Diagrama de Pareto')
    
        #Ahora solo se despliega el diagrama

Tabla_Frec_ventas

#Guardamos la tabla de frecuecias en nuestra computadora
write.csv(Tabla_Frec_ventas,'Tabla_de_Frecuencias_de_Ventas.csv')





