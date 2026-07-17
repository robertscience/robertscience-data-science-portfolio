# Forecasting de Ventas con Series Temporales ARIMA

## Modelo Predictivo de Demanda Comercial

**RobertScience Data Analytics**

---

# 📌 Descripción del Proyecto

Desarrollé este proyecto con el objetivo de construir un modelo predictivo de ventas utilizando técnicas de series temporales y el algoritmo ARIMA (AutoRegressive Integrated Moving Average).

El análisis fue realizado utilizando información comercial consolidada proveniente de diferentes fuentes dimensionales y una tabla principal de hechos de ventas.

El propósito principal fue transformar datos históricos en una herramienta de pronóstico capaz de estimar comportamientos futuros de demanda, proporcionando información útil para procesos de planeación comercial, inventarios y toma de decisiones estratégicas.

Durante este proyecto trabajé con información de productos como Vanish y Lysol, integrando procesos de preparación de datos, construcción de series temporales, entrenamiento del modelo y evaluación estadística.

---

# 🎯 Objetivo

El objetivo principal fue desarrollar un modelo de forecasting que permitiera predecir ventas futuras utilizando información histórica.

Los principales objetivos fueron:

* Integrar diferentes fuentes comerciales.
* Preparar la información para análisis temporal.
* Construir una serie histórica de ventas.
* Implementar un modelo ARIMA.
* Evaluar el desempeño mediante métricas estadísticas.
* Generar predicciones útiles para análisis empresarial.

---

# 🏗️ Arquitectura del Proyecto

La solución fue organizada siguiendo un flujo analítico basado en preparación, modelado y evaluación.

```text
020-proyecto-entregable-6-forecasting-ventas-series-temporales-arima/

│
├── PracticaEntregable6.ipynb
│
├── capturas/ 000.png, ... 039.png 
│
├── Práctica Entregable 6 - Forecasting de Ventas.pdf
│
├── README.md

```

---

# 📂 Fuentes de Datos Utilizadas

Para construir el modelo utilicé un conjunto de tablas comerciales estructuradas:

## DIM_CATEGORY

Tabla dimensional utilizada para clasificar productos por categoría comercial.

## DIM_SEGMENT

Fuente utilizada para identificar segmentos de negocio y agrupaciones comerciales.

## DIM_PRODUCT

Tabla utilizada para relacionar productos específicos dentro del análisis.

## DIM_CALENDAR

Dimensión temporal utilizada para construir la estructura de fechas necesaria para el análisis de series temporales.

## FACT_SALES

Tabla principal de hechos utilizada como base para calcular el comportamiento histórico de ventas.

---

# 🔄 Flujo de Trabajo Implementado

## 1. Integración de Datos

Realicé la carga de las tablas dimensionales y la tabla de hechos para construir un dataset consolidado.

Durante esta etapa validé:

* Llaves de relación.
* Estructura de columnas.
* Tipos de datos.
* Consistencia entre tablas.

---

## 2. Limpieza y Preparación

Preparé la información antes del modelado realizando procesos de:

* Normalización de identificadores.
* Corrección de formatos.
* Validación de registros.
* Integración de tablas mediante relaciones comerciales.

Esta etapa permitió obtener una base confiable para construir la serie temporal.

---

# 📈 Construcción de la Serie Temporal

A partir de los datos históricos de ventas construí una serie temporal agrupando información por fecha.

El análisis permitió observar:

* Tendencias históricas.
* Variaciones de demanda.
* Comportamientos repetitivos.
* Evolución de ventas durante diferentes periodos.

---

# 🤖 Modelo Predictivo ARIMA

Implementé un modelo ARIMA para realizar el forecasting de ventas.

El modelo fue seleccionado debido a su capacidad para trabajar con datos temporales y capturar relaciones entre valores históricos.

El proceso incluyó:

* Preparación de la serie temporal.
* División entre datos de entrenamiento y prueba.
* Ajuste del modelo.
* Generación de predicciones.
* Comparación entre valores reales y estimados.

---

# 📊 Evaluación del Modelo

Para validar el rendimiento del modelo utilicé diferentes métricas:

## MAE

Permitió medir el error absoluto promedio entre valores reales y predichos.

## RMSE

Utilizado para evaluar la magnitud de los errores dando mayor peso a desviaciones grandes.

## MAPE

Empleado para interpretar el error porcentual del modelo.

También analicé criterios estadísticos como:

* AIC.
* BIC.

Estos indicadores permitieron seleccionar una configuración adecuada del modelo.

---

# 📸 Evidencia del Desarrollo

El proyecto incluye capturas del proceso completo:

* Preparación de datos.
* Construcción del dataset final.
* Creación de la serie temporal.
* Entrenamiento del modelo.
* Resultados del forecasting.
* Evaluación estadística.

Estas evidencias muestran el flujo completo desde los datos originales hasta la generación del modelo predictivo.

---

# 📊 Resultados Obtenidos

Como resultado desarrollé un modelo funcional de predicción de ventas capaz de generar estimaciones futuras basadas en comportamiento histórico.

Los principales resultados fueron:

* Dataset preparado para modelado temporal.
* Serie histórica consolidada.
* Modelo ARIMA implementado correctamente.
* Evaluación mediante métricas estadísticas.
* Predicciones orientadas a planeación comercial.

---

# 🚀 Aplicaciones del Proyecto

Este tipo de solución puede utilizarse para:

* Planeación de inventarios.
* Pronóstico de demanda.
* Optimización de producción.
* Identificación de tendencias comerciales.
* Apoyo a decisiones estratégicas.

---

# 🛠️ Tecnologías Utilizadas

Durante el desarrollo utilicé:

* Python.
* Pandas.
* NumPy.
* Statsmodels.
* Matplotlib.
* Jupyter Notebook.
* Visual Studio Code.

---

# 📌 Nota sobre los Datos

Los archivos originales utilizados durante el desarrollo no forman parte del repositorio debido a su tamaño.

Las fuentes utilizadas fueron documentadas dentro del proyecto para mantener una estructura profesional de control de versiones.

El notebook contiene el flujo necesario para reproducir el proceso utilizando las fuentes correspondientes.

---

# 👨‍💻 Autor

**RobertScience**
Data Analytics & Data Science Solutions

https://robertscience.online

**Convertimos información en decisiones inteligentes.**
