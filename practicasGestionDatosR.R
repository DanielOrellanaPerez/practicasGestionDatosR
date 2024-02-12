getwd()
nuevo_dir <- "C:/practicasGestionDatosR"
setwd(nuevo_dir)
if(file.exists(nuevo_dir)) {
  cat("Directorio creado correctamente: ", nuevo_dir, "\n")
} else {
  cat("Fallo al crear direcorio: ", nuevo_dir, "\n")
}
set.seed(25) 
registros = 10

#Ejercicio 1
edades_descubrimientos <- c(2001,2002,1995,1860,1999)
mean(edades_descubrimientos)

#Ejercicio 2
cantidades_artefactos = c(5,7,9,20,8)
print(cantidades_artefactos) 
sum(cantidades_artefactos)

#Ejercicio 3
profundidad_hallazgos = sample(1:150, registros, replace = TRUE)
print(profundidad_hallazgos)
max(profundidad_hallazgos)

#Ejercicio 4
materiales_encontrados = sample(c("Oseo","Mineral","Ceramica", "Metal"))
length(materiales_encontrados)

#Ejercicio 5
años_excavaciones <- c(2001,2002,1995,1860,1999)
length(unique(años_excavaciones))

#Ejercicio 6
matriz = matrix (c(1:9),
                 nrow= 3,
                 ncol= 3,
                 byrow= F,
                 dimnames = list(c(2001,2002,1995), c("Nertobriga","Valencina","Italica")))
print(matriz)
sumafilas = apply(matriz, 1, sum)
print(sumafilas) 

#Ejercicio 7

matriz = matrix (c(1:9),
                 nrow= 3,
                 ncol= 3,
                 byrow= F,
                 dimnames = list(c("hacha","collar","lucerna"), c("Nertobriga","Valencina","Italica")))
print(matriz)
sumafilas = apply(matriz, 1, sum)
print(sumafilas) 
Edad_mas_antigua = sumafilas
mean(sumafilas)

#Ejercicio 8

matriz = matrix (c(1:9),
                 nrow= 3,
                 ncol= 3,
                 byrow= F,
                 dimnames = list(c("Prehistoria","Romano","Moderna"),
                                 c("Petreo","óseos","cerámica")))
print(matriz)
sumafilas = apply(matriz, 1, sum)
print(sumafilas) 
max(sumafilas)

#Ejercicio 9
matriz = matrix (c(1:9),
                 nrow= 3,
                 ncol= 3,
                 byrow= F,
                 dimnames = list(c("Nertobriga","Valencina","Italica"), c(2005,2009,1993)))
print(matriz)
sumafilas = apply(matriz, 1, sum)
print(sumafilas) 
min(sumafilas)

#Ejercicio 10

matriz = matrix (c(1:9),
                 nrow= 3,
                 ncol= 3,
                 byrow= F,
                 dimnames = list(c("Prehistoria","Romano","Moderna"),
                                 c("Petreo","óseos","cerámica")))
print(matriz)
sumacolumnas = apply(matriz, 2, sum)
print(sumacolumnas)

#Ejercicio 11
yacimiento = sample(c("Nertobriga","Valencina","Italica"), registros, replace = TRUE)
tipo_artefactos = sample(c("Petreo","óseos","cerámica"), registros, replace = TRUE)
descripcion = sample(c("herramienta_lítica","cráneo", "Dressel_20"), registros, replace = TRUE)
fecha_descubrimiento = sample(1:150, registros, replace = TRUE)

registros_artefactos <- data.frame(
  yacimiento = yacimiento,
  tipo_artefactos = tipo_artefactos,
  fecha_descubrimiento = fecha_descubrimiento,
  descripcion = descripcion
)
print(registros_artefactos)

#Ejercicio 12

Equipo = sample(c("equipo1_Dani","equipo2_Virginia", "equipo3_Agustin"), registros, replace = TRUE)
yacimiento = sample(c("Nertobriga","Valencina","Italica"), registros, replace = TRUE)
fecha_inicio = sample(1998:2010, registros, replace = TRUE)
fecha_fin = sample(2010:2023, registros, replace = TRUE)

excavaciones_equipo = data.frame(
  Equipo = Equipo,
  yacimiento = yacimiento,
  fecha_inicio = fecha_inicio,
  fecha_fin = fecha_fin
)
print(excavaciones_equipo)

#Ejercicio 13
yacimiento = sample(c("Nertobriga","Valencina","Italica"), registros, replace = TRUE)
edad = sample(1:40, registros, replace = TRUE)
sexo = sample(c("hombre", "mujer"), registros,replace= TRUE)
descripcion = sample(c("presenta_ajuar","sin_ajuar", "enterramiento_secundario"), registros, replace = TRUE)

datos_esqueletos = data.frame(
  yacimiento = yacimiento,
  edad = edad,
  sexo = sexo,
  descripcion = descripcion
)
print(datos_esqueletos)

#Ejercicio 14
yacimiento = sample(c("Nertobriga","Valencina","Italica"), registros, replace = TRUE)
altitud = sample(1:3000, registros, replace = TRUE)
longitud = sample(0:180, registros, replace = TRUE)
latitud = sample(0:90, registros, replace = TRUE)

ubicaciones_geograficas = data.frame(
  yacimiento = yacimiento,
  altitud = altitud,
  longitud = longitud,
  latitud = latitud
)
print(ubicaciones_geograficas)




