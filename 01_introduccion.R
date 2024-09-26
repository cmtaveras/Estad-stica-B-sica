# Taller  R 2024 - sesión 1
# 21/08/2024
# Introducción a R 


# Presentación de RStudio -------------------------------------------------


# RStudio es un programa que te ayuda a escribir, ejecutar, y visualizar código en el lenguaje de programación R. 
# Es muy usado en estadística y ciencia de datos porque facilita el análisis de datos, la creación de gráficos, y la gestión de proyectos. Es una herramienta clave para quienes trabajan con datos.

# Funciona como una gran calculadora
23 + 67 # para ejecutar este código tenemos que seleccionar y precionar arriba donde dice "Run" 
2+1000
45 * 23 - 79
34>23
# Escribe aquí un ejemplo propio

# El funcionamiento de RStudio es a través de tres partes principales: 

# Script: donde escribimos nuestro código 
# Consola: donde vemos los resultados de nuestro código
# Ambiente global: donde vamos guardando lo que vamos creando, lo cual R llama, objetos. 
# Los objetos  pueden ser números, palabras, resultados, funciones, etc.

a <- 100 #Guardamos 100 dentro del objeto a
b <- 4   #Guardamos 4 dentro del objeto b
c <- 1+1 #Guardamos el resultado de 1+1 en c
nombres <-c("carmen","mateo","sebastian","hugo","catalina","maria")
# Operadores en R ---------------------------------------------------------


# <	Menos que
# >	Mayor que
# <=	Menor o igual que
# >=	Mayor o igual que
# ==	Igual que
# !=	Distinto de

x <- 5
y <- 16
x<y
x>y
x<=5
y>=20
y == 16
x != 5


# Tipos de datos en R -----------------------------------------------------

# Numérico (numeric; números con decimales)
# Números enteros (integer)
# Lógicos: Verdadero o Falso
# Variables cadena o texto (string / character)
# Factores (factor): para variables cualitativas (nominales)


# Tipos de estructura de datos --------------------------------------------

# Vector (vector) columna o fila de datos numéricos (una variable individual)
# Matrices (matrix): arreglo de dos dimenisones de datos numéricos (conjunto de variables)
# Data.frame (base de datos): Matriz de datos en el que las columnas tienen adignado nombres, y que permite usar todo tipo de datos.

x1 <- 1:20 # qué hice aquí? 
x
z <- NA
z

# Además, para trabajar en R se sugiere hacerlo siempre desde un directorio conocido. 

# Por lo que se recomienda, siempre, tener claridad de tu espacio de trabajo. 
# Esto lo veremos más adelante 

# Creación de objetos -----------------------------------------------------

# Vamos a crear nuestro primer "objeto". Es decir, un archivo donde trabajaremos con R y haremos algunos análisis sencillos


# Este es un objeto simple con un único valor: 

dia_semana <- "viernes" # Estos objetos se guardan en el ambiente global
dia_mes <- 22

print(dia_mes) # El comando "Print" nos ayuda a saber qué hay dentro de un objeto y se visualiza desde la consola 
dia_mes
dia_mes + 7 # En esta operación, le digo a R que al objeto dia_mes creado, le sume 7 

# Ahora vamos a crear un objeto que tenga varios valores

edades <- c(18,18,20,20,21,22,23,18,20,23) # crearlo con las edades del grupo; preguntarle a cada alumno/a
nombres  <- c("d","c") # crearlo con los nombres del grupo; preguntarle a cada alumno/a

# las funciones en R tienen la siguiente estructura nombrefuncion(argumentos)

# la lógica de R: aplicar funciones a objetos que contienen datos o valores

mean(edades) # Veamos la edad promedio del curso 
min(edades) # Veamos el mínimo de edad; ocupamos la función min 
max(edades) # Idem
sum(edades) # Idem 

# Errores comunes en R 

mean(Edades) # sensibles a mayúsculas y minúsculas ; cuál es el error? 

# Si quiero eliminar un objeto de mi ambiente global, lo puedo hacer con rm(nombreobjeto)

# Cómo hago para eliminar el objeto "dia_mes"?
 rm(dia_mes)

maen(edades)
read_excel("datos.xlsx")

# Advertencia

meses <- c("enero", "febrero", "marzo")
mean(meses)

# NA: Not Available = datos faltantes / datos perdidos / etc.

# Sensible además al tipo de variable (cómo vimos en el módulo 1)

numeros <- c(23, 45, 12, 67, "quince")
numeros2 <- c(23, 45, 12, 67, NA)

mean(numeros)
mean(numeros2)
mean(numeros2, na.rm = TRUE) # con na.rm lo que hacemos es decirle a R que ignore los valores perdidos
sum(numeros2)


# El orden en cómo se ejecuta el código es importante 

a <- 70
b <- a
b * 50
a * 1 



# Importación de base de datos --------------------------------------------

install.packages("haven") #cargar .sav (SPSS)
library(haven) #Cargar la librería

library(readxl)

registro_nombres <- read_excel("registro_nombres.xlsx")

# Qué contiene esa base de datos? 
