# Plantilla de protocolo — Experimento de ubicación de producto

**Equipo:** 3 · **Integrantes:** Joel Alejandro Champutiz Ramos · **Fecha:** 27/10/2026

Completa cada sección. Usa commits por sección; la historia del repositorio se revisa.

## 1. Pregunta e hipótesis

**Pregunta:** ¿El producto vende más cuando se cambia al pasillo principal?

**Hipótesis:** El producto en el pasillo principal generará mayores ventas semanales que en su ubicación habitual, medido durante 4 semanas.

## 2. Unidad experimental

Semana-Tienda (**# de tiendas X # de semanas**)

- 10 tiendas x 4 semanas = 40 unidades experimentales.

## 3. Factor, niveles y tratamiento

- **Factor** (variable manipulada): Ubicación.
- **Niveles** (valores del factor): Pasillo y Habitual.
- **Tratamiento** (combinación asignada): Pasillo durante una semana y ubicación habitual durante  otra, alternando. uUn sorteo decide dónde empieza cada tienda.
 

## 4. Grupo de control

La misma tienda, pero con el producto dispuesto en la ubicación habitual (actuando como su propio control en las semanas que no recibe el tratamiento del pasillo principal).

## 5. Aleatorización

*¿Cómo se asignan las unidades a los grupos? ¿Por qué es necesaria?*

- **Línea de código de la asignación (Python):**

```python
import numpy as np

rng = np.random.default_rng(7)
primera_ubicacion = rng.choice(["pasillo", "habitual"], size=10)
```

- **Resultado de una corrida (semilla 7):**

```text
['habitual' 'pasillo' 'habitual' 'pasillo' 'pasillo' 'habitual' 'pasillo' 'pasillo' 'habitual' 'habitual']
```

**¿Por qué es necesaria?** 
Al asignar al azar la ubicación con la que empieza cada tienda, los factores desconocidos (como si una tienda vende más a inicio de mes) se reparten de forma equitativa entre los grupos, evitando que se sesgue el resultado.

## 6. Respuesta y medición

- **Variable respuesta:** Ventas semanales del producto.
- **Período de medición:** 4 semanas.
- **Quién registra y cómo (¿ciego?):** Mediante el POS. Es ciego porque el vendedor en caja no sabe si el producto está en el pasillo principal o en el habitual por un experimento de la empresa.

## 7. Factores a controlar (mínimo 4)

| Factor a controlar | Cómo se controla o registra |
|---|---|
| 1. Clima | Al alternar las ubicaciones en la misma tienda, las variaciones del clima afectan a ambas opciones por igual. |
| 2. Evento Local | Se anotan eventos cercanos o feriados en una bitácora para marcarlos y excluirlos si es necesario. |
| 3. Surtido / Stock | Se verifica constantemente que el producto tenga el stock completo en ambas ubicaciones. |
| 4. Cambios en el Personal | Se registra si existe alguna rotación de vendedores durante el experimento para mantenerlo constante. |

## 8. Limitaciones del diseño

- Pérdida de potencia por promociones.
- Canibalización de las tiendas (vender más el producto estrella podría quitarle ventas a otros productos).
- La cantidad de datos iniciales en la plantilla es muy pequeña para sacar conclusiones reales.

## 9. Comparación en código (Python/R)

*Escribe `scripts/comparacion_experimento.py` (o `.R`): debe cargar `plantillas/registro_experimento.csv` y calcular el promedio de `ventas_producto` por `ubicacion`. Incluye la salida y responde:*

- **Salida del script:**

```text
--- Promedio de ventas por ubicación ---
ubicacion
habitual             1040.0
pasillo_principal    1335.0
Name: ventas_producto, dtype: float64

--- Conteo de observaciones por grupo ---
ubicacion
pasillo_principal    2
habitual             2
Name: count, dtype: int64
```

- **¿Qué grupo muestra mayor venta promedio en la plantilla?**
El pasillo principal muestra $1335 en venta, frente a $1040 en la ubicación habitual.

- **¿Por qué con 4 filas no se puede concluir nada sobre el efecto de la ubicación?**
No se puede concluir porque no hay ninguna asignación real aleatoria, los datos son muy pocos (2 filas por ubicación), no tenemos control de temporada, ni promociones en el grupo del pasillo y no hay  una medida de variabilidad para descartar el azar.

- **Si el experimento se ejecutara con tu protocolo, ¿qué le faltaría a este análisis para ser justo?**
Faltaría comparar cada tienda consigo misma a lo largo de las semanas, controlar los factores externos y realizar una medición estadística real (como desviación e intervalos) para comprobar si el aumento no fue simple coincidencia.
