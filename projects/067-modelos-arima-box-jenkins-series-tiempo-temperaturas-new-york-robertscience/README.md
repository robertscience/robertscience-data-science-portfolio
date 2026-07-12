# Modelos ARIMA (Box-Jenkins) para Series de Tiempo

Time Series Analysis | ARIMA Modeling | Box-Jenkins Methodology | Temperature Forecasting | Statistical Modeling | Python | Data Science

---

# RobertScience Data Analytics Consulting

# Descripción del Proyecto

En este proyecto desarrollé un análisis y modelado de series de tiempo utilizando la metodología clásica **Box-Jenkins** mediante modelos **ARIMA(p,d,q)** aplicados al comportamiento histórico de temperaturas promedio anuales de Nueva York.

El objetivo principal fue construir un modelo estadístico capaz de identificar la estructura temporal de la serie, determinar la configuración óptima del modelo ARIMA y evaluar la confiabilidad de los pronósticos generados.

Durante el desarrollo implementé un flujo completo de análisis temporal que incluyó preparación de datos, exploración estadística, pruebas de estacionariedad, análisis de autocorrelación, selección de parámetros mediante criterios estadísticos, entrenamiento del modelo final y diagnóstico de residuos.

La información utilizada corresponde a temperaturas promedio anuales de Nueva York durante el periodo comprendido entre 1870 y 2020.

Este proyecto representa una aplicación práctica de técnicas utilizadas dentro de:

- Data Science.
- Statistical Modeling.
- Time Series Analysis.
- Predictive Analytics.

utilizando modelos estadísticos interpretables basados en comportamiento histórico.

---

# Objetivo Técnico

El objetivo principal fue desarrollar un modelo ARIMA basado en la metodología Box-Jenkins capaz de analizar y pronosticar una serie temporal histórica de temperaturas promedio anuales.

Durante el desarrollo del proyecto trabajé en los siguientes objetivos:

- Cargar y preparar una serie temporal histórica.
- Realizar limpieza y transformación de datos.
- Convertir variables temporales a formato adecuado.
- Crear una estructura temporal mediante índices de fecha.
- Separar datos de entrenamiento y prueba.
- Analizar dependencia temporal mediante ACF y PACF.
- Evaluar estacionariedad mediante prueba Dickey-Fuller aumentada.
- Determinar el orden de diferenciación necesario.
- Evaluar diferentes combinaciones ARIMA(p,d,q).
- Seleccionar el mejor modelo mediante criterio AIC.
- Entrenar el modelo definitivo.
- Analizar residuos mediante pruebas estadísticas.
- Evaluar predicciones mediante métricas de error.
- Generar pronósticos con intervalos de confianza.

---

# Datos Utilizados

El dataset utilizado dentro del proyecto corresponde a registros históricos de temperaturas promedio anuales de Nueva York.

Archivo utilizado:

```text
TempNY.csv

Estructura principal del dataset:

Variable	Descripción
Year	Año del registro histórico
Temp	Temperatura promedio anual

La variable principal utilizada dentro del análisis fue:

Temp

Esta variable representa la temperatura promedio anual registrada durante cada periodo histórico.

Antes del modelado realicé una preparación de datos mediante:

Eliminación de columnas innecesarias.
Renombramiento de variables.
Conversión del año a formato fecha.
Configuración del índice temporal.
Validación de valores disponibles.
Extracción de la serie objetivo.

Debido a buenas prácticas de organización en GitHub, el dataset original no fue incluido dentro del repositorio.

Sin embargo, toda la estructura del proyecto, metodología aplicada y dependencias utilizadas fueron documentadas para permitir reproducir nuevamente el análisis.

Metodología Implementada

El desarrollo del proyecto siguió la metodología clásica Box-Jenkins para construcción de modelos ARIMA.

La metodología se dividió en tres etapas principales:

1. Identificación del Modelo

Durante esta etapa analicé el comportamiento inicial de la serie temporal.

Las técnicas utilizadas fueron:

Análisis gráfico de la serie.
Función de autocorrelación (ACF).
Función de autocorrelación parcial (PACF).
Prueba Dickey-Fuller aumentada.

El objetivo fue determinar si la serie presentaba estacionariedad y comprender la dependencia temporal existente.

2. Estimación del Modelo ARIMA

El modelo ARIMA está compuesto por tres parámetros:

ARIMA(p,d,q)

Donde:

p representa los términos autoregresivos.
d representa el número de diferenciaciones necesarias.
q representa los términos de media móvil.

Para seleccionar el modelo adecuado evalué diferentes combinaciones:

p entre 0 y 3.
q entre 0 y 3.
d determinado mediante análisis de estacionariedad.

Cada configuración fue evaluada utilizando:

AIC (Akaike Information Criterion).

El modelo seleccionado correspondió a la combinación con menor valor AIC.

3. Diagnóstico y Validación

Después del entrenamiento del modelo final realicé un análisis completo de residuos.

Los residuos fueron evaluados mediante:

Análisis visual.
Autocorrelación restante.
Independencia estadística.
Distribución de errores.

Además utilicé pruebas estadísticas:

Durbin-Watson.
Jarque-Bera.
Ljung-Box.

Estas pruebas permitieron determinar si los residuos presentaban un comportamiento cercano al ruido blanco.

Flujo de Desarrollo
Preparación del Entorno

Para desarrollar este proyecto utilicé Python junto con librerías especializadas para análisis estadístico y modelado temporal.

Herramientas utilizadas:

Pandas.
NumPy.
Matplotlib.
Statsmodels.
Scikit-Learn.

El entorno de desarrollo utilizado fue:

Visual Studio Code.
Jupyter Notebook.
Carga y Preparación de Datos

Inicialmente cargué el archivo histórico de temperaturas:

TempNY.csv

Posteriormente realicé:

Limpieza inicial.
Organización temporal.
Conversión de fechas.
Selección de variable objetivo.

La serie final utilizada para el modelo estuvo compuesta únicamente por:

Temp
División de Datos

Para evaluar correctamente el modelo realicé una separación temporal:

90% datos de entrenamiento.
10% datos de prueba.

El conjunto de entrenamiento fue utilizado para:

Identificación.
Ajuste.
Selección del modelo.

El conjunto de prueba fue utilizado para evaluar la capacidad predictiva del modelo sobre datos no observados.

Análisis ACF y PACF

Realicé análisis de autocorrelación utilizando:

ACF.
PACF.

Estas herramientas permitieron estudiar la relación entre observaciones actuales y valores históricos.

El análisis permitió comprender la estructura temporal antes de construir el modelo ARIMA definitivo.

Prueba de Estacionariedad ADF

Para evaluar la estacionariedad utilicé:

Augmented Dickey-Fuller Test

Hipótesis evaluadas:

H₀:

La serie presenta raíz unitaria y no es estacionaria.

H₁:

La serie es estacionaria.

La interpretación fue realizada utilizando el valor p:

p-value menor a 0.05 → evidencia de estacionariedad.
p-value mayor a 0.05 → requiere transformación.
Determinación del Parámetro d

Después del análisis inicial determiné el orden de diferenciación necesario.

El proceso consistió en:

Evaluar serie original.
Aplicar diferenciación cuando fue necesario.
Repetir prueba ADF.
Determinar valor adecuado de d.

Este procedimiento permitió estabilizar la serie antes del entrenamiento.

Evaluación de Modelos ARIMA

Se evaluaron diferentes configuraciones:

ARIMA(p,d,q)

Cada modelo fue entrenado y comparado mediante:

AIC

El objetivo fue seleccionar un modelo equilibrado entre:

Calidad estadística.
Complejidad.
Capacidad predictiva.
Entrenamiento del Modelo Final

Después de seleccionar la mejor configuración realicé el ajuste definitivo utilizando:

ARIMA()

de la librería:

Statsmodels

Durante esta etapa analicé:

Coeficientes.
Errores estándar.
Significancia estadística.
Ajuste general del modelo.
Tecnologías Utilizadas
Lenguaje
Python 3.11.9
Análisis de Datos
Pandas
NumPy
Visualización
Matplotlib
Modelado Estadístico
Statsmodels
Evaluación
Scikit-Learn
Entorno
Visual Studio Code
Jupyter Notebook
Estructura del Proyecto
056-modelos-arima-box-jenkins-series-tiempo-temperaturas-new-york-robertscience

│
├── data
│   └── TempNY.csv
│
├── notebooks
│   └── practica-m56-modelos-arima-box-jenkins.ipynb
│
├── outputs
│   ├── figures
│   └── reports
│
├── requirements.txt
│
└── README.md
Limitaciones del Modelo

Aunque el modelo ARIMA permitió capturar patrones temporales dentro de la serie histórica de temperaturas, existen limitaciones propias de los modelos estadísticos tradicionales.

Entre ellas:

Variabilidad natural del clima.
Factores externos no incluidos.
Cambios ambientales a largo plazo.
Ausencia de variables adicionales.

El modelo utiliza únicamente información histórica de temperatura, por lo que no incorpora variables externas como fenómenos climáticos, condiciones atmosféricas u otros factores ambientales.

Mejoras Futuras

Como posibles líneas de desarrollo considero:

Implementar modelos SARIMA para capturar estacionalidad.
Comparar resultados con Prophet.
Aplicar modelos Machine Learning.
Utilizar redes neuronales LSTM.
Incorporar variables climáticas externas.
Crear dashboards interactivos.
Automatizar actualización de datos.
Aplicación Profesional

Las técnicas utilizadas tienen aplicación en:

Análisis climático.
Predicción temporal.
Planeación estratégica.
Investigación científica.
Sistemas predictivos.
Data Science aplicado.
Modelado estadístico.
Conclusión Final

En este proyecto desarrollé un modelo ARIMA utilizando la metodología Box-Jenkins para analizar y pronosticar temperaturas promedio anuales de Nueva York.

El flujo completo incluyó preparación de datos, análisis exploratorio, pruebas estadísticas, identificación de parámetros, selección mediante AIC, entrenamiento del modelo y validación mediante análisis de residuos.

La práctica permitió fortalecer mis conocimientos en series temporales, estadística aplicada y construcción de modelos predictivos utilizando Python.

Este proyecto forma parte de mi desarrollo profesional dentro de Ciencia de Datos, enfocado en construir soluciones analíticas robustas, interpretables y fundamentadas en evidencia estadística.

Autor

RobertScience

Data Analytics & Machine Learning Engineering

Transformando datos en modelos inteligentes para la toma de decisiones.

https://robertscience.online