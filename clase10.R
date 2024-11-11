# Clase 10 
# UAH 
# Probabilidad y Estadística 
# Carmen Taveras 


# Pregunta de investigación -----------------------------------------------

# ¿Los estudiantes de distintas escuelas (escuela A, B y C) obtienen calificaciones significativamente diferentes en una misma prueba estandarizada?

# ANOVA 

# Respuesta ---------------------------------------------------------------


# Crear un ejemplo de datos
data <- data.frame(
  Centros = rep(c("Centro_A", "Centro_B", "Centro_C"), each = 30),
  Calificacion = c(rnorm(30, mean = 75, sd = 5),  # Calificaciones  A
                   rnorm(30, mean = 80, sd = 5),  # Calificaciones  B
                   rnorm(30, mean = 78, sd = 5))  # Calificaciones  C
)

# Ver un resumen de los datos
summary(data)

# Verlo visualmente

library(ggplot2)

ggplot(data, aes(x = Centros, y = Calificacion, fill = Centros)) +
  geom_boxplot(color = "white") +
  labs(title = "Distribución de Calificaciones por Centros",
       x = "Centros",
       y = "Calificación") +
  theme_classic(base_size = 15) +
  theme(
    plot.background = element_rect(fill = "black"),
    panel.background = element_rect(fill = "gray20"),
    panel.grid.major = element_line(color = "gray40"),
    panel.grid.minor = element_line(color = "gray30"),
    axis.text = element_text(color = "white"),
    axis.title = element_text(color = "white"),
    plot.title = element_text(color = "white", hjust = 0.5)
  ) +
  scale_fill_manual(values = c("lightblue", "lightgreen", "lightcoral"))


# Realizar la prueba ANOVA

anova_result <- aov(Calificacion ~ Centros, data = data)

# Mostrar el resumen de los resultados

summary(anova_result)

# Si el resultado de ANOVA es significativo, realizamos pruebas de comparaciones múltiples
pairwise_result <- pairwise.t.test(data$Calificacion, data$Centros, p.adjust.method = "bonferroni")


pairwise_result


# Chi Cuadrado ------------------------------------------------------------

# ¿Es independiente el acceso a la educación superior del hecho de pertenecer a un pueblo originario?

# Construir Matrix 
observed <- matrix(c(5, 8, 11, 60, 56, 100), 
                   nrow = 2, 
                   byrow = TRUE, 
                   dimnames = list(
                     c("Estudiantes indígenas", "Estudiantes no indígenas"), 
                     c("Accede a universidad", "Acceder a ed. técnica superior", "No accede a educación")
                   ))

# Prueba Chi-Cuadrado
chisq_test <- chisq.test(observed)

# Valores 
observed
expected <- chisq_test$expected
expected
chisq_test

