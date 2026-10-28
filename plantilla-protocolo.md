# Plantilla de protocolo — Experimento de ubicación de producto

**Equipo:** ___ · **Integrantes:** ___ · **Fecha:** 27/10/2026

Completa cada sección. Usa commits por sección; la historia del repositorio se revisa.

## 1. Pregunta e hipótesis
ubicacion habitual en ventas semanales durante 4 semanas

## 2. Unidad experimental

Semana-Tienda(**# de tiendas X # de semanas**)

- 10 tiendas x 4 semanas = 40 unidades

## 3. Factor, niveles y tratamiento

- **Factor** (variable manipulada):
Ubicación
- **Niveles** (valores del factor):
Pasillo y Habitual
- **Tratamiento** (combinación asignada):
Pasillo durante una semana y ubicación habirutal durante otra (grupo de control)

## 4. Grupo de control

La misma tienda pero con el producto dispuesto en la ubicacion habitual.

## 5. Aleatorización

*¿Cómo se asignan las unidades a los grupos? ¿Por qué es necesaria?*

- **Línea de código de la asignación (Python o R):** escribe el comando que asigna al azar tus N unidades a los dos grupos (tratamiento y control) y ejecútalo con semilla. Incluye el resultado de una corrida y explica por qué el sorteo reparte los factores desconocidos entre los grupos.

## 6. Respuesta y medición

- Variable respuesta:
- Período de medición:
- Quién registra y cómo (¿ciego?):
Mediante el POS, el ciego (vendedor no sabría si el producto está en principal o en habitual)

## 7. Factores a controlar (mínimo 4)

| Factor a controlar | Cómo se controla o registra |
|---|---|
| 1. |Clima |
| 2. | Evento Local |
| 3. | Surtido / Stock |
| 4. | Cambios en el Personal |

## 8. Limitaciones del diseño

- Pérdida de potencia por promociones
- Canibalización de las tiendas

## 9. Comparación en código (Python/R)

*Escribe `scripts/comparacion_experimento.py` (o `.R`): debe cargar `plantillas/registro_experimento.csv` y calcular el promedio de `ventas_producto` por `ubicacion`. Incluye la salida y responde:*

- ¿Qué grupo muestra mayor venta promedio en la plantilla?
El pasillo principal muesta $1335 en venta, frente a $1040 en habitual
- ¿Por qué con 4 filas no se puede concluir nada sobre el efecto de la ubicación?
No se puede concluir porque no hay ninguna asignación real aleatoria, los datos son muy pocos (2), no tenemos control de temporada, ni promociones en el grupo del pasillo y no hya medida de variabilidad
- Si el experimento se ejecutara con tu protocolo, ¿qué le faltaría a este análisis para ser justo?
Aqui hay que expandir el experimento, ya que con 4 registros no es suficiente. 
Aquí se verifica que le hace falta a ese análisis para que esté completo. 

