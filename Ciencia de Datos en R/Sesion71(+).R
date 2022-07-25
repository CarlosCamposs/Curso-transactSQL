# Sesion 71 
# Valores perdidos o duplicados
    # Cuando se tengan datos faltantes, la opción más sencilla es eliminar ese conjunto, como veremos ahora:


####### Indicamos nuestro working directory
setwd("C:/Users/Carlos Campos/Desktop/GitHub/Curso-transactSQL/Recursos")

####### Leemos el archivo a analizar
niveles<-read.csv(file="Niveles+de+contaminacion.csv",na.strings='',header=T, sep=',',dec='.')

      #Este archivo no cuenta con nombres en las filas, por lo que no será necesario usar el parámetro row.names
      # no tienen una columna parecida a "id_number" de las tablas que hemos visto anteriormente

      #Para hacer que los espacios en blanco aparezcan como NA(not available) ponemos el parámetro na.strings=''



#Al ver el conjunto de datos podemos notar que la fila 33 contiene muy poca información,
# por lo que podriamos eliminarla antes de comenzar con el análisis de datos


####### Si queremos quitar solamente la fila 33
niveles<-niveles[-(33),]
      
        # Estamos definiendo que la nueva tabla "niveles" contenga las mismas columnas pero quitamos la fila 33
        # por eso se pone un negativo


####### Revisamos que los tipos de variables sean correctos
str(niveles)


####### Verificamos qué patreones siguen nuestros datos
        #Dentro de este paquete existe md.pattern que nos permtie ver los valores perdidos
install.packages("mice", dep=T)
library(mice)


#Función md.pattern  (missing data pattern)
md.pattern(niveles)
        # Se lee de la siguiente forma;                               (se lee de forma horizontal)
        # Hay 19 filas que tienen 0 valores faltantes en las filas
        # Hay 4 filas que tienen 1 valor faltante en la columna CN
        # Hay 3 filas que tienen un valor faltante en NOX     y así sucesivamente


#Función is.na()
is.na(niveles$NOX)
        # Para sabersi alguna columna en específico tiene NAs
        # los marca como TRUE cuando hay valor NA

#Función complete.cases
complete.cases(niveles)
        # Para saber cuantas filas tienen valores en todas sus columnas
        # Nos indica con TRUE aquellas que tengan todas sus columnas llenas


#Función na.omit()
niveles_sin_Nas<-na.omit(object = niveles)
        # Para quitar las filas que contienen datos faltantes (solo nos quedamos con 19 datos de 32)

  #Otra manera de hacer esta tarea sería las siguiente:
  niveles_sin_Nas_complete<-niveles[complete.cases(niveles),]

  
#Para quedarnos con las filas que sí tienen información en cierta columna
niveles_sin_Nas_NOX<-niveles[!is.na(niveles$NOX),]  
        
        # El signo ! funciona como negación
        # Estamos diciendo que queremos quedarnos con todas las filas que tienen info en NOX
  

####### (Quitar varias columnas de una tabla)
#Si decidimos quitar todas las columnas que tienen muchos valores perdidos
niveles_sin_NOX_ni_CN<-niveles[,-c(6,9)]
        
        # Anteriormente ya vimos como quitar una sola fila, ahora vemos como quitar varias columnas


# Cuando vemos la tabla de niveles podemos notar que tenemos un "dato basura" puesto que en la primera fila
# tenemos un "número de empresas"=0, lo cual no tiene sentido, buscaremos eliminarlo estableciéndolo como NA

#Reemplazando ceros por NA
niveles$Numero_de_empresas[niveles$Numero_de_empresas==0]<-NA

        # En la tabla niveles, columna "Número de emrpesas", los elementos que sea ==0 se les asigna NA


#Quitando los valores duplicados
sin_duplicados<-unique(niveles)


####### Conocer si existen valores duplicados
# Función duplicated 
duplicated(niveles)

        #Si solo estamos interesados en conocer si existen valores duplicados 


## Ahora que ya tenemos la base de datos más limpia, podemos hacer cálculos


#Cuando se tienen valores NA, sin que afecten a los cálculos:

#Mean
mean(niveles$NOX, na.rm=T)
        # Se agrega el parámetro na.rm=T para que nos calcule la media sin algún error
        # NA remove ?¿      

#Std
sd(niveles$NOX,na.rm=T)


