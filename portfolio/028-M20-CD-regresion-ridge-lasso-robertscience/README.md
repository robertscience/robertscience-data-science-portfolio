Tarea M20-CD – Análisis de Regresión (Lineal, Ridge y Lasso)

Autor: RobertScience
Profesión: Científico de Datos v2
Proyecto: Modelado predictivo de emisiones de CO₂ a partir de consumo de combustible

1. Descripción general del proyecto

En este proyecto realicé un análisis de regresión sobre un conjunto de datos relacionado con el consumo de combustible de vehículos y sus emisiones de CO₂. El objetivo principal fue construir, evaluar y comparar tres modelos predictivos:

Regresión Lineal Múltiple (modelo base)
Regresión Ridge (regularización L2)
Regresión Lasso (regularización L1)

El propósito del análisis fue identificar el modelo con mejor capacidad de generalización y menor error de predicción, utilizando métricas estándar de desempeño.

2. Objetivo del análisis

El objetivo de este trabajo fue desarrollar un modelo predictivo capaz de estimar las emisiones de CO₂ a partir de variables técnicas del consumo de combustible, aplicando técnicas de regresión lineal y regularización.

Adicionalmente, busqué evaluar el impacto de la regularización en el rendimiento del modelo y su capacidad para mejorar la estabilidad frente a posibles problemas de sobreajuste.

3. Estructura del proyecto

El proyecto se organizó bajo una estructura reproducible y orientada a buenas prácticas en ciencia de datos:

Tarea M20-CD – robertscience/
│
├── data/
│   └── FuelConsumptionCo2.xlsx
│
├── notebooks/
│   └── Tarea_M20-CD_robertscience.ipynb
│
├── img/
│   └── (gráficas generadas durante el análisis)
│
├── .venv/
│   └── entorno virtual del proyecto
│
└── README.md

Esta estructura permite la reproducibilidad del análisis y la separación clara entre datos, código y resultados.

4. Preparación del entorno de trabajo

El desarrollo del proyecto se realizó en un entorno controlado utilizando Python y un entorno virtual (.venv) exclusivo.

Configuración utilizada:
Python 3.11.x
VS Code con extensión de Python y Jupyter
Entorno virtual por proyecto (.venv)
Librerías principales:
pandas
numpy
matplotlib
scikit-learn
statsmodels
openpyxl

El kernel de Jupyter fue configurado para apuntar directamente al entorno virtual del proyecto, garantizando consistencia entre ejecución y resultados.

5. Flujo de trabajo del análisis

El desarrollo del proyecto siguió un flujo estructurado de ciencia de datos:

1. Carga de datos

Se importó el archivo FuelConsumptionCo2.xlsx y se realizó una inspección inicial del conjunto de datos.

2. Exploración y limpieza

Se analizaron tipos de variables, valores nulos y estadísticos descriptivos. Posteriormente, se realizó una depuración del dataset para asegurar consistencia en el modelado.

3. Selección de variables

Se definieron las variables predictoras (X) y la variable objetivo (CO2EMISSIONS), eliminando variables no numéricas cuando fue necesario.

4. División del conjunto de datos

Se separaron los datos en conjuntos de entrenamiento y prueba para evaluar el desempeño de los modelos de forma objetiva.

5. Modelado predictivo

Se entrenaron tres modelos:

Regresión Lineal Múltiple como modelo base
Ridge Regression con regularización L2
Lasso Regression con regularización L1
6. Selección de hiperparámetros

Se evaluaron distintos valores de alpha para Ridge y Lasso, seleccionando el valor óptimo en función del R² en el conjunto de prueba.

7. Evaluación de modelos

Los modelos fueron evaluados utilizando:

R² (coeficiente de determinación)
MAE (error absoluto medio)
RMSE (raíz del error cuadrático medio)
6. Resultados obtenidos

El análisis comparativo mostró diferencias claras entre los modelos evaluados:

El modelo Ridge presentó el mejor desempeño global.
El modelo Lasso mostró mayor penalización en los coeficientes, afectando ligeramente su capacidad predictiva.
El modelo de regresión lineal, aunque sólido, presentó menor capacidad de generalización frente a los modelos regularizados.

En términos generales, los modelos con regularización demostraron una mejora en estabilidad y capacidad predictiva.

7. Conclusiones

A partir de los resultados obtenidos, concluyo que la aplicación de técnicas de regularización mejora el rendimiento de los modelos de regresión en este tipo de problemas.

El modelo Ridge fue el que ofreció el mejor equilibrio entre ajuste y generalización, reduciendo el riesgo de sobreajuste sin perder capacidad explicativa.

Este análisis confirma la importancia de aplicar técnicas de regularización cuando se trabaja con múltiples variables predictoras en problemas de regresión.

8. Reproducibilidad del proyecto

Para reproducir este análisis es necesario:

Clonar o copiar la estructura del proyecto
Crear un entorno virtual (.venv)
Instalar las dependencias necesarias
Seleccionar el kernel correcto en Jupyter
Ejecutar el notebook de forma secuencial
9. Notas finales

Este proyecto fue desarrollado bajo un enfoque de buenas prácticas en ciencia de datos, priorizando:

Reproducibilidad
Limpieza del entorno
Estructura modular del proyecto
Evaluación comparativa de modelos 

👨‍💻 Autor

Proyecto desarrollado por:

RobertScience

Data Analytics & Engineering Solutions

Transformando información en decisiones inteligentes.

https://robertscience.online