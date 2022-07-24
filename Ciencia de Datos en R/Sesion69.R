# Sesion 69

##### Existen cuatro tipos de estructuras donde podemos almacenar datos en R: vectores, matrices, listas y dataframes


##### Los vectores en lenguaje R almacenan solamente valores DEL MISMO TIPO
v<-c(1,"r",3,"t")
v
      # Como existe al menos un caracter tipo str, los números 1 y 3 los toma como str, no como int


##### Veamos que tipo de dato es el vector v
class(v)

str(v)


##### Veremos como concatenar vectores para crear un dataframe

#Uniendo vectores
Producto<-c('lápiz', 'cuaderno','borrador')
Precio_Unitario<-as.double(c(5,25,7)) #Contendrá valores decimales
Suc1_Cantidad<-as.integer(c(3,5,2))
Suc2_Cantidad<-as.integer(c(1,20,9))

#Unimos los vectores para formar un dataframe
Papeleria<-data.frame(Producto,Precio_Unitario,Suc1_Cantidad,Suc2_Cantidad)
      # Los vectores deben tener la misma longitud

##### Comparando los elementos de dos vectores

Papeleria$Papeleria2_Mas_Ventas<-(Papeleria$Suc1_Cantidad < Papeleria$Suc2_Cantidad)
    # Introducierá en una nueva columna el valor de la proposición hecha


##### Multiplicación de vectores

Papeleria$Subtotal<-Papeleria$Precio_Unitario*(Papeleria$Suc1_Cantidad+Papeleria$Suc2_Cantidad)
Papeleria$Subtotal


##### Sumando los valores de un vector
Suma<-sum(Papeleria$Subtotal)
Suma

##### Funcion paste 
print(paste('Monto total de ventas: ', Suma))



##### Obteniendo vectores a partir de un archivo
setwd("C:/Users/Carlos Campos/Desktop/GitHub/Curso-transactSQL/Recursos")


Corredores<-read.csv(file='Maraton+NY.csv',header = T,sep = ',',dec = '.',row.names = 1)
  
#Vemos que se hallan cargado correctamente
str(Corredores)

#Obtenemos los nombre de las variables
nombres_variables<-names(Corredores)
nombres_variables

#Cuál es la posición de la variable 'home' en nombres_variables
which(nombres_variables=='home')

#Verificamos si se trata de un vector
is.vector(nombres_variables)

#Obtenemos uno o varios elementos en específico
nombres_variables[2:3]
      # En R la numeración comienza en 1 (a diferencia de Python, que ese empieza en 0)

nombres_variables[c(1,4)]
      # Muestra posiciones 1 y 4

#Todos excepto el valor de la posición 4
nombres_variables[-4]

#Obtenemos los números de corredor
numero_corredor<-row.names(Corredores)
    #row.names nos sirve para conocer el nombre de las filas, que esto viene a ser el número de corredor

str(numero_corredor)
    #Nos damos cuenta que lo reconoce como str, lo convertimos a número

#Lo convertimos a numérica
numero_corredor<-as.numeric(numero_corredor)
str(numero_corredor)
    #Una vez convertida a numérica, podemos hacer lo siguiente


#Obtener la posición en la que se encuentra un valor determiando
which(numero_corredor==100)
    #Devuelve la posición dentro del vector del corredor cuyo id (numero de corredor) es  igual a 100
numero_corredor[965]


##### Obtener la información del corredor (IMPORTANTE)
corr_100<-Corredores[965, ]
corr_100
    #Dejamos un espacio en blanco para que nos traiga toda la info del corredor en la posición 965


##### Obtener el pais al que pertenece el corredor número 100
corr_100["home"]


##### Obtener la información del país al que pertenecen los corredores
paises<-Corredores$home
paises

##### Si queremos obtener una lista de paises participantes usamos la función unique()
Lista_paises<-unique(Corredores$home)
Lista_paises

##### Conociendo la cantidad de paises que participaron
length(Lista_paises)

##### Ordenamos la lista de paises de forma ASCENDENTE usamos la funcion sort()
Lista_paises<-sort(Lista_paises)
Lista_paises

##### Para obtener los cinco paises que se encuentran en las primeras posiciones
Lista_paises[1:5]

#####Vemos cuales corredores tienen un espacio en blanco en la variable 'home'
Corredores[(Corredores$home==""), ]
    # Son varias columnas, por eso se pone el primer argumento como un vector, y queremos todas las columnas

##### Si quisieramos saber cuál es el tiempo mínimo que se registró durante la cerrera
min(Corredores$time)

  #Para saber en qué fila del dataframe se encuentra el tiempo mínimo
  which(Corredores$time==min(Corredores$time))
      # Esto está bien, pero una alternativa es la siguiente
      which.min(Corredores$time)

##### Si quisieramos saber cuál es el tiempo máximo que se registró durante la cerrera
max(Corredores$time)
    
  #Para saber en qué fila del dataframe se encuentra el tiempo máximo
  which(Corredores$time==max(Corredores$time))
  which.max(Corredores$time)

#####  Obtenemos el número de la fila en donde están los corredores que hicieron menos de 170 min en llegar
    #  a la meta

corredores170<-which(Corredores$time<170)

#Desplegamos toda la información correspondiete a dichos corredores, como son varios corredores, entonces debemos
#usar un vector

Corredores[(corredores170), ]

#Podemos llevar a cabo operaciones sobre los elementos de un vector
Corredores$time_hours<-Corredores$time/60

#Llevamos a cabo reemplazos sobre los elementos de un vector, esto se logra con gsub()
#esto sería equivalente a buscar y reemplazar de Excel o REPLACE de SQL
Corredores$home<-gsub("MEX","MEXICO",Corredores$home)
      #Palabra que reemplazamos, luego por cuál queremos reemplazar, y por último la columna donde haremos esto


##### Graficamos la variable gender
plot(Corredores$gender)
      #No jala la gráfica

str(Corredores$gender)

##### Asignamos niveles a la variable gender para convertirla en ordinal
Corredores$gender<-factor(Corredores$gender,
                          levels=c('Male','Female'), #Los niveles en el orden que queremos
                          ordered=T)  

plot(Corredores$gender)
    #Ya jala


