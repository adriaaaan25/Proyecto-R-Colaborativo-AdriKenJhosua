
#Working directory

setwd("~/GitHub/Proyecto-R-Colaborativo-AdriKenJhosua")

#Base de datos

library(readr)
base = read_csv( "dataset.csv" )
base

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
