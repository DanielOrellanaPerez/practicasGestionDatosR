Sys.which("make")
install.packages("jsonlite", type = "source")
getwd()
nuevo_dir <- "C:/practicasGestionDatosR"
setwd(nuevo_dir)
if(file.exists(nuevo_dir)) {
  cat("Directorio creado correctamente: ", nuevo_dir, "\n")
} else {
  cat("Fallo al crear direcorio: ", nuevo_dir, "\n")
}

#1
edades_descubrimientos <- c(2001, 2002, 2003, 2004, 2005)
mean(edades_descubrimientos)

#2
cantidad_artefactos <-c(5, 7, 10, 2, 3)
valor_suma <-(5+7+10+2+3)
print(valor_suma)

#3
hallazgos <- (c("Yac1","Yac2","Yac3"))
profundidad <- (c(4,5,6))
max(profundidad)

#4
set.seed(123)
n_registros <- 10

tipo_artefacto <- sample(c("asa", "base", "indeterminado"), n_registros, replace = TRUE)
cantidad_artefactos <- sample(1:10, n_registros, replace = TRUE)

archaeological_data <- data.frame(
  tipo_artefacto = tipo_artefacto,
  cantidad_artefactos = cantidad_artefactos
)
print (archaeological_data)

unique(tipo_artefacto) 

#5

años_excavaciones <- c(2001, 2002, 2003, 2004, 2005)
valor_resta <- 2001-2005
print(valor_resta)

#6

set.seed(123)
n_registros <- 3

yacimiento <- sample(c("Nertobriga","Valencina","Italica"), n_registros, replace = TRUE)
excavaciones <- sample (2001, 2002, 2003), n_registros, replace = TRUE)

archaeological_data <- data.frame(
  yacimiento = yacimiento,
typeof(vector)
matriz1 <- matrix(c(2001, 2002, 2003, 2004, 2005), 
                  nrow = 2001, ncol =2003,
                  byrow = F)
