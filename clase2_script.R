
# Clase 2 -----------------------------------------------------------------

# Prof: PhD(c) Carmen Taveras 
# Probabilidad y Estadística 
# UAH 
# Agosto 2024 


# Objetivos de la sesión --------------------------------------------------

# 1. Ocupar paquetes para calcular medidas de tendencia central 
# 2. Ocupar paquetes para calcular quintiles
# 3. Interpretar la media 


# Antes de empezar: Instalar Paquetes y Librerías -------------------------

install.packages("dplyr") # Esto solo se hace una vez en tu ordenador
library(dplyr) # Siempre debes cargar las librerías
install.packages("ggplot2")

# Primera parte: Crear conjunto de datos de ejemplo -----------------------

# 1. Recuerden que en R podemos ocupar objetos y funciones para crear datos y bases de datos

set.seed(123)  # Para reproducibilidad y genera números aleatorioa
ingresos <- rnorm(1000, mean = 50000, sd = 15000) # Creamos un valor con los ingresos
edad <- rnorm(1000,mean=45, sd=7)
datos <- data.frame(id = 1:1000, ingreso = ingresos, edad=edad) # Creamos un data frame con los datos


# Segunda Parte: Crear quintiles de ingreso -------------------------------

# 2. Crear quintiles de ingreso

datos$quintil <- cut(datos$ingreso, 
                     breaks = quantile(datos$ingreso, probs = seq(0, 1, 0.2)),
                     labels = 1:5, 
                     include.lowest = TRUE)

# 3. Verificar la distribución de observaciones en cada quintil
table(datos$quintil)


# Tercera Parte: Obtener Estadística Descriptiva con comandos--------------------------

# 1. Ocupando comandos: 

mean(datos$ingreso) # Cuál es el promedio de ingresos? 
median(datos$ingreso)  # Cuál es la mediana de ingresos?

# Hazlo tu ahora: Cuál es la edad promedio? Cómo la obtenemos? Cómo se interpreta
mean(datos$edad)
median(datos$edad)

# Cuarta Parte: Obtener Estadística Descriptiva con Objetos ---------------

# 2. Ocupando objetos: 
  
library(dplyr)
resumen_quintiles <- datos %>% # tambien se puede ocupar |>
  group_by(quintil) %>%
  summarise(
    n = n(),
    ingreso_medio = mean(ingreso),
    ingreso_mediano = median(ingreso),
    ingreso_min = min(ingreso),
    ingreso_max = max(ingreso)
  )

print(resumen_quintiles)

# 3. Visualizar 

library(ggplot2)
ggplot(datos, aes(x = quintil, y = ingreso)) + # Cómo es la distribución de ingreso por quintil? 
  geom_boxplot() +
  labs(title = "Distribución de Ingresos por Quintil",
       x = "Quintil",
       y = "Ingreso")

library(ggplot2) 

ggplot(datos, aes(x = quintil, y = edad)) + # Cómo es la distribución de ingreso por edad? 
  geom_boxplot() +
  labs(title = "Distribución de Ingresos por Quintil",
       x = "Quintil",
       y = "Edad")


hist(datos$edad, main="Histograma de Edad", xlab="Edad")

