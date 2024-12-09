# UAH 
# Probabilidad y Estadística
# Clase 12 

# Regresión Lineal --------------------------------------------------------


# Cargar el dataset mtcars
data(mtcars)

# Ver las primeras filas del dataset
head(mtcars)

# Regresión 1: Predicción del rendimiento de combustible (mpg) en función de la potencia del motor (hp) y el peso (wt)
modelo1 <- lm(mpg ~ hp + wt, data = mtcars)

# Resumen del modelo
summary(modelo1)

# Regresión 2: Predicción del rendimiento de combustible (mpg) en función de todos los predictores
modelo2 <- lm(mpg ~ ., data = mtcars)

# Resumen del modelo
summary(modelo2)

# Regresión 3: Predicción del rendimiento de combustible (mpg) en función del número de cilindros (cyl) y del tipo de transmisión (am)
modelo3 <- lm(mpg ~ cyl + am, data = mtcars)

# Resumen del modelo
summary(modelo3)

# Graficar la regresión 1: Relación entre hp y mpg
plot(mtcars$hp, mtcars$mpg, main = "Relación entre hp y mpg", xlab = "Horsepower (hp)", ylab = "Miles per Gallon (mpg)", pch = 19)
abline(modelo1, col = "red")

# Graficar la regresión 2: Ajuste global
plot(mtcars$wt, mtcars$mpg, main = "Relación entre wt y mpg", xlab = "Weight (wt)", ylab = "Miles per Gallon (mpg)", pch = 19)
abline(modelo2, col = "blue")

# Graficar la regresión 3: Relación entre cyl y mpg
boxplot(mpg ~ cyl, data = mtcars, main = "Rendimiento de combustible por número de cilindros", xlab = "Número de Cilindros", ylab = "Miles per Gallon (mpg)")

# Si quieren exportar los resultados de regresión a WORD, EXCEL, ETC, pueden ocupar ´screenreg´ 

