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


##### Obtener el monto vendido de cada uno de los productos en ambas tiendas

Papeleria$Subtotal<-Papeleria$Precio_Unitario*(Papeleria$Suc1_Cantidad+Papeleria$Suc2_Cantidad)
Papeleria$Subtotal





