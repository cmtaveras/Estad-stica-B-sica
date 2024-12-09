# Clase 11 
# UAH 
# Probabilidad y Estadística 
# Prof, Carmen Taveras 

options(scipen=999, max.print = 50)

# Correlaciones -----------------------------------------------

# Ocupe el paquete "mtcars" para trabajar en estos ejercicios y responda las siguientes preguntas: 

# Usa la función summary(mtcars) para obtener un resumen estadístico. ¿Cuáles son las medias, medianas y rangos de algunas variables clave como mpg, hp y wt?

# Calcula la matriz de correlación entre todas las variables numéricas usando la función cor(mtcars). ¿Qué patrón general observas en las correlaciones?

# ¿Cuál es la correlación entre mpg (millas por galón) y hp (caballos de fuerza)? ¿Qué indica el signo de esta correlación?

# Usa la función pairs(mtcars) para crear una matriz de gráficos de dispersión. Observa la relación entre diferentes pares de variables. ¿Qué patrones visuales puedes identificar entre mpg, hp, wt y disp?


# Ejercicio Resuelto ------------------------------------------------------

# Cargar y explorar el dataset
data(mtcars)
head(mtcars)  # Muestra las primeras filas del dataset

# Resumen estadístico
library(dplyr)

summary(mtcars)  # Resumen de estadísticas descriptivas


# Calcular la matriz de correlación
cor_matrix <- cor(mtcars)
print(cor_matrix)

# Correlación entre mpg y hp
cor_mpg_hp <- cor(mtcars$mpg, mtcars$hp)
cat("Correlación entre mpg y hp:", cor_mpg_hp, "\n")

# Correlación entre wt y mpg
cor_wt_mpg <- cor(mtcars$wt, mtcars$mpg)
cat("Correlación entre wt y mpg:", cor_wt_mpg, "\n")

# Visualización de correlaciones
# Matriz de gráficos de dispersión
pairs(mtcars)

# Prueba de hipótesis sobre la correlación entre mpg y hp
cor_test_mpg_hp <- cor.test(mtcars$mpg, mtcars$hp)
print(cor_test_mpg_hp)

# Análisis de variables categóricas: Comparación entre transmisión automática y manual
# Crear subconjuntos de datos
mtcars_auto <- subset(mtcars, am == 0)
mtcars_manual <- subset(mtcars, am == 1)

# Correlación entre mpg y hp para transmisión automática
cor_auto <- cor(mtcars_auto$mpg, mtcars_auto$hp)
cat("Correlación entre mpg y hp para transmisión automática:", cor_auto, "\n")

# Correlación entre mpg y hp para transmisión manual
cor_manual <- cor(mtcars_manual$mpg, mtcars_manual$hp)
cat("Correlación entre mpg y hp para transmisión manual:", cor_manual, "\n")

# Interpretación de resultados
cat("Conclusiones:")
cat("\n- La correlación entre mpg y hp es negativa, lo que sugiere que a mayor potencia, menor eficiencia de combustible.")
cat("\n- La variable wt también tiene una fuerte correlación negativa con mpg, lo que indica que vehículos más pesados tienden a consumir más combustible.")
cat("\n- Las diferencias en la correlación de mpg con hp en transmisiones automática y manual pueden sugerir diferencias en el rendimiento entre tipos de transmisión.")

# Reflexión sobre correlación y causalidad
cat("\nReflexión: La correlación no implica causalidad. Por ejemplo, aunque el peso y el consumo de combustible están correlacionados, no necesariamente podemos afirmar que aumentar el peso cause un aumento en el consumo de combustible sin considerar otros factores.")


