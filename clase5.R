# Clase 5 -----------------------------------------------------------------

# Prof: PhD(c) Carmen Taveras 
# Probabilidad y Estadística 
# UAH 
# Octubre 2024 

# Operaciones con Probabilidad --------------------------------------------


# Definir el espacio muestral
espacio_muestral <- c(1, 2, 3, 4, 5, 6)

# Definir los sucesos
A <- c(2, 4, 6)   # Suceso A: Obtener un número par
B <- c(4, 5, 6)   # Suceso B: Obtener un número mayor que 3

# Unión de A y B
union_A_B <- union(A, B)
prob_union_A_B <- length(union_A_B) / length(espacio_muestral)
cat("Unión de A y B:", union_A_B, "\n")
cat("Probabilidad de A ∪ B:", prob_union_A_B, "\n\n")

# Intersección de A y B
interseccion_A_B <- intersect(A, B)
prob_interseccion_A_B <- length(interseccion_A_B) / length(espacio_muestral)
cat("Intersección de A y B:", interseccion_A_B, "\n")
cat("Probabilidad de A ∩ B:", prob_interseccion_A_B, "\n\n")

# Diferencia de A y B (A - B)
diferencia_A_B <- setdiff(A, B)
prob_diferencia_A_B <- length(diferencia_A_B) / length(espacio_muestral)
cat("Diferencia de A - B:", diferencia_A_B, "\n")
cat("Probabilidad de A - B:", prob_diferencia_A_B, "\n\n")

# Complemento de A
complemento_A <- setdiff(espacio_muestral, A)
prob_complemento_A <- length(complemento_A) / length(espacio_muestral)
cat("Complemento de A:", complemento_A, "\n")
cat("Probabilidad de A':", prob_complemento_A, "\n")

# Definir los parámetros de la distribución binomial
n <- 8       # Número de ensayos (productos seleccionados)
p <- 0.10    # Probabilidad de éxito (que un producto sea defectuoso)
x <- 2       # Número de éxitos deseados (exactamente 2 productos defectuosos)

# Calcular la probabilidad usando la función dbinom
prob_exactamente_2_defectuosos <- dbinom(x, size = n, prob = p)
prob_exactamente_2_defectuosos

# Definir el parámetro de la distribución de Poisson
lambda <- 4   # Media de llamadas por minuto
x <- 6        # Número de llamadas deseadas

# Calcular la probabilidad usando la función dpois
prob_exactamente_6_llamadas <- dpois(x, lambda)
prob_exactamente_6_llamadas

# Definir los parámetros de la distribución normal
media <- 70             # Media de las calificaciones
desviacion_estandar <- 10  # Desviación estándar de las calificaciones

# Calcular la probabilidad de que la calificación esté entre 65 y 85
probabilidad <- pnorm(85, mean = media, sd = desviacion_estandar) - pnorm(65, mean = media, sd = desviacion_estandar)
probabilidad

# Hagalo Usted. Repita los ejemplos pensando en ejemplos útiles para su vida real. 