# Sesión 73
#Detección de outliers

# Set working directory
setwd("C:/Users/Carlos Campos/Desktop/GitHub/Curso-transactSQL/Recursos")

#Trabajaremos con las abses de datos del paquete "datasets"
require("datasets")

#Listado de bases de datos que contiene "dataset"
data(package="datasets")

#Escogiendo la base de datos
data(rivers)

#Si quisieramos ver más detalles acerca de al base de datos "rivers" le aplicamos la función help
#Para ver más detalles acerca de al base de datos "rivers"
help(rivers)

#Vemos que contiene la base de datos
str(rivers)
        #Muestra la estructura (structure)

#Obtenemos el histograma para ver cómo están distribuidos los valores
hist(rivers)

#Hacemos un gráfico de caja y bigotes para ver los outliers
boxplot(rivers,horizontal=T)

#Obtenemos la lista de los valores que aparecen como outliers
boxplot.stats(rivers)

        #En $stast nos muestra:
        # El primer bigote de la caja, el primer cuartil, la mediana, el tercer cuartil y el bigote superior

        #En $n nos indica la cantidad de datos que hay

        #En $conf nos muestra el intervalo de confianza al 95% para la mediana

        #En $out se muestra la LISTA DE OUTLIERS


#Guardaremos aquellos valores que no sean outliers
rios_sin_out<-rivers[rivers<1240]

####### Volvemos a hacer este proceso de detección de outliers hasta que ya no aparezcan en el gráfico
boxplot(rios_sin_out,horizontal = T)

        #Aún aparecen pocos outliers


#Estamos interesados en conocer ahora quienes son los outliers
boxplot.stats(rios_sin_out)
        #El outlier más pequeño es de 1100


#Nos volvemos a quedar con los que no son outliers
rios_sin_out2<-rivers[rivers<1100]

#Volvemos a verificar si aun existen outliers con el boxplot
boxplot(rios_sin_out2,horizontal=T)

        #Aú tiene un outlier

#Vemos cual es el outlier que aún tenemos
boxplot.stats(rios_sin_out2)

        #El único outlier tiene valor 1054

#Nos volvemos a quedar sin los outlieres
rios_sin_out3<-rivers[rivers<1054]

#Volvemos a hacer el boxplot
boxplot(rios_sin_out3,horizontal=T)

        #Ahora ya no aparecen outliers

#Esta última base de datos ya está libre de outliers y podriamos trabajar con ella






