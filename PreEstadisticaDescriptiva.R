getwd()
nuevo_dir <- "C:/PreEstadisticaDescriptiva"
setwd(nuevo_dir)
if(file.exists(nuevo_dir)) {
  cat("Directorio creado correctamente: ", nuevo_dir, "\n")
} else {
  cat("Fallo al crear direcorio: ", nuevo_dir, "\n")
}

#Ejercicio1
vector_x <- c(1,2,3,4,5)
vector_y <- c(9.1,2.4,7.5,3.4,3.4)
length(vector_x)

#Un vector es una zona de almacenamiento unidimensional de múltiples valores en un solo lugar. Estos pueden ser números, sitios, etc.
#La diferencia entre vector y lista es que la lista es heterogénea, pudiendo almacenar diferentes tipos de valores, al contrario que el vector que no lo es.
#La longitud de vector_x y de vector_y es de 5.
#(double) Puede procesar el doble de datos decimales y más complejos, pero Si tenemos pocos decimales es recomenlable ponerlo en (float) al tener pocos decimales decimales (decimales simples) y los metemos en (Double) ocupará mucho más espacio. 

#Ejercicio 2

valor_suma <- vector_x + vector_y
print (valor_suma)

valor_resta <- vector_x - vector_y
print(valor_resta)

valor_mult <-  vector_x * vector_y
print(valor_mult)

valor_div <- vector_x / vector_y
print(valor_div)

resultado_potencia <- vector_x^vector_y
print(resultado_potencia)

#Ejercicio 3
resultado_potencia <- vector_y^2
print(resultado_potencia)

#Ejercicio 4
valor_mult <-  vector_y * 10
print(valor_mult)

#Ejercicio 5
valor_suma <- vector_y + 25
print (valor_suma)

#Ejercicio 6
vector_y <- c(9.1,2.4,7.5,3.4,3.4)
max(vector_y)

#Ejercicio 7
vector_y <- c(9.1,2.4,7.5,3.4,3.4)
min(vector_y)

#Ejercicio 8
vector_y <- c(9.1,2.4,7.5,3.4,3.4)
abs(vector_y)

#Ejercicio 9
resultado_raiz <- sqrt(vector_y)
print(resultado_raiz)

#Ejercicio 10
vector_y <- c(9.1,2.4,7.5,3.4,3.4)
sum(vector_y)

#Ejercicio 11

vector_x <- c(1,2,3,4,5)
vector_y <- c(9.1,2.4,7.5,3.4,3.4)

list <- list (c(vector_x,vector_y))
print(list)
typeof(list)
str(list)
View(list)

#La longitud que tiene esta lista un único elemento puesto que es la unión de los vectores x e y. 
#Emplea tanto duble como integer puesto que la coerción, que es la prioridad que tiene un sofwer al transformar un tipo de dato en otro, pasando de datos enteros a decimales.

#Ejercicio12
is.na(list)

#Ejercicio13
vector_z <- c(29, NA, 12, 46, 73)

#Ejercicio14
vector_z <- c(29, NA, 12, 46, 73)
mean(vector_z)

#El resultado de esta media es NA. 
#Esto es porque al controario de las listas, los vectores no pueden almacenar datos heterogeneos.
#La solución para que se me calcule la media del vector_z es crear una lista.

#Ejercicio15

matriz = matrix (c(24,69,3,90,23,56,1,63,87,21,77,19),
                 nrow= 4,
                 ncol= 3,
                 byrow= T)
print(matriz)

#Ejericio16

matriz_filas = matrix (matriz, nrow=T)
print(matriz_filas)

#Ejercicio17

matriza <- matrix(data=1:9, nrow =3, ncol = 3, byrow = T)
print(matriza)
matrizb <- matrix(data=10:18, nrow =3, ncol = 3, byrow = T)
print(matrizb)

#Ejercicio18

suma_matriz <- (matriza + matrizb)
print(suma_matriz)

resta_matriz <- (matriza - matrizb)
print(resta_matriz)

#El resutlado es -9 puesto que los valores de la matriz son mayores a los de matriza

#Ejercicio19
matriz_t <- t(matriz)
matriz_t

#Ejercicio20

constante <- 4
matriz_resultado <-  matriz*constante
print(matriz_resultado)

#Ejercicio 21
matriz_mult <-  matriza * matrizb
print(matriz_mult)

#Ejercicio 22

elemento_segunda_fila_tercera_columna <-matriz_mult[2, 3]
print(elemento_segunda_fila_tercera_columna)
segunda_fila <- matriz_mult [ , 2]
print(segunda_fila)
tercera_columna <- matriz_mult [ , 3]
print(tercera_columna)

#PRÁCTICA TEMA 2

#Ejercicio1

set.seed(123) 
num_cuentas <- round(rnorm(100, mean = 50, sd = 10))
print(num_cuentas)

#Ejercicio 2
mean(num_cuentas)

#Ejercicio 3
median(num_cuentas)

#Ejercicio 4
moda <- as.numeric(names(sort(table(num_cuentas), decreasing = TRUE)[1]))
print(paste("La moda de las cuentas en el yacimiento es:", moda))

#Ejercicio 5

range(num_cuentas)

#Ejercicio 6
quantile(num_cuentas [1])


#Ejercicio 7
percentil_75 <- quantile(num_cuentas, 0.75)
print(paste("El percentil 75 de las cuentas en el yacimiento es:", percentil_75))
  
#Ejercicio 8
varianza=var(num_cuentas)
print(varianza)


#Ejercicio 9
desviacion_estandar <- sd(num_cuentas)
print(desviacion_estandar)

#Ejercicio 10
hist((num_cuentas), main = "histograma",
xlab="cuentas en yacimiento", ylab="Frecuencia")


#Ejercicio 11

boxplot (num_cuentas, main ="diograma",
ylab = "cuentas por yacimiento")

#Ejercicio 12

dx <- dens(num_cuentas)

lines(dx, lwd = 2, col = "blue")
plot(dx, lwd = 2, col = "blue")
main = ("densidad")
rug(jitter(num_cuentas))

#Ejercicio 13
barplot(table(num_cuentas), main = "Grafico de barras",
        xlab = "cuentas en yacimiento", ylab = "frecuencia")  


#Ejercicio 14

set.seed(123) 
registros <- 10
tipos_artef <- c("Armas", "ajuar", "moneda", "utensilio_cerámico", "resto_orgánico")
muestras_tipo_artef <- sample(tipos_artef,registros,replace = TRUE)
print(muestras_tipo_artef)
datos <- data.frame(tipos_artef = muestras_tipo_artef)
print(datos)
table(datos)