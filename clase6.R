# Clase 6 -----------------------------------------------------------------

# Prof: PhD(c) Carmen Taveras 
# Probabilidad y Estadística 
# UAH 
# Octubre 2024 

# Distribuciones de Probabilidad I--------------------------------------------


# Ejemplo Distribución Binomial -------------------------------------------

#Supongamos que estás fabricando productos en una línea de producción 
#y la probabilidad de que un producto sea defectuoso es del 10% . 
#Si revisas 20 productos ¿cuál es la probabilidad de encontrar exactamente 2 productos defectuosos?

# Definir los parámetros
n <- 20  # número de ensayos
x <- 2   # número de éxitos que estamos buscando (productos defectuosos)
p <- 0.1 # probabilidad de éxito (producto defectuoso)

# Calcular la probabilidad usando la fórmula binomial
probabilidad <- choose(n, x) * (p^x) * ((1 - p)^(n - x))

# Mostrar el resultado
probabilidad


# Distribución Poisson ----------------------------------------------------

#Imagina que trabajas en el departamento de calidad de una fábrica de autos 
#y estás monitoreando el número de defectos que ocurren en las carrocerías que produce la línea de ensamblaje. E
#En promedio, ocurren 3 defectos por día en la línea de producción. 
#Quieres calcular la probabilidad de que ocurran exactamente 5 defectos en un día.

# Parámetros del problema
lambda <- 3  # tasa promedio de eventos (defectos por día)
k <- 5       # número de eventos que queremos analizar (defectos)

# Calcular la probabilidad usando la función dpois en R
probabilidad <- dpois(k, lambda)

# Mostrar el resultado
probabilidad


# Distribución Binomial Negativa ------------------------------------------

#Imagina que eres el encargado de una fábrica, y tienes una máquina que produce piezas. 
#La probabilidad de que una pieza salga defectuosa es del 20% 
#Quieres saber cuál es la probabilidad de que antes de obtener 3 piezas buenas (éxitos), se produzcan 4 piezas defectuosas (fracasos)

# Parámetros del problema
r <- 3  # número de éxitos (piezas buenas)
p <- 0.8  # probabilidad de éxito (pieza buena)
x <- 4  # número de fracasos (piezas defectuosas)

# Calcular la probabilidad usando la distribución binomial negativa
probabilidad <- dnbinom(x, r, p)

# Mostrar el resultado
probabilidad


# Distribución Continua Exponencial ---------------------------------------

#Imagina que la tasa de llegada de clientes a una tienda es λ=2\lambda = 2λ=2 clientes por hora. Pu
#Puedes usar la distribución exponencial para calcular, por ejemplo, la probabilidad de que llegue un cliente en los primeros 15 minutos, o el tiempo promedio de espera entre clientes.


# Parámetros del problema
lambda <- 2   # Tasa de 2 clientes por hora
x <- 0.25     # Tiempo en horas (15 minutos = 0.25 horas)

# Calcular la probabilidad de que el evento ocurra antes de 0.25 horas
probabilidad <- pexp(x, rate = lambda)

# Mostrar el resultado
probabilidad


# Distribución Gamma ------------------------------------------------------

#Supongamos que una máquina en una fábrica tiene un ciclo de reparación con múltiples fases. 
#Queremos modelar el tiempo que tarda en completarse la reparación, donde se necesitan 3 fases antes de que la máquina vuelva a estar operativa
#y cada fase tiene una tasa de reparación de 1 fase por hora

# Parámetros del problema
alpha <- 3  # Número de fases (forma)
lambda <- 1  # Tasa de reparación (escala)
x <- 5  # Tiempo máximo (5 horas)

# Calcular la probabilidad usando la función de distribución acumulada Gamma
probabilidad <- pgamma(x, shape = alpha, rate = lambda)

# Mostrar el resultado
probabilidad

