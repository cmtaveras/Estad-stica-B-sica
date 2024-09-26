# Probabilidad y Estadística 
# Clase 4 
# UAH 
# Prof. Carmen Taveras, PhD (C)


# Objetivos ---------------------------------------------------------------

#. Aprender a calcular probabilidades en R 
#. Conocer comandos de aplicación de probabilidad 



# # Ejercicio 1: Calcular la probabilidad de un suceso usando la suma--------


# Suceso A: lanzar un dado y obtener un número mayor o igual a 5
# Suceso B: lanzar un dado y obtener un número impar

A <- c(5, 6)
B <- c(1, 3, 5)

# Probabilidad de A
P_A <- length(A) / 6 # dice cuantos N hay en el espacio muestral 
# Probabilidad de B
P_B <- length(B) / 6
# Probabilidad de la intersección de A y B
P_A_inter_B <- length(intersect(A, B)) / 6 # Calcula la probabilidad de intersección en los sucesos

# Probabilidad de A o B
P_A_union_B <- P_A + P_B - P_A_inter_B
P_A_union_B


# # Ejercicio 2: Probabilidad condicional ---------------------------------


# Dado que lanzamos dos dados, calcular la probabilidad de que la suma sea mayor o igual a 8 dado que el primer dado muestra un número impar
# Definimos los pares posibles y calculamos la probabilidad condicional

# Definir los resultados posibles
resultados <- expand.grid(dado1 = 1:6, dado2 = 1:6)

# Filtrar resultados donde dado1 es impar
resultados_impar <- subset(resultados, dado1 %% 2 != 0)

# Calcular la probabilidad condicionada
prob_condicionada <- nrow(subset(resultados_impar, dado1 + dado2 >= 8)) / nrow(resultados_impar)
prob_condicionada


# # Ejercicio 3: Distribución Binomial ------------------------------------


# Simular la probabilidad de obtener 3 éxitos en 5 lanzamientos de una moneda con probabilidad de éxito 0.5


n <- 5 # número de ensayos
p <- 0.5 # probabilidad de éxito
x <- 3 # número de éxitos

prob_binomial <- dbinom(x, n, p)
prob_binomial


# # Ejercicio 4: Distribución Poisson -------------------------------------


# Calcular la probabilidad de que ocurran exactamente 3 eventos en un intervalo de tiempo dado una tasa de ocurrencia de 2 eventos por intervalo

lambda <- 2 # tasa de ocurrencia
k <- 3 # número de eventos

prob_poisson <- dpois(k, lambda)
prob_poisson


# # Ejercicio 5: Distribución Normal --------------------------------------

# Calcular la probabilidad de que una variable normal estándar sea menor a 1.96

prob_normal <- pnorm(1.96)
prob_normal



# # Ejercicio 6: Distribución Normal --------------------------------------


# Definir los parámetros de la distribución normal
media <- 5000  # Media de la distribución
desviacion_estandar <- 300  # Desviación estándar de la distribución

# Calcular la probabilidad de que la carga sea mayor o igual a 4500 kg
carga <- 4500

# Usar la función pnorm para calcular la probabilidad acumulada de que la carga sea menor a 4500 kg
prob_fallo_menor_4500 <- pnorm(carga, mean = media, sd = desviacion_estandar)

# La probabilidad de fallo con carga mayor o igual a 4500 es el complemento
prob_fallo_mayor_4500 <- 1 - prob_fallo_menor_4500
prob_fallo_mayor_4500
