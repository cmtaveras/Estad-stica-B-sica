# Clase 9 -----------------------------------------------------------------

# Prof: PhD(c) Carmen Taveras 
# Probabilidad y Estadística 
# UAH 
# Noviembre 2024 


# Probabilidad ------------------------------------------------------------

# Parámetros
bolas_rojas <- 6 
bolas_totales <- 3 + 2 + 5
# Probabilidad de sacar una bola roja
prob_roja <- bolas_rojas / bolas_totales 
prob_roja

# Parámetros
cartas_rojas_restantes <- 3
cartas_totales_restantes <- 9
# Probabilidad condicional
prob_condicional_roja <- cartas_rojas_restantes / cartas_totales_restantes 
prob_condicional_roja


# Prueba T ----------------------------------------------------------------


# Formular Hipótesis Nula y Alternativa 

# Datos de las calificaciones luego de implementar la estrategia

calificaciones <- c(72, 68, 74, 71, 87,89,90,92,45,89,101,90,75,71,72,60)

# Realizar la prueba t de una muestra (prueba unilateral)

t_test <- t.test(calificaciones, mu = 70, alternative = "greater")

# Notar: Este el tipo de prueba T que compara la media con un valor conocido (70)

# Mostrar el resultado
t_test
