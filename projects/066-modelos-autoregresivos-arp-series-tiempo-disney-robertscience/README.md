# Modelos Auto-Regresivos AR(p) en Series de Tiempo

Time Series Analysis | AutoRegressive Models | AR(p) Forecasting | Financial Data Analysis | Stock Market Analysis | Disney Stock Prediction | Yahoo Finance | Statistical Modeling | Python | Data Science

---

# RobertScience Data Analytics Consulting

# Descripción del Proyecto

En este proyecto desarrollé un análisis de series de tiempo utilizando modelos Auto-Regresivos AR(p) aplicados al comportamiento histórico de las cotizaciones de Walt Disney Company (DIS).

El objetivo principal fue construir un modelo estadístico capaz de capturar la dependencia temporal presente dentro de la serie financiera, seleccionar el orden óptimo del modelo AR(p), evaluar su desempeño predictivo y generar pronósticos con intervalos de confianza.

Durante el desarrollo trabajé con información histórica diaria del precio de cierre de las acciones de Disney obtenida mediante Yahoo Finance, considerando el periodo comprendido entre el 1 de enero y el 31 de marzo de 2023.

A diferencia de un análisis exploratorio tradicional de series temporales, en este proyecto implementé una metodología enfocada en modelado predictivo mediante procesos autorregresivos, utilizando información histórica de la propia serie para estimar valores futuros.

El flujo desarrollado incluyó la descarga y preparación de datos financieros, validación estadística de la serie, análisis de estacionariedad mediante Dickey-Fuller aumentado, selección del número óptimo de rezagos utilizando PACF, comparación de modelos mediante criterios AIC y BIC, evaluación mediante métricas de error y generación de pronósticos para abril de 2023.

Para validar el desempeño del modelo calculé métricas como MAE, RMSE, MAPE y R², además de realizar un análisis de residuos para evaluar el comportamiento de los errores generados.

Este proyecto representa una aplicación práctica de técnicas utilizadas dentro de Data Science, Financial Analytics, Modelado Estadístico y Análisis Cuantitativo para la construcción de modelos predictivos basados en series temporales financieras.

---

# Objetivo Técnico

El objetivo principal fue desarrollar un modelo Auto-Regresivo AR(p) capaz de analizar y pronosticar el comportamiento temporal de las cotizaciones históricas de Walt Disney Company utilizando información financiera real.

Durante el desarrollo del proyecto me propuse alcanzar los siguientes objetivos técnicos:

- Obtener datos históricos financieros desde Yahoo Finance.
- Preparar una serie temporal utilizando precios de cierre.
- Validar la estructura y calidad de los datos obtenidos.
- Analizar la estacionariedad mediante la prueba Dickey-Fuller aumentada.
- Dividir la información en conjuntos de entrenamiento y prueba.
- Analizar la dependencia temporal mediante PACF.
- Evaluar diferentes órdenes AR(p).
- Comparar modelos utilizando criterios AIC y BIC.
- Seleccionar el mejor modelo autorregresivo.
- Ajustar el modelo definitivo utilizando AutoReg.
- Generar predicciones sobre datos no utilizados durante el entrenamiento.
- Evaluar el desempeño mediante métricas estadísticas.
- Analizar residuos del modelo.
- Generar pronósticos futuros con intervalo de confianza del 90%.
- Interpretar las limitaciones de los modelos autorregresivos aplicados a mercados financieros.

---

# Datos Utilizados

Como fuente principal de información utilicé datos históricos financieros obtenidos mediante la librería:

**yfinance**

El activo analizado dentro del proyecto fue:

## Empresa Analizada

**Walt Disney Company**

Ticker utilizado:

```text
DIS

La información corresponde a precios diarios históricos obtenidos desde Yahoo Finance durante el periodo:

01 de enero de 2023
hasta
31 de marzo de 2023

La variable principal utilizada dentro del análisis fue:

Close

El precio de cierre fue seleccionado debido a que representa una de las variables más utilizadas dentro del análisis financiero para estudiar comportamiento histórico, dependencia temporal y construcción de modelos predictivos.

Antes del proceso de modelado realicé una preparación de la serie temporal mediante:

eliminación de valores faltantes.
conversión del índice a formato fecha.
validación de estructura temporal.
selección de la variable objetivo.

Debido a criterios de organización del repositorio y buenas prácticas de administración de proyectos en GitHub, los datos descargados desde Yahoo Finance no fueron incluidos dentro del repositorio.

Sin embargo, toda la estructura del proyecto, dependencias utilizadas, metodología aplicada y flujo completo de análisis fueron documentados para permitir la reproducción del estudio utilizando nuevamente la fuente original de datos.

Metodología Implementada

El desarrollo del proyecto fue organizado siguiendo un flujo estructurado de análisis y modelado de series temporales financieras.

1. Preparación del Entorno

Inicialmente configuré el entorno de trabajo utilizando Python y las librerías necesarias para realizar análisis estadístico, descarga de información financiera, construcción del modelo y evaluación de resultados.

Las principales herramientas utilizadas fueron:

Pandas
NumPy
Matplotlib
yfinance
Statsmodels
Scikit-Learn

Esta configuración permitió desarrollar un flujo completo desde la adquisición de datos hasta la generación del pronóstico final.

2. Descarga de Información Financiera

Realicé la descarga automática de datos históricos de Walt Disney Company mediante la librería yfinance, conectando directamente con Yahoo Finance.

Durante esta etapa obtuve la información diaria de cotización correspondiente al ticker:

DIS

Posteriormente validé la estructura del dataset obtenido para asegurar que la información estuviera correctamente preparada antes de iniciar el análisis estadístico.

3. Preparación de la Serie Temporal

Después de obtener los datos financieros seleccioné únicamente el precio de cierre como variable principal de estudio.

La serie fue preparada mediante:

extracción de la columna Close.
eliminación de valores nulos.
conversión del índice temporal.
organización cronológica de observaciones.

Esta preparación permitió trabajar con una estructura adecuada para la aplicación de modelos autorregresivos. 

# Flujo de Desarrollo

## 6. Análisis de Auto-Correlación Parcial (PACF)

Después de preparar la serie temporal realicé un análisis mediante la función de autocorrelación parcial (PACF).

Esta herramienta permitió identificar la influencia de valores históricos anteriores sobre el comportamiento actual de la serie.

El análisis PACF fue utilizado como referencia inicial para determinar posibles valores del parámetro:

- p → número de rezagos utilizados dentro del modelo Auto-Regresivo.

La identificación adecuada del orden del modelo es fundamental para construir un modelo AR(p) capaz de capturar correctamente la dependencia temporal existente dentro de la serie financiera.

---

## 7. Evaluación de Modelos Auto-Regresivos AR(p)

Posteriormente desarrollé diferentes modelos Auto-Regresivos probando distintos valores del parámetro p.

Los modelos evaluados fueron:

- AR(1)
- AR(2)
- AR(3)
- AR(4)
- AR(5)

Cada modelo fue entrenado utilizando únicamente el conjunto de datos de entrenamiento.

Durante esta etapa comparé diferentes criterios estadísticos:

- AIC (Akaike Information Criterion).
- BIC (Bayesian Information Criterion).

Estos criterios permitieron evaluar la complejidad y calidad estadística de cada modelo.

El objetivo fue encontrar un equilibrio entre capacidad explicativa y simplicidad del modelo, evitando seleccionar modelos con demasiados rezagos que pudieran generar sobreajuste.

---

## 8. Selección del Modelo Óptimo

Después de evaluar los diferentes modelos AR(p), seleccioné el modelo con mejor comportamiento estadístico utilizando principalmente el criterio AIC.

El modelo elegido correspondió al orden p que presentó el menor valor de información estadística.

Esta selección permitió definir la estructura final del modelo Auto-Regresivo utilizado posteriormente para realizar predicciones y generar pronósticos futuros.

La selección basada en criterios AIC y BIC proporciona una metodología objetiva para determinar la configuración más adecuada del modelo.

---

## 9. Entrenamiento del Modelo Final AR(p)

Una vez identificado el mejor orden del modelo, realicé el ajuste definitivo utilizando la librería Statsmodels mediante la clase:

`AutoReg`

El modelo final permitió estimar la relación existente entre los valores históricos de la acción de Disney y sus observaciones anteriores.

Durante esta etapa obtuve información estadística del modelo como:

- coeficientes estimados.
- errores estándar.
- significancia estadística.
- comportamiento general del ajuste.

Estos elementos permitieron interpretar la capacidad del modelo para capturar la dependencia temporal de corto plazo.

---

## 10. Evaluación del Modelo Predictivo

Después del entrenamiento generé predicciones utilizando el conjunto de prueba que no fue utilizado durante el ajuste del modelo.

Para evaluar el desempeño predictivo calculé diferentes métricas:

- MAE (Mean Absolute Error).
- RMSE (Root Mean Squared Error).
- MAPE (Mean Absolute Percentage Error).
- R² (Coeficiente de Determinación).

Estas métricas permitieron medir la diferencia entre los valores reales observados y las predicciones generadas por el modelo.

El análisis permitió determinar qué tan bien el modelo AR(p) logró representar el comportamiento histórico de los precios de cierre.

---

## 11. Análisis de Residuos

Posteriormente realicé un análisis de residuos con el objetivo de evaluar los errores generados por el modelo.

Los residuos representan la diferencia entre:

- valores reales observados.
- valores estimados por el modelo.

Este análisis permitió identificar si los errores mantenían un comportamiento aleatorio o si existían patrones no explicados por el modelo.

La revisión de residuos es una etapa importante dentro de la validación de modelos de series temporales, ya que permite comprobar si todavía existe información temporal que el modelo no logró capturar.

---

## 12. Pronóstico para Abril 2023

Finalmente utilicé el modelo AR(p) seleccionado para generar pronósticos correspondientes al mes de abril de 2023.

El pronóstico fue realizado para los siguientes días hábiles posteriores al periodo analizado.

Además del valor estimado se calcularon intervalos de confianza del 90%, permitiendo representar la incertidumbre asociada a las predicciones.

El intervalo de confianza proporciona una interpretación más completa del resultado, mostrando un rango probable donde podrían encontrarse los valores futuros de la cotización.

---

# Resultados Obtenidos

Durante el desarrollo del proyecto fue posible:

- Descargar información histórica de Walt Disney Company desde Yahoo Finance.
- Preparar una serie temporal utilizando precios de cierre.
- Evaluar la estacionariedad mediante prueba ADF.
- Dividir los datos en entrenamiento y prueba.
- Analizar autocorrelación parcial mediante PACF.
- Evaluar diferentes modelos AR(p).
- Seleccionar el orden óptimo mediante AIC y BIC.
- Construir un modelo Auto-Regresivo final.
- Evaluar desempeño mediante MAE, RMSE, MAPE y R².
- Analizar residuos del modelo.
- Generar pronósticos para abril de 2023.
- Calcular intervalos de confianza del 90%.
- Interpretar las limitaciones de los modelos predictivos aplicados a mercados financieros.

---

# Conclusiones Técnicas

Este proyecto permitió desarrollar un análisis completo de series temporales utilizando modelos Auto-Regresivos aplicados a datos financieros reales.

La implementación del modelo AR(p) permitió comprender cómo los valores históricos de una variable pueden utilizarse para estimar comportamientos futuros de corto plazo.

La combinación del análisis PACF junto con los criterios AIC y BIC permitió seleccionar una estructura adecuada para el modelo, evitando decisiones basadas únicamente en prueba y error.

La evaluación mediante métricas como MAE, RMSE, MAPE y R² permitió analizar objetivamente el desempeño del modelo desarrollado.

Sin embargo, el análisis también demuestra que los mercados financieros presentan alta incertidumbre debido a factores externos que no pueden ser explicados únicamente mediante información histórica.

Por esta razón, los modelos Auto-Regresivos representan herramientas útiles para análisis exploratorio y pronósticos iniciales, pero deben complementarse con metodologías más avanzadas cuando se buscan sistemas predictivos de mayor precisión.

---

# Aplicación Profesional

Las metodologías desarrolladas en este proyecto tienen aplicación directa en áreas como:

- Data Science Financiero.
- Análisis Cuantitativo.
- Financial Analytics.
- Trading Algorítmico.
- Modelado de Series Temporales.
- Gestión de Riesgo Financiero.
- Investigación de Mercados.
- Predicción de Indicadores Económicos.
- Sistemas de apoyo para toma de decisiones.
- Desarrollo de modelos predictivos financieros.

---

# Conclusión

En este proyecto desarrollé un modelo Auto-Regresivo AR(p) aplicado al análisis y pronóstico de cotizaciones históricas de Walt Disney Company.

El flujo desarrollado incluyó adquisición de datos financieros, preparación de series temporales, evaluación de estacionariedad, selección de parámetros mediante PACF, AIC y BIC, entrenamiento del modelo, evaluación predictiva y generación de pronósticos con intervalos de confianza.

La práctica permitió fortalecer mis conocimientos en análisis temporal, estadística aplicada, modelado predictivo financiero y validación de modelos utilizando Python.

Este proyecto forma parte de mi desarrollo profesional dentro de Ciencia de Datos, enfocado en construir soluciones analíticas robustas, interpretables y fundamentadas en evidencia estadística.

---

# Autor

**RobertScience**

**Data Analytics & Machine Learning Engineering**

*Transformando datos en modelos inteligentes para la toma de decisiones.*

**https://robertscience.online**