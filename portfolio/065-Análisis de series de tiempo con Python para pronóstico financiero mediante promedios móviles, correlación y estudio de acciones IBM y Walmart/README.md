# Análisis Exploratorio de Series de Tiempo y Pronóstico con Promedios Móviles

Time Series Analysis | Financial Data Analysis | Stock Market Analysis | Moving Average Forecasting | IBM | Walmart | Yahoo Finance | Statistical Analysis | Data Science | Python

---

# RobertScience Data Analytics Consulting

# Descripción del Proyecto

En este proyecto desarrollé un análisis exploratorio de series de tiempo aplicado al comportamiento histórico de precios de acciones utilizando información financiera real obtenida desde Yahoo Finance.

El objetivo principal fue analizar la evolución temporal de las cotizaciones de IBM y Walmart durante los últimos cinco años, identificando patrones estadísticos, relaciones entre ambas series financieras y aplicando técnicas básicas de pronóstico mediante promedios móviles.

A diferencia de un análisis tradicional basado únicamente en valores históricos, en este proyecto trabajé con una metodología enfocada en series temporales, considerando la dependencia existente entre observaciones consecutivas y la importancia del comportamiento histórico dentro de los mercados financieros.

Durante el desarrollo realicé la descarga y preparación de datos financieros, análisis exploratorio, visualización de precios históricos, cálculo de correlaciones, descomposición temporal, análisis de autocorrelación mediante correlogramas, pruebas estadísticas de estacionariedad y generación de pronósticos simples utilizando métodos de suavización.

El análisis fue desarrollado utilizando precios de cierre diarios de las acciones de IBM y Walmart, permitiendo estudiar tendencias, variaciones temporales y características estadísticas propias de cada instrumento financiero.

Este proyecto representa una aplicación práctica de técnicas utilizadas dentro de Data Science, Financial Analytics, Machine Learning aplicado a series temporales y análisis cuantitativo para la interpretación de información financiera.

---

# Objetivo Técnico

El objetivo principal fue desarrollar un análisis exploratorio de series de tiempo financieras utilizando datos históricos de cotizaciones, aplicando herramientas estadísticas para comprender el comportamiento temporal de las acciones de IBM y Walmart.

Durante el desarrollo del proyecto me propuse alcanzar los siguientes objetivos técnicos:

- Obtener información histórica financiera desde Yahoo Finance.
- Descargar precios diarios de acciones mediante Python.
- Analizar la estructura de los datasets obtenidos.
- Seleccionar precios de cierre como variable principal de estudio.
- Visualizar el comportamiento histórico de ambas acciones.
- Construir un dataframe combinado para análisis comparativo.
- Calcular la correlación entre IBM y Walmart.
- Interpretar la relación estadística entre ambas series.
- Aplicar descomposición de series temporales.
- Analizar componentes de tendencia, estacionalidad y residuos.
- Generar correlogramas para estudiar autocorrelación.
- Aplicar la prueba Dickey-Fuller aumentada.
- Evaluar el comportamiento estacionario de la serie.
- Calcular promedios móviles simples.
- Construir un pronóstico básico del siguiente día de cotización.
- Interpretar las limitaciones del modelo utilizado.

---

# Datos Utilizados

Como fuente principal de información utilicé datos históricos financieros obtenidos mediante la librería:

**yfinance**

Los activos analizados dentro del proyecto fueron:

## Empresa 1

**IBM**

Ticker utilizado:


IBM


## Empresa 2

**Walmart**

Ticker utilizado:


WMT


La información utilizada corresponde a precios históricos diarios durante un periodo aproximado de cinco años.

Las variables financieras descargadas incluyen información como:

- Fecha de cotización.
- Precio de apertura.
- Precio máximo.
- Precio mínimo.
- Precio de cierre.
- Volumen negociado.

Para el análisis principal seleccioné la variable:

**Close**

debido a que el precio de cierre representa una de las métricas más utilizadas dentro del análisis financiero para estudiar tendencias, comportamiento histórico y modelos de predicción.

Debido a criterios de organización del repositorio y buenas prácticas de administración de proyectos en GitHub, los datos descargados directamente desde Yahoo Finance no fueron incluidos dentro del repositorio.

Sin embargo, toda la estructura del proyecto, dependencias utilizadas, metodología aplicada y flujo completo de análisis fueron documentados para permitir la reproducción del estudio utilizando nuevamente la fuente de datos original.

---

# Metodología Implementada

El desarrollo del proyecto fue organizado siguiendo un flujo estructurado de análisis de series temporales aplicado a información financiera.

---

# 1. Preparación del Entorno

Inicialmente configuré el entorno de trabajo utilizando Python y las librerías necesarias para realizar análisis financiero, manipulación de datos, visualización y pruebas estadísticas.

Las principales herramientas utilizadas fueron:

- Pandas
- NumPy
- Matplotlib
- Seaborn
- Statsmodels
- yfinance

Esta configuración permitió desarrollar un flujo completo desde la adquisición de datos hasta la generación del pronóstico final.

---

# 2. Descarga de Datos Financieros

Realicé la descarga automática de información histórica mediante la librería `yfinance`, conectando directamente con Yahoo Finance.

Durante esta etapa obtuve las cotizaciones diarias correspondientes a:

- IBM.
- Walmart.

El proceso permitió disponer de información financiera actualizada para realizar un análisis exploratorio basado en datos reales del mercado.

Posteriormente validé que ambos datasets fueran cargados correctamente antes de iniciar las etapas analíticas.

---

# 3. Exploración Inicial de los Datasets

Después de obtener la información financiera realicé una revisión inicial de la estructura de ambos conjuntos de datos.

Durante esta etapa analicé:

- cantidad de registros.
- columnas disponibles.
- tipos de datos.
- estructura temporal.
- posibles valores faltantes.

Esta validación permitió asegurar que la información estuviera preparada correctamente para el análisis de series de tiempo.

---

# 4. Selección de Precios de Cierre

Para desarrollar el análisis temporal seleccioné únicamente los precios de cierre diarios de cada acción.

La variable seleccionada fue:

- Close

El precio de cierre es ampliamente utilizado dentro del análisis financiero debido a que representa el valor final de negociación registrado durante una sesión bursátil.

A partir de esta variable construí las series temporales individuales de IBM y Walmart.

---

# 5. Visualización del Comportamiento Histórico

Posteriormente generé visualizaciones para analizar la evolución del precio de ambas acciones durante el periodo estudiado.

Estas gráficas permitieron observar:

- tendencias generales.
- movimientos ascendentes o descendentes.
- periodos de volatilidad.
- diferencias en comportamiento entre ambas empresas.

La representación gráfica constituye una etapa fundamental dentro del análisis exploratorio de series temporales, ya que permite identificar patrones antes de aplicar modelos estadísticos.

---

# Tecnologías Utilizadas

## Lenguaje de Programación

- Python 3.11.9

## Manipulación y Análisis de Datos

- Pandas
- NumPy

## Visualización de Datos

- Matplotlib
- Seaborn

## Series de Tiempo y Estadística

- Statsmodels

## Obtención de Datos Financieros

- yfinance

## Entorno de Desarrollo

- Visual Studio Code
- Jupyter Notebook

---

# Estructura del Proyecto

│
├── data
│ │
│ ├── raw
│ │ └── financial_data_ibm_walmart.csv
│ │
│ └── processed
│
├── notebooks
│ └── practica-m54-series-tiempo-promedios-moviles.ipynb
│
├── src
│ └── time_series_analysis.py
│
├── outputs
│ ├── figures
│ ├── models
│ └── reports
│
├── requirements.txt
│
└── README.md


---

## Nota

Los archivos originales ubicados dentro de las carpetas **data/raw** y **outputs** no fueron incluidos dentro del repositorio debido a que corresponden a datos financieros descargados externamente, archivos generados durante el análisis y resultados derivados de las ejecuciones del proyecto.

Con el objetivo de mantener un repositorio limpio, organizado y alineado con buenas prácticas de desarrollo, toda la estructura del proyecto, metodología aplicada y dependencias utilizadas fueron documentadas completamente.

Los datos pueden ser reproducidos nuevamente utilizando la librería `yfinance` y los tickers financieros definidos dentro del notebook principal.

---

# Flujo de Desarrollo

## 6. Construcción del Dataset Comparativo

Después de obtener las series individuales de IBM y Walmart construí un dataframe combinado utilizando únicamente los precios de cierre diarios.

Esta integración permitió analizar ambas acciones dentro de una misma estructura temporal y realizar comparaciones estadísticas entre sus comportamientos históricos.

El dataframe resultante fue utilizado posteriormente para calcular correlaciones y estudiar relaciones entre ambas series financieras.

---

## 7. Análisis de Correlación Financiera

Posteriormente calculé el coeficiente de correlación entre IBM y Walmart con el objetivo de evaluar si ambas acciones presentan algún nivel de relación estadística durante el periodo analizado.

El análisis de correlación permitió estudiar:

- dirección de la relación.
- intensidad del movimiento conjunto.
- comportamiento comparativo entre activos financieros.

Además desarrollé una representación gráfica mediante un mapa de calor para facilitar la interpretación visual de los resultados obtenidos.

---

## 8. Descomposición de Series Temporales

Una de las etapas principales del proyecto fue la descomposición de la serie temporal de IBM.

Mediante la técnica de descomposición separé la información histórica en diferentes componentes:

- Tendencia.
- Estacionalidad.
- Residuos.

Este análisis permitió identificar patrones internos dentro del comportamiento de la serie y comprender cómo se distribuyen los diferentes elementos que forman una cotización financiera.

La descomposición temporal es una herramienta importante dentro del análisis exploratorio porque permite estudiar características que no siempre son visibles directamente en una gráfica de precios.

---

## 9. Análisis de Autocorrelación mediante Correlogramas

Posteriormente realicé un análisis de autocorrelación utilizando correlogramas.

Esta técnica permitió estudiar la relación existente entre los valores actuales de la serie y sus valores históricos desplazados mediante diferentes rezagos.

El análisis ayudó a identificar posibles dependencias temporales dentro del comportamiento de la acción de IBM.

La autocorrelación representa un elemento importante dentro del análisis de series temporales debido a que permite evaluar si los datos presentan memoria histórica.

---

## 10. Prueba de Estacionariedad Dickey-Fuller

Para evaluar las características estadísticas de la serie temporal apliqué la prueba de Dickey-Fuller aumentada.

El objetivo fue determinar si la serie presenta comportamiento estacionario o si mantiene características variables a través del tiempo.

La interpretación general utilizada fue:

- Valor p menor a 0.05 → evidencia de estacionariedad.
- Valor p mayor a 0.05 → posible presencia de no estacionariedad.

Esta prueba permitió comprender mejor la naturaleza estadística de los precios históricos analizados.

---

## 11. Cálculo de Promedios Móviles

Posteriormente implementé métodos de suavización mediante promedios móviles simples.

Los periodos utilizados fueron:

- Promedio móvil de 20 días.
- Promedio móvil de 50 días.

Estos indicadores permitieron reducir fluctuaciones de corto plazo y observar de mejor manera la tendencia general del precio de IBM.

Los promedios móviles son herramientas ampliamente utilizadas dentro del análisis técnico financiero para identificar comportamientos recientes del mercado.

---

## 12. Generación de Pronóstico Simple

Finalmente desarrollé un pronóstico básico utilizando el promedio móvil de los últimos 20 días de cotización.

El objetivo fue estimar un posible valor aproximado para el siguiente día utilizando únicamente información reciente de la serie histórica.

Este método representa una aproximación inicial y sencilla dentro del análisis predictivo.

Aunque no sustituye modelos avanzados como ARIMA, Prophet o modelos basados en Machine Learning, permite comprender la lógica fundamental detrás de los métodos de suavización temporal.

---

# Resultados Obtenidos

Durante el desarrollo del proyecto fue posible:

- Obtener información financiera histórica mediante Yahoo Finance.
- Analizar cotizaciones diarias de IBM y Walmart.
- Explorar la estructura de datos financieros.
- Visualizar tendencias históricas de precios.
- Comparar el comportamiento temporal de ambas empresas.
- Calcular correlaciones entre series financieras.
- Aplicar descomposición de series temporales.
- Analizar autocorrelación mediante correlogramas.
- Evaluar estacionariedad mediante Dickey-Fuller.
- Aplicar métodos de suavización con promedios móviles.
- Generar un pronóstico simple basado en comportamiento reciente.
- Interpretar las limitaciones de los modelos básicos de predicción financiera.

---

# Conclusiones Técnicas

Este proyecto permitió desarrollar un análisis completo de series temporales aplicado a información financiera real, integrando técnicas estadísticas utilizadas dentro del análisis cuantitativo y Ciencia de Datos.

El estudio demostró la importancia de comprender el comportamiento histórico de una variable antes de construir modelos predictivos más avanzados.

El análisis exploratorio permitió identificar tendencias, relaciones estadísticas, dependencia temporal y características propias de las cotizaciones bursátiles.

La aplicación de herramientas como correlación, descomposición temporal, autocorrelación y pruebas de estacionariedad proporcionó una visión más completa del comportamiento financiero de IBM y Walmart.

Además, el uso de promedios móviles permitió construir un primer acercamiento al pronóstico financiero, demostrando la utilidad de los métodos de suavización como herramientas iniciales dentro del análisis temporal.

Sin embargo, también fue posible identificar que los mercados financieros presentan alta complejidad y requieren modelos más avanzados cuando se busca realizar predicciones con mayor precisión.

---

# Aplicación Profesional

Las técnicas desarrolladas en este proyecto tienen aplicación directa en áreas como:

- Data Science Financiero.
- Financial Analytics.
- Análisis Cuantitativo.
- Trading Algorítmico.
- Gestión de Portafolios.
- Business Intelligence.
- Investigación de Mercados.
- Modelado de Series Temporales.
- Predicción de Indicadores Financieros.
- Sistemas de apoyo para toma de decisiones.

---

# Conclusión

En este proyecto desarrollé un análisis exploratorio completo de series de tiempo utilizando información histórica de acciones financieras reales.

El flujo de trabajo incluyó adquisición de datos mediante Yahoo Finance, preparación de información, análisis visual, estudio de correlaciones, descomposición temporal, pruebas estadísticas de estacionariedad, análisis de autocorrelación y generación de pronósticos mediante promedios móviles.

La implementación permitió fortalecer mis conocimientos en análisis financiero con Python, estadística aplicada, series temporales y construcción de modelos predictivos orientados a datos reales.

Este proyecto forma parte de mi desarrollo profesional dentro de Ciencia de Datos, enfocado en la creación de soluciones analíticas robustas, interpretables y fundamentadas en evidencia estadística.

---

# Autor

**RobertScience**

**Data Analytics & Machine Learning Engineering**

*Transformando datos en modelos inteligentes para la toma de decisiones.*

**https://robertscience.online**