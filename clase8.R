# Clase 8 -----------------------------------------------------------------

# Prof: PhD(c) Carmen Taveras 
# Probabilidad y Estadística 
# UAH 
# Octubre 2024 

# Intervalos de Confianza, Pruebas Estadística--------------------------------------------



# --------------------------------------------------------
# Ejemplo en salud: Eficacia de un nuevo medicamento para reducir la presión arterial
# --------------------------------------------------------

# 1. Planteamiento de hipótesis:

# H0: El nuevo medicamento no tiene efecto en la reducción de la presión arterial

# HA: El nuevo medicamento reduce la presión arterial promedio

# Simularemos datos para dos grupos: 

# 1. Grupo control (que no toma el medicamento)

# 2. Grupo experimental (que toma el medicamento)

set.seed(123)  # Fijamos una semilla para reproducibilidad

n_pacientes <- 100  # Número de pacientes por grupo

# Simulamos los datos de presión arterial de los dos grupos

# Grupo control (sin medicamento): presión arterial promedio 140 mmHg, desviación estándar 15

grupo_control <- rnorm(n_pacientes, mean = 140, sd = 15)

# Grupo experimental (con medicamento): presión arterial promedio 135 mmHg, desviación estándar 15

grupo_experimental <- rnorm(n_pacientes, mean = 135, sd = 15)

# 2. Visualización de los datos

# Compararemos las distribuciones de presión arterial entre los dos grupos

boxplot(grupo_control, grupo_experimental,
        names = c("Control", "Experimental"),
        main = "Comparación de presión arterial entre grupos",
        ylab = "Presión arterial (mmHg)",
        col = c("lightblue", "lightgreen"))

# --------------------------------------------------------
# 3. Formulación de hipótesis
# --------------------------------------------------------
# H0: La presión arterial promedio es igual en ambos grupos (el medicamento no tiene efecto)

# HA: La presión arterial promedio en el grupo experimental es menor que en el grupo control (el medicamento reduce la presión arterial).

# Usaremos una prueba t de Student para comparar las medias de los dos grupos

prueba_t <- t.test(grupo_experimental, grupo_control, alternative = "less")

# Mostrar el valor p

cat("Valor p de la prueba t:", prueba_t$p.value, "\n")

# --------------------------------------------------------
# 4. Interpretación del valor p y nivel de significancia
# --------------------------------------------------------
# Establecemos un nivel de significancia (alfa), típicamente 0.05.
nivel_significancia <- 0.05

# Decisión:

if (prueba_t$p.value < nivel_significancia) {
  cat("Rechazamos la hipótesis nula. El medicamento parece reducir la presión arterial.\n")
} else {
  cat("No rechazamos la hipótesis nula. No hay evidencia suficiente para decir que el medicamento reduce la presión arterial.\n")
}

# --------------------------------------------------------
# 5. Concepto de Error Tipo I y Tipo II
# --------------------------------------------------------
# Error Tipo I: Rechazamos la hipótesis nula cuando en realidad es verdadera.

# Error Tipo II: No rechazamos la hipótesis nula cuando en realidad es falsa.

# Ahora, simularemos un escenario donde el medicamento en realidad no tiene efecto (H0 es verdadera):

grupo_experimental_sin_efecto <- rnorm(n_pacientes, mean = 140, sd = 15)

# Repetimos la prueba t para este escenario

prueba_t_sin_efecto <- t.test(grupo_experimental_sin_efecto, grupo_control, alternative = "less")

# Mostrar el valor p

cat("Valor p (sin efecto real del medicamento):", prueba_t_sin_efecto$p.value, "\n")

# --------------------------------------------------------
# Reflexión sobre los errores:
# - Si en este caso rechazáramos la hipótesis nula, cometeríamos un Error Tipo I.
# - Si el medicamento realmente fuera efectivo, pero no lo detectamos, cometeríamos un Error Tipo II.
# --------------------------------------------------------

