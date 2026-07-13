# Proyecto — Predicción de Precios de Vivienda mediante Regresión Lineal

## Descripción

En este proyecto desarrollé un modelo de regresión lineal para analizar los principales factores que influyen en el precio de venta de viviendas utilizando técnicas de estadística avanzada y aprendizaje supervisado.

El objetivo consistió en construir un modelo estadísticamente sólido que permitiera comprender la relación existente entre diversas características estructurales de una propiedad y su precio de mercado, aplicando un proceso completo de análisis exploratorio, validación estadística, selección de variables y evaluación del desempeño predictivo.

Además del modelado, se realizó una interpretación de negocio de los resultados obtenidos, identificando los factores con mayor impacto sobre el valor de una propiedad y evaluando la estabilidad del modelo mediante diferentes métricas estadísticas.

---

# Objetivos del proyecto

- Analizar estadísticamente un conjunto de datos del mercado inmobiliario.
- Identificar variables con mayor influencia sobre el precio de venta.
- Evaluar la calidad de los datos y la presencia de valores faltantes.
- Realizar análisis exploratorio de variables numéricas.
- Analizar la distribución estadística de las variables.
- Aplicar pruebas de normalidad.
- Construir un modelo de Regresión Lineal Ordinaria (OLS).
- Detectar problemas de multicolinealidad mediante VIF.
- Optimizar el modelo eliminando variables redundantes.
- Evaluar el desempeño utilizando métricas de regresión.
- Aplicar transformación logarítmica para mejorar el ajuste del modelo.
- Interpretar los resultados desde una perspectiva estadística y de negocio.

---

# Dataset

El proyecto utiliza el conocido dataset **House Pricing**, el cual contiene información detallada sobre propiedades residenciales.

Entre las variables disponibles se incluyen:

- Área habitable
- Calidad de construcción
- Tamaño del terreno
- Año de construcción
- Número de habitaciones
- Área del sótano
- Garaje
- Remodelaciones
- Características estructurales
- Precio de venta (SalePrice)

El conjunto de datos contiene:

- 1,460 registros
- 81 variables
- Variables numéricas y categóricas

La variable objetivo utilizada durante el entrenamiento fue:

- **SalePrice**

---

# Tecnologías utilizadas

- Python
- Jupyter Notebook
- Visual Studio Code

Principales librerías:

- Pandas
- NumPy
- Matplotlib
- Seaborn
- SciPy
- Statsmodels
- Scikit-Learn

---

# Metodología

El desarrollo del proyecto siguió una metodología estructurada orientada a garantizar la calidad estadística del modelo.

## 1. Exploración inicial

Se realizó una inspección completa del dataset para conocer:

- estructura de datos
- tipos de variables
- dimensiones
- estadísticas descriptivas
- valores faltantes

---

## 2. Análisis de calidad de datos

Durante esta etapa se identificaron:

- variables con datos faltantes
- porcentaje de información ausente
- variables aptas para el modelado

Se determinó que las variables seleccionadas para el modelo no requerían imputaciones adicionales.

---

## 3. Estadística descriptiva

Se calcularon múltiples métricas descriptivas, entre ellas:

- media
- mediana
- desviación estándar
- cuartiles
- mínimos
- máximos

Este análisis permitió detectar:

- asimetría
- dispersión
- posibles valores atípicos

---

## 4. Análisis de distribución

Se evaluó visualmente el comportamiento de las variables mediante histogramas.

Se observó que:

- SalePrice presenta asimetría positiva.
- GrLivArea muestra presencia de valores extremos.
- 2ndFlrSF concentra gran cantidad de observaciones iguales a cero.

---

## 5. Evaluación de normalidad

Se aplicaron pruebas estadísticas de normalidad para verificar los supuestos del modelo.

Los resultados mostraron valores p inferiores a 0.05 para todas las variables analizadas, concluyendo que no siguen una distribución normal.

---

## 6. Correlación

Se construyó una matriz de correlación para identificar las variables con mayor relación respecto al precio de venta.

Entre las variables más relevantes se encontraron:

- OverallQual
- GrLivArea
- GarageCars
- GarageArea
- TotalBsmtSF
- YearBuilt
- YearRemodAdd
- FullBath

Este análisis permitió seleccionar las variables con mayor capacidad explicativa para el modelo.

---

## 7. Construcción del modelo OLS

Se desarrolló un modelo de Regresión Lineal Ordinaria (Ordinary Least Squares) utilizando Statsmodels.

El modelo permitió analizar:

- coeficientes
- significancia estadística
- intervalos de confianza
- R²
- R² ajustado
- pruebas F
- análisis de residuos

---

## 8. Evaluación de multicolinealidad

Se calculó el Factor de Inflación de Varianza (VIF) para detectar relaciones lineales entre variables independientes.

Con base en los resultados obtenidos se eliminaron variables redundantes para incrementar la estabilidad del modelo.

---

## 9. Refinamiento del modelo

Después del análisis estadístico se generó un modelo optimizado conservando únicamente las variables con mayor capacidad predictiva y mejor comportamiento estadístico.

---

## 10. Transformación logarítmica

Debido a la asimetría observada en la variable objetivo, se aplicó una transformación logarítmica sobre SalePrice con el propósito de:

- reducir la asimetría
- estabilizar la varianza
- mejorar el ajuste del modelo
- facilitar la interpretación económica de los coeficientes

---

## 11. Validación del modelo

Finalmente se evaluó el desempeño mediante datos no utilizados durante el entrenamiento.

Se calcularon:

- RMSE
- MAE
- R²
- R² con transformación logarítmica

También se analizaron:

- residuos
- valores predichos vs reales
- homocedasticidad
- comportamiento general del error

---

# Resultados principales

El análisis permitió identificar que las variables con mayor influencia sobre el precio de venta son:

- Calidad general de la vivienda (OverallQual)
- Área habitable (GrLivArea)
- Capacidad del garaje
- Área del sótano
- Año de construcción
- Remodelaciones realizadas

El modelo presentó un desempeño sólido sobre el conjunto de prueba, demostrando una adecuada capacidad de generalización.

La transformación logarítmica incrementó el nivel de ajuste del modelo, mejorando el coeficiente de determinación y reduciendo el error de predicción.

---

# Aplicaciones de negocio

Este modelo puede utilizarse como base para múltiples escenarios reales, entre ellos:

- Sistemas automatizados de valuación inmobiliaria (AVM)
- Estimación de precios de propiedades
- Detección de inmuebles subvaluados
- Evaluación de inversiones inmobiliarias
- Plataformas PropTech
- Modelos de apoyo para instituciones financieras
- Análisis de riesgo hipotecario
- Estudios de mercado inmobiliario

---

# Estructura del proyecto

```
044-regresion-lineal-prediccion-precios-vivienda-robertscience/
│
├── data/
│   ├── HousePricing.csv
│
├── notebook/
│   └── M33_Regresion_Lineal_Precios_Vivienda.ipynb
│
├── images/
│   ├── histogramas.png
│   ├── matriz_correlacion.png
│   ├── residuales.png
│   ├── predicciones_vs_reales.png
│   └── vif.png
│
├── docs/
│   └── Reporte.pdf
│
├── README.md
│
└── requirements.txt
```

---

# Competencias demostradas

Durante este proyecto apliqué conocimientos en:

- Estadística descriptiva
- Estadística inferencial
- Pruebas de normalidad
- Regresión Lineal
- Modelado OLS
- Ingeniería de variables
- Selección de variables
- Análisis de correlación
- Evaluación de multicolinealidad
- Interpretación estadística
- Validación de modelos
- Machine Learning supervisado
- Visualización de datos
- Ciencia de Datos aplicada

---

# Nota

Por motivos de tamaño y licenciamiento, algunos archivos utilizados durante el desarrollo del proyecto no fueron incluidos en este repositorio. Sin embargo, se incorpora el notebook principal junto con la documentación suficiente para comprender la metodología, reproducir el análisis y validar los resultados obtenidos.

---

**Autor**

**RobertScience Data Consulting**

Data Science | Machine Learning | Advanced Analytics

2026