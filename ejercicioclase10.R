# Clase 10 - Ejercicio en Clases
# UAH 
# Probabilidad y Estadística 
# Carmen Taveras 



# ANOVA -------------------------------------------------------------------

# Crear el data frame
datos <- data.frame(
  Metodo = factor(rep(c("Tradicional", "En línea", "Tutoría grupal"), each = 5)),
  Tiempo = c(15, 18, 21, 20, 16, 25, 28, 26, 30, 29, 22, 24, 23, 21, 19)
)

# Realizar el ANOVA
resultado_anova <- aov(Tiempo ~ Metodo, data = datos)

# Mostrar resultados
summary(resultado_anova)


# CHI-CUADRADO ------------------------------------------------------------

# Crear la matriz de contingencia
tabla <- matrix(c(15, 20, 25, 30, 10, 25), 
                nrow = 2, 
                byrow = TRUE,
                dimnames = list(
                  c("Masculino", "Femenino"),
                  c("Matemáticas", "Ciencias", "Literatura")
                ))

# Realizar la prueba Chi-Cuadrado
resultado_chi <- chisq.test(tabla)

# Mostrar resultados
resultado_chi
