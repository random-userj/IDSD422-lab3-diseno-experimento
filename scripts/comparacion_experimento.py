import pandas as pd

# TODO 1: Cargar la plantilla de registro del experimento
df = pd.read_csv("plantillas/registro_experimento.csv")

# TODO 2: Calcular el promedio de ventas por ubicación
print("--- Promedio de ventas por ubicación ---")
promedios = df.groupby("ubicacion")["ventas_producto"].mean()
print(promedios)

# TODO 3: Mostrar cuántas observaciones hay por cada grupo (tamaño de muestra)
print("\n--- Conteo de observaciones por grupo ---")
conteos = df["ubicacion"].value_counts()
print(conteos)

# TODO 4: Imprimir la interpretación de por qué esto no es suficiente
print("\n--- Interpretación de los límites ---")
print("El pasillo principal muestra mayor venta promedio ($1335 vs $1040).")
print("Sin embargo, con solo 4 filas (2 por grupo) no se puede concluir nada.")
print("Faltan datos, no hay asignación aleatoria real, no hay control de temporada")
print("y no tenemos una medida de variabilidad para descartar que sea simple azar.")