# Clase 3 -----------------------------------------------------------------

# Prof: PhD(c) Carmen Taveras 
# Probabilidad y Estadística 
# UAH 
# Agosto 2024 


# Objetivos de la sesión --------------------------------------------------

# 1. Calcular media
# 2. Calcular varianza
# 3. Calcular desviación estándar
# 4. Calcular error estándar
# 5. Interpretar cada valor de manera sustantiva 


# Cargar Librerías --------------------------------------------------------

# En la sesión pasada vimos que para asegurarse de que R funcione correctamente las librerías deben estar "cargadas"

library(dplyr) 

# Crear base de datos --------------------------------------------------------

# Vamos a utilizar el dataset 'mtcars' incluido en R
data("mtcars")

# Pregunta de investigación --------------------------------------------------------

# ¿Cuál es la variabilidad en el rendimiento de combustible de los automóviles (millas por galón, mpg) en el dataset mtcars?

# Análisis --------------------------------------------------------

# Medidas descriptivas para mpg
mean_mpg <- mean(mtcars$mpg) #calcula la media
var_mpg <- var(mtcars$mpg) # calcula la varianza; es intuitiva la interpretación de la varianza? 
sd_mpg <- sd(mtcars$mpg) # calcula la desviación estándar 
se_mpg <- sd_mpg / sqrt(length(mtcars$mpg)) # calcula el error estándar 

# Crear un data frame con las medidas descriptivas
tabla_medidas <- data.frame(
  Medida = c("Media", "Varianza", "Desviación estándar", "Error estándar"),
  Valor = c(mean_mpg, var_mpg, sd_mpg, se_mpg)
)

# Visualizar la tabla
print(tabla_medidas)

# Visualización 1 --------------------------------------------------------
hist(mtcars$mpg, main = "Histograma de millas por galón (mpg)", xlab = "pes (mpg)", col = "skyblue", border = "black")
boxplot(mpg ~ cyl, data = mtcars, main = "Diagrama de caja de mpg por número de cilindros", xlab = "Número de cilindros", ylab = "Millas por galón (mpg)", col = c("lightgreen", "lightblue", "lightcoral"))


# Visualización de la distribución 2 --------------------------------------

par(mfrow=c(2, 2))  # Organizar los gráficos en una cuadrícula de 2x2

# 1. Histograma de 'mpg' con curva de densidad
hist(mtcars$mpg, 
     breaks = 10, 
     col = "skyblue", 
     border = "black", 
     probability = TRUE, 
     main = "Histograma y Curva de Densidad de mpg",
     xlab = "Millas por galón (mpg)")
lines(density(mtcars$mpg), col = "red", lwd = 2)

# 2. Gráfico de Densidad
plot(density(mtcars$mpg), 
     main = "Gráfico de Densidad de mpg", 
     xlab = "Millas por galón (mpg)", 
     col = "blue", 
     lwd = 2)
polygon(density(mtcars$mpg), col = "lightblue", border = "blue")

# 3. Q-Q Plot (Gráfico de Cuantiles-Cuantiles)
qqnorm(mtcars$mpg, 
       main = "Q-Q Plot para mpg", 
       col = "darkgreen")
qqline(mtcars$mpg, col = "red", lwd = 2)


# Descripción de cada variable --------------------------------------------

cat("Variable Names and Types in the 'mtcars' Dataset:\n")
cat("1. mpg  - Miles per Gallon (Numeric/Continuous)\n")
cat("2. cyl  - Number of Cylinders (Integer/Categorical)\n")
cat("3. disp - Displacement in cubic inches (Numeric/Continuous)\n")
cat("4. hp   - Horsepower (Numeric/Continuous)\n")
cat("5. drat - Rear Axle Ratio (Numeric/Continuous)\n")
cat("6. wt   - Weight in 1000 lbs (Numeric/Continuous)\n")
cat("7. qsec - 1/4 mile time in seconds (Numeric/Continuous)\n")
cat("8. vs   - Engine Shape (0 = V, 1 = Straight) (Integer/Categorical)\n")
cat("9. am   - Transmission (0 = Automatic, 1 = Manual) (Integer/Categorical)\n")
cat("10. gear - Number of Forward Gears (Integer/Categorical)\n")
cat("11. carb - Number of Carburetors (Integer/Categorical)\n")


# Elige una variable numerica y repite el análisis anterior 



