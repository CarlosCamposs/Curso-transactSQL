
# Sesion 68

## Ubicación de la carpeta:   C:\Users\Carlos Campos\Desktop\GitHub\Curso-transactSQL\Recursos
    # Las diagonales tenemos que invertirlas
    # C:/Users/Carlos Campos/Desktop/GitHub/Curso-transactSQL/Recursos

setwd("C:/Users/Carlos Campos/Desktop/GitHub/Curso-transactSQL/Recursos")


Estudiantes<-read.csv(file="Ejemplo+Estudiantes.csv", header = TRUE, sep = ",", dec = ".", row.names = 1)
    # El archivo tiene separadores con "," y los decimales están puestos con "."
    # En row.names estamos indicando que las filas tienen nombre


# Como indicamos que la tabla tiene encabezados, podemos pedir que nos muestre el nombre de las columnas
names(Estudiantes)

# Con el comando str podemos ver qué tipo de variables tiene cada columna
str(Estudiantes)

# Si queremos guardar en nuestra computadora la información que tiene el objeto "Estudiantes" utilzamos el
# comando:    write.csv()

write.csv(Estudiantes,"C:/Users/Carlos Campos/Desktop/GitHub/Curso-transactSQL/Recursos/Estudiantes guardado desde R.csv")




