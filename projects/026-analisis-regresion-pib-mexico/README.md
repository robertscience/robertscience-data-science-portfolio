📊 Tarea M19-CD – Análisis de Regresión del PIB de México
Proyecto de Análisis Predictivo con Ciencia de Datos

RobertScience Data Analytics Consulting

📌 Descripción del Proyecto

Este proyecto consiste en un análisis de regresión aplicado a los datos históricos del Producto Interno Bruto (PIB) de México, utilizando información del Banco Mundial.

El objetivo principal es modelar la evolución del PIB mediante una regresión logística, evaluar el comportamiento del modelo con datos originales y normalizados, y finalmente generar un pronóstico del PIB para el año 2022.

Durante el desarrollo se aplicaron técnicas fundamentales de Ciencia de Datos como:

Limpieza y exploración de datos.
Visualización de series temporales.
Ajuste de modelos no lineales.
Normalización de variables para estabilidad numérica.
Optimización de parámetros mediante mínimos cuadrados.
Evaluación visual del ajuste del modelo.

Este proyecto representa una aplicación práctica de modelado estadístico para la comprensión del comportamiento económico de largo plazo.

🎯 Objetivo

El objetivo principal fue construir un modelo predictivo capaz de describir la evolución histórica del PIB de México y generar proyecciones confiables.

Los objetivos específicos fueron:

Analizar la evolución histórica del PIB de México.
Implementar un modelo de regresión logística.
Resolver problemas de estabilidad numérica mediante normalización.
Evaluar el ajuste del modelo frente a datos reales.
Generar un pronóstico del PIB para el año 2022.
Documentar el proceso completo de forma reproducible.
🏗️ Arquitectura del Proyecto

La estructura del proyecto se organizó de la siguiente manera:

026-tarea-m19-cd-regresion-pib-mexico/
│
├── notebooks/
│   ├── Tarea_M19-CD_robertscience.ipynb
│   └── M19-CD_robertscience.ipynb
│
├── data/
│   └── MexicoGDP.xlsx
│
├── reports/
│   └── analisis_pib_mexico.pdf
│
└── README.md
📂 Nota sobre la estructura del repositorio

La estructura anterior representa el entorno completo de desarrollo del proyecto.

En este repositorio de portafolio no siempre se incluyen todos los archivos originales, especialmente aquellos que contienen datos pesados o dependen de fuentes externas como el Banco Mundial.

El dataset fue utilizado localmente para el análisis, mientras que el repositorio conserva únicamente los elementos necesarios para reproducir la metodología, el modelo y los resultados obtenidos.

🛠️ Tecnologías Utilizadas

Durante el desarrollo del proyecto se utilizaron las siguientes herramientas:

Python 3.11
Pandas
NumPy
Matplotlib
SciPy
Jupyter Notebook
Excel (dataset PIB México)
🔎 Desarrollo del Proyecto
1. Carga y exploración del dataset

Se cargó el archivo MexicoGDP.xlsx y se realizó una inspección inicial para validar la estructura de los datos.

Se identificaron dos variables principales:

Año (variable independiente X)
PIB (variable dependiente Y)
2. Visualización del comportamiento histórico

Se generó una gráfica de la evolución del PIB para identificar tendencias generales de crecimiento económico.

Esto permitió observar un comportamiento no lineal adecuado para un modelo logístico.

3. Definición del modelo logístico

Se implementó la función logística como modelo de regresión:

Y=
1+e
−(β
1
	​

+β
2
	​

X)
1
	​


Este modelo permite capturar comportamientos de crecimiento con saturación.

4. Ajuste del modelo sin normalización

Se realizó un primer ajuste utilizando los datos originales.

Sin embargo, se presentaron problemas de convergencia debido a la magnitud de los valores del PIB, lo que afectó la estabilidad del modelo.

5. Normalización de los datos

Para resolver el problema anterior, se aplicó una normalización dividiendo cada variable entre su valor máximo.

Esto permitió:

Mejorar la estabilidad numérica.
Facilitar la convergencia del algoritmo.
Obtener parámetros más confiables.
6. Ajuste del modelo normalizado

Con los datos normalizados se realizó nuevamente el ajuste del modelo logístico.

El resultado fue un modelo estable que representa adecuadamente la tendencia del PIB.

7. Visualización del ajuste

Se compararon los datos normalizados con la curva ajustada, observando un buen ajuste general del modelo.

8. Pronóstico del PIB 2022

Se utilizó el modelo ajustado para predecir el PIB correspondiente al año 2022.

Posteriormente, se realizó la transformación inversa para recuperar la escala original del PIB.

📈 Resultados Obtenidos

Como resultado del análisis se logró:

Modelar la evolución histórica del PIB de México.
Resolver problemas de inestabilidad numérica mediante normalización.
Ajustar un modelo logístico funcional.
Generar un pronóstico para el año 2022.
Visualizar el comportamiento económico de forma clara y profesional.
📚 Aprendizajes Técnicos

Este proyecto permitió reforzar conocimientos clave en:

Regresión no lineal.
Modelado estadístico aplicado a economía.
Normalización de datos en Machine Learning.
Interpretación de modelos logísticos.
Uso de SciPy para optimización de parámetros.
Visualización de datos con Matplotlib.
🚀 Aplicación Profesional

Este tipo de modelos se utilizan en:

Análisis económico y financiero.
Predicción de crecimiento macroeconómico.
Modelos de comportamiento de mercado.
Ciencia de datos aplicada a políticas públicas.
Business Intelligence.

El enfoque aplicado en este proyecto es directamente transferible a problemas reales de análisis predictivo.

👨‍💻 Autor

RobertScience

Data Analytics & Engineering Solutions

Transformando datos en decisiones inteligentes.

https://robertscience.online