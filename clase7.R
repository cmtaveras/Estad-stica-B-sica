# Clase 7 -----------------------------------------------------------------

# Prof: PhD(c) Carmen Taveras 
# Probabilidad y Estadística 
# UAH 
# Octubre 2024 

# Distribuciones de Probabilidad II --------------------------------------------


# Ejemplo Distribución Chi Cuadrado -------------------------------------------

# Vamos a suponer que tienes datos de una encuesta donde se ha preguntado a un grupo de personas su color favorito entre tres opciones: rojo, azul, y verde. 
#La frecuencia observada en tu muestra es la siguiente:

# Frecuencia observada en la muestra
observed <- c(50, 30, 20) #Asigna cada color según tu preferencia

# Frecuencia esperada bajo la suposición de una distribución uniforme
expected <- c(1/3, 1/3, 1/3) * sum(observed)

# Realizamos la prueba Chi-cuadrado
chi_square_test <- chisq.test(observed, p = expected/sum(observed))

# Mostramos los resultados de la prueba
chi_square_test


# # Ejemplo Distribución T Student  ---------------------------------------

# Verificar si la media de la resistencia de un material es significativamente distinta

# Datos de resistencia de las 10 muestras
resistencia <- c(52, 49, 51, 50, 53, 48, 47, 51, 50, 49)

# Realizamos la prueba t de Student, donde el valor esperado es 50
t_test <- t.test(resistencia, mu = 50)

# Mostramos los resultados de la prueba
t_test


# Distribución F Fischer --------------------------------------------------

# Comparar si comprobar si la variabilidad (varianza) en las longitudes de las piezas es significativamente diferente entre las dos máquinas.

# Simulamos los datos de dos máquinas con diferentes varianzas

set.seed(123) # Para reproducibilidad
maquina1 <- rnorm(50, mean = 20, sd = 2)  # Máquina 1, varianza pequeña
maquina2 <- rnorm(50, mean = 20, sd = 4)  # Máquina 2, varianza más grande

# Realizamos la prueba F para comparar las varianzas
var_test <- var.test(maquina1, maquina2) # Es la funcion que se ocupa para hacer la prueba Fischer 

# Mostramos los resultados de la prueba
var_test

# En resumen, chisq.test, t.test y var.test calculan las distribuciones de probabilidad. 


# Intervalos de Confianza -------------------------------------------------

# Goles por equipo de partido 

# Datos: Goles marcados en 15 partidos
goles_por_partido <- c(2, 1, 3, 0, 2, 1, 4, 3, 2, 1, 2, 0, 3, 1, 2)
# Media de goles por partido
media_goles <- mean(goles_por_partido)

# Desviación estándar de los goles por partido
desviacion_goles <- sd(goles_por_partido)

# Tamaño de la muestra (número de partidos)
n <- length(goles_por_partido)

# Nivel de confianza
confianza <- 0.95

# Error estándar de la media
error_estandar_goles <- desviacion_goles / sqrt(n)

# Valor crítico de la distribución t
t_critico_goles <- qt((1 + confianza) / 2, df = n - 1)

# Margen de error
margen_error_goles <- t_critico_goles * error_estandar_goles

# Intervalo de confianza
limite_inferior_goles <- media_goles - margen_error_goles
limite_superior_goles <- media_goles + margen_error_goles

# Mostramos el intervalo de confianza
intervalo_confianza_goles <- c(limite_inferior_goles, limite_superior_goles)
intervalo_confianza_goles

# Qué significa el intervalo de confianza? 


# Otra Alternativa Para Resolver Código Anterior --------------------------

# Podemos ocupar T-Test [Por que tenemos una muestra pequeña]

t.test(goles_por_partido)$conf.int



# Ejemplo en Clases -------------------------------------------------------

# Datos de pesos de los 18 recién nacidos (en kilogramos)
pesos <- c(3.211, 2.405, 3.073, 
           2.872, 3.050, 3.466, 
           3.318, 2.205, 3.884, 
           3.738, 3.034, 3.263, 
           2.691, 2.304, 3.669, 
           3.733, 3.423, 3.425)
# Media de los pesos
media_pesos <- mean(pesos)

# Desviación estándar de los pesos
desviacion_pesos <- sd(pesos)

# Tamaño de la muestra (número de recién nacidos)
n <- length(pesos)

# Nivel de confianza
confianza <- 0.95

# Error estándar de la media
error_estandar_pesos <- desviacion_pesos / sqrt(n)

# Valor crítico de la distribución t
t_critico_pesos <- qt((1 + confianza) / 2, df = n - 1)

# Margen de error
margen_error_pesos <- t_critico_pesos * error_estandar_pesos

# Intervalo de confianza
limite_inferior_pesos <- media_pesos - margen_error_pesos
limite_superior_pesos <- media_pesos + margen_error_pesos

# Mostrar el intervalo de confianza
intervalo_confianza_pesos <- c(limite_inferior_pesos, limite_superior_pesos)
intervalo_confianza_pesos


# Usando t.test para calcular el intervalo de confianza
t.test(pesos)$conf.int
t.test(pesos)
sd(pesos)
mean(pesos)
