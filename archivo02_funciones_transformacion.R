
#Working directory

setwd("~/GitHub/Proyecto-R-Colaborativo-AdriKenJhosua")

#Base de datos

library(readr)
base = read_csv( "dataset.csv" )
View(base)

#Resumen de los datos

base$id = as.factor( base$id )
base$nombre = as.factor( base$nombre ) #Las variables categóricas se cambian a factor 
summary(base) 

#Dimension de los datos

dim(base) #10 filas, 5 columnas

#Promedio de edad

prom_edad = mean( base$edad )
prom_edad

#Promedio de los promedios de notas

prom_pnotas = mean( base$promedio, na.rm = T ) #No se toman en cuenta los NA en el promedio
prom_pnotas

#Promedio de créditos aprobados

prom_creditos = mean( base$creditos_aprobados, na.rm = T ) #No se toman en cuenta los NA en el promedio
prom_creditos

#Función 1

fun1 = function(vec) {
  
  vec = na.omit(vec)
  
  vec = sd(vec)
  return(vec)
  
}

#Función 2

fun2 = function(df) {
  
  cols_con_na <- colnames(df)[colSums(is.na(df)) > 0]
  
  if (length(cols_con_na) > 0) {
    return(cols_con_na)
  } else {
    return("No hay NAs en ninguna columna")
  }
  
}

#Prueba de funciones

fun1(base$promedio) 
fun1(base$creditos_aprobados)

fun2(base)







