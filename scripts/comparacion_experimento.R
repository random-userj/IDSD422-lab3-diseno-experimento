# TODO 1: Cargar la plantilla de registro del experimento
df <- read.csv("plantillas/registro_experimento.csv")

# TODO 2: Calcular el promedio de ventas por ubicación
cat("--- Promedio de ventas por ubicación ---\n")
promedios <- aggregate(ventas_producto ~ ubicacion, data = df, FUN = mean)
print(promedios)

# TODO 3: Mostrar cuántas observaciones hay por cada grupo (tamaño de muestra)
cat("\n--- Conteo de observaciones por grupo ---\n")
conteos <- table(df$ubicacion)
print(conteos)

# TODO 4: Imprimir la interpretación de por qué esto no es suficiente
cat("\n--- Interpretación de los límites ---\n")
cat("El pasillo principal muestra mayor venta promedio ($1335 vs $1040).\n")
cat("Sin embargo, con solo 4 filas (2 por grupo) no se puede concluir nada.\n")
cat("Faltan datos, no hay asignación aleatoria real, no hay control de temporada\n")
cat("y no tenemos una medida de variabilidad para descartar que sea simple azar.\n")

