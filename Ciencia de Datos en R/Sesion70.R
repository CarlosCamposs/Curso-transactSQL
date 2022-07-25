# Sesion 70

# Matrices

#Creamos una matriz

numeros<-matrix(1:20, nrow=4, byrow=T)
numeros
      # Con el parámetro byrow estamos indicando que queremos que llene la matriz de izquierda a derecha (por filas)
      # y no de arriba a abajo

#Vemos de qué tipo es el objeto matriz
class(numeros)

is.matrix(numeros)

#Extramos la dimension de la matriz
dim(numeros)

#Tipo de datos (output:numeric)
mode(numeros)

#Número de datos
length(numeros)


#Matriz transpuesta
numeros_transp<-t(numeros)
      #La función t(x) donde x es una matriz nos devuelve la matriz transpuesta de x

dim(numeros_transp)

#Creamos una nueva matriz pero ahora colocando los valores de arriba hacia abajo
numeros_2<-matrix(1:20,nrow=5,byrow=F)
numeros_2
      # Al poner FALSE estoy pidiendo que llena la matriz por columnas, de arriba a abajo y luego pase a la sig.


#Creamos una matriz con números y caracteres
matriz_caracteres<-matrix(c(1,2,"uno","dos"), nrow=2)
matriz_caracteres
        # Ocurre lo mismo que en vectores, ahora los números 1 y 2 los reconoce como caracter, en lugar de número


#Asignamos nombres a las COLUMNAS de la matriz
colnames(numeros_2)<-c("A","B","C","D")
numeros_2

#Asignamos nombres a las FILAS de la matriz
rownames(numeros_2)<-c("Fila_1","Fila_2","Fila_3","Fila_4","Fila_5")
numeros_2

#Obtenemos los nombres de las filas y las columnas
dimnames(numeros_2)

# Extrayendo valores de la matriz

#Una fila
numeros_2[2,]
numeros_2["Fila_2",]

#Una columna
numeros_2[,3]
numeros_2[,"C"]

#Una porción de la matriz
numeros_2[1:3,1:3]
      #Regresa desde la primera y tercera fila, hasta la primera y tercera columna

numeros_2[c("Fila_1","Fila_3","Fila_3"),c("A","B","C")]


#Una entrada determinada de la matriz
numeros_2[3,4]


# Función apply() 
suma_por_fila<-apply(numeros_2,1,sum)
suma_por_fila

        # La función nos permite aplicar una función sobre una columna o una fila
        # El 1 es para indicar que vaya recorriendo LAS FILAS (más abajo se muestra por columna)

# Función cbind
numeros_2<-cbind(numeros_2,suma_por_fila)
numeros_2

        # La función cbind nos permite agregar valores como una columna de una matriz (column bind)


suma_por_columna<-apply(numeros_2,2,sum)
suma_por_columna
        # El 2 es para indicar que vaya recorriendo las COLUMNAS

# Función rbind
numeros_2<-rbind(numeros_2,suma_por_columna)
numeros_2

#Multiplicación de una escalar po una columna
impuesto<-numeros_2[,"suma_por_fila"]*1.16
impuesto


#Agregamos esta nueva columna a la matriz
numeros_2<-cbind(numeros_2,impuesto)
numeros_2














