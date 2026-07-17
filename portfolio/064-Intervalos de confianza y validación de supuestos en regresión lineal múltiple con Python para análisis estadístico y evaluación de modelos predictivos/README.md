# Intervalos de Confianza y Validación de Supuestos en Regresión Lineal Múltiple

Machine Learning | Multiple Linear Regression | Statistical Analysis | Confidence Intervals | Model Validation | Hypothesis Testing | Residual Analysis | Data Science | Python | Statsmodels | Scikit-Learn

---

# RobertScience Data Analytics Consulting

# Descripción del Proyecto

En este proyecto desarrollé un análisis estadístico completo orientado a la construcción, evaluación y validación de un modelo de Regresión Lineal Múltiple utilizando Python.

El objetivo principal fue desarrollar un modelo predictivo capaz de estimar ventas a partir de inversión publicitaria, incorporando no solamente métricas de desempeño, sino también una validación profunda de los supuestos estadísticos necesarios para garantizar la confiabilidad del modelo.

Durante el desarrollo trabajé con el dataset `Advertising.csv`, analizando la relación existente entre diferentes canales de inversión publicitaria y el comportamiento de las ventas generadas.

A diferencia de un enfoque únicamente predictivo basado en métricas como R², en este proyecto realicé una evaluación estadística completa del modelo mediante análisis de significancia, intervalos de confianza, análisis de residuos y pruebas estadísticas para validar que los resultados obtenidos fueran consistentes desde una perspectiva matemática y analítica.

El flujo desarrollado incluyó la exploración inicial del conjunto de datos, análisis descriptivo, construcción del modelo de regresión lineal múltiple, selección de variables estadísticamente relevantes, evaluación del ajuste, generación de predicciones con intervalos de confianza y validación de supuestos mediante pruebas estadísticas especializadas.

Para validar el comportamiento del modelo implementé pruebas de normalidad de residuos mediante Shapiro-Wilk, análisis de independencia utilizando el estadístico Durbin-Watson y evaluación de homocedasticidad mediante White Test.

Este proyecto representa una aplicación práctica de metodologías utilizadas dentro de Data Science, Machine Learning Supervisado, Modelado Estadístico y Predictive Analytics para construir modelos interpretables y respaldados por evidencia estadística.

---

# Objetivo Técnico

El objetivo principal fue construir un modelo de Regresión Lineal Múltiple capaz de explicar la relación entre inversión publicitaria y ventas, validando estadísticamente sus supuestos antes de utilizarlo como herramienta predictiva.

Durante el desarrollo del proyecto me propuse alcanzar los siguientes objetivos técnicos:

- Importar y analizar un dataset de inversión publicitaria.
- Explorar la estructura general de los datos.
- Validar la calidad del conjunto de información.
- Identificar variables relevantes para el modelo.
- Construir un modelo inicial de regresión lineal múltiple.
- Evaluar coeficientes y valores p.
- Seleccionar variables estadísticamente significativas.
- Construir un modelo final optimizado.
- Evaluar el rendimiento mediante R².
- Generar predicciones con intervalos de confianza.
- Analizar la distribución de residuos.
- Validar el supuesto de normalidad.
- Evaluar independencia de errores mediante Durbin-Watson.
- Detectar posibles problemas de heterocedasticidad mediante White Test.
- Comparar cálculos estadísticos manuales contra resultados obtenidos mediante librerías especializadas.
- Interpretar los resultados obtenidos desde una perspectiva analítica.

---

# Dataset Utilizado

Como fuente principal de información utilicé el archivo:

**Advertising.csv**

Este conjunto de datos contiene información relacionada con inversiones realizadas en diferentes medios publicitarios y su impacto sobre las ventas obtenidas.

Las variables principales utilizadas dentro del análisis fueron:

## Variables Independientes

- TV
- Radio
- Newspaper

## Variable Objetivo

- Sales

El objetivo del modelo fue determinar cómo la inversión realizada en cada medio publicitario influye sobre el comportamiento de las ventas.

Antes de iniciar la etapa de modelado realicé un proceso de exploración y validación de datos para verificar:

- estructura del dataset
- tipos de variables
- dimensiones del conjunto de datos
- existencia de valores nulos
- comportamiento estadístico general

Debido a criterios de organización del repositorio y buenas prácticas de administración de proyectos en GitHub, el dataset original no fue incluido dentro del repositorio.

Sin embargo, toda la estructura del proyecto, dependencias utilizadas, metodología aplicada y flujo completo de análisis fueron documentados para permitir la reproducción del estudio utilizando el mismo archivo de entrada.

---

# Metodología Implementada

El desarrollo del proyecto fue dividido en diferentes etapas analíticas siguiendo un flujo estructurado de Ciencia de Datos.

## 1. Preparación del Entorno

Inicialmente configuré el entorno de trabajo utilizando Python y las librerías necesarias para realizar análisis estadístico, visualización y construcción del modelo predictivo.

Las principales herramientas utilizadas fueron:

- Pandas
- NumPy
- Matplotlib
- Seaborn
- Statsmodels
- Scikit-Learn
- SciPy

Esta configuración permitió desarrollar un flujo completo desde la manipulación inicial de datos hasta la validación estadística del modelo.

---

## 2. Carga y Exploración del Dataset

Realicé la carga del archivo `Advertising.csv` utilizando Pandas y posteriormente validé que la información fuera interpretada correctamente.

Durante esta etapa analicé:

- cantidad de registros
- número de variables
- nombres de columnas
- tipos de datos
- estructura general del dataset

La exploración inicial permitió comprender la composición de la información antes de iniciar la construcción del modelo estadístico.

---

## 3. Análisis Descriptivo de Variables

Posteriormente generé estadísticas descriptivas para estudiar el comportamiento general de las variables involucradas.

Durante esta etapa analicé:

- media
- desviación estándar
- valores mínimos
- valores máximos
- distribución de datos

Este análisis permitió identificar características importantes del conjunto de información y obtener una primera interpretación del comportamiento de las variables publicitarias.

---

## 4. Validación de Calidad de Datos

Antes de realizar el entrenamiento del modelo verifiqué la existencia de valores faltantes dentro del dataset.

La validación de calidad permitió asegurar que la información utilizada durante el análisis no presentara problemas que pudieran afectar los resultados estadísticos.

También revisé la consistencia general de los datos para garantizar que las variables utilizadas fueran adecuadas para el proceso de modelado.

---

## 5. Análisis de Correlación

Realicé un análisis de correlación entre las variables numéricas con el objetivo de identificar la relación existente entre las inversiones publicitarias y las ventas.

Mediante una matriz de correlación y visualizaciones estadísticas analicé el nivel de asociación entre las variables independientes y la variable objetivo.

Este análisis permitió obtener una referencia inicial sobre qué características podrían tener mayor influencia dentro del modelo predictivo.

---

# Tecnologías Utilizadas

## Lenguaje de Programación

- Python 3.11.9

## Manipulación y Análisis de Datos

- Pandas
- NumPy

## Visualización

- Matplotlib
- Seaborn

## Modelado Estadístico

- Statsmodels

## Machine Learning

- Scikit-Learn

## Análisis Estadístico

- SciPy

## Entorno de Desarrollo

- Visual Studio Code
- Jupyter Notebook

---

# Estructura del Proyecto

│
├── data
│ │
│ ├── raw
│ │ └── Advertising.csv
│ │
│ └── processed
│
├── notebooks
│ └── practica-m53-intervalos-confianza-validacion-supuestos-regresion-lineal.ipynb
│
├── src
│ └── regression_validation.py
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

Los archivos originales ubicados dentro de las carpetas **data/raw** y **outputs** no fueron incluidos dentro del repositorio debido al tamaño de los datasets, archivos generados durante la ejecución y resultados derivados del análisis estadístico.

Con el objetivo de mantener un repositorio limpio, organizado y alineado con buenas prácticas de desarrollo, la estructura del proyecto, dependencias utilizadas y metodología aplicada fueron documentadas completamente.

Esto permite reproducir el análisis utilizando el mismo dataset de entrada y siguiendo el flujo técnico establecido dentro del proyecto.

---

# Flujo de Desarrollo

## 6. Selección de Variables para el Modelo

Después del análisis exploratorio inicial seleccioné las variables independientes que serían utilizadas dentro del modelo de regresión lineal múltiple.

Las variables consideradas fueron:

- TV
- Radio
- Newspaper

La variable objetivo definida para el proceso predictivo fue:

- Sales

Estas variables representan la relación entre inversión publicitaria y resultados comerciales obtenidos.

---

## 7. División del Dataset

Posteriormente dividí el conjunto de datos en muestras de entrenamiento y prueba utilizando una proporción:

- 70% para entrenamiento.
- 30% para evaluación.

Además establecí una semilla fija mediante `random_state=1` con el propósito de garantizar reproducibilidad en los resultados obtenidos.

Esta separación permitió evaluar el comportamiento del modelo utilizando datos que no participaron directamente durante el ajuste.

---

## 8. Construcción del Modelo de Regresión Lineal Múltiple

Con las variables preparadas construí un modelo estadístico utilizando Ordinary Least Squares (OLS) mediante la librería Statsmodels.

Durante esta etapa agregué la constante necesaria para estimar correctamente el intercepto del modelo.

El modelo inicial permitió obtener información estadística detallada como:

- coeficientes estimados.
- errores estándar.
- estadísticos t.
- valores p.
- intervalos de confianza.
- R².
- R² ajustado.
- estadístico F.

Estos indicadores fueron utilizados para evaluar la calidad estadística del modelo y analizar la importancia individual de cada variable.

---

## 9. Evaluación de Significancia Estadística

Después de construir el modelo inicial analicé los valores p asociados a cada variable independiente.

El objetivo fue determinar cuáles características presentaban evidencia estadística suficiente para formar parte del modelo final.

Mediante este análisis identifiqué que:

- TV presentó una relación significativa con las ventas.
- Radio presentó una relación significativa con las ventas.
- Newspaper presentó menor aporte estadístico dentro del modelo.

Con base en estos resultados construí un modelo reducido utilizando únicamente las variables con mayor relevancia estadística.

---

## 10. Construcción del Modelo Final

Después de evaluar la significancia de las variables desarrollé un modelo final utilizando:

- TV
- Radio

Este modelo reducido permitió mantener una estructura más simple y facilitar la interpretación de los resultados.

La reducción de variables permitió eliminar información con menor aporte explicativo y conservar únicamente aquellas características con mayor influencia dentro del proceso predictivo.

---

## 11. Evaluación del Desempeño Predictivo

Para medir la capacidad predictiva del modelo final utilicé el coeficiente de determinación R².

Esta métrica permitió evaluar qué porcentaje de la variabilidad de las ventas puede ser explicado mediante las variables independientes seleccionadas.

El análisis de desempeño permitió comprobar la capacidad del modelo para generar predicciones utilizando inversión publicitaria como variable explicativa.

---

## 12. Cálculo de Intervalos de Confianza

Una de las etapas principales del proyecto fue la generación de intervalos de confianza para nuevas predicciones.

Utilizando el modelo final calculé intervalos de confianza del 90%, permitiendo no solamente obtener una estimación puntual, sino también conocer el rango esperado donde puede encontrarse el valor real de la predicción.

Este procedimiento permite interpretar la incertidumbre asociada a los resultados y proporciona mayor robustez al análisis predictivo.

---

## 13. Análisis de Residuos

Posteriormente realicé un análisis detallado de los residuos generados por el modelo.

Los residuos representan la diferencia entre los valores reales observados y las predicciones realizadas por el modelo.

Este análisis permitió evaluar si existían patrones no deseados que pudieran indicar problemas en la especificación del modelo.

Para complementar la evaluación generé visualizaciones de distribución de residuos y gráficos de residuos contra valores predichos.

---

## 14. Validación del Supuesto de Normalidad

Para validar la distribución de los residuos utilicé la prueba estadística Shapiro-Wilk.

Esta prueba permitió determinar si los residuos presentan un comportamiento aproximadamente normal.

La validación de normalidad es importante porque muchos procedimientos estadísticos asociados a regresión lineal requieren que los errores sigan una distribución cercana a la normalidad.

---

## 15. Validación de Independencia de Errores

Para analizar la posible existencia de autocorrelación utilicé el estadístico Durbin-Watson.

Además implementé una versión manual del cálculo con el objetivo de comparar los resultados obtenidos mediante la librería Statsmodels.

Este proceso permitió validar que el comportamiento de los residuos fuera consistente con los supuestos esperados del modelo.

---

## 16. Evaluación de Homocedasticidad

Para analizar si la varianza de los residuos permanecía constante utilicé la prueba de White.

Esta prueba permitió evaluar la presencia de heterocedasticidad dentro del modelo.

Adicionalmente desarrollé una aproximación manual del cálculo del estadístico LM para comparar los resultados obtenidos frente a la implementación automática.

---

## 17. Validación Visual del Modelo

Complementé las pruebas estadísticas mediante visualizaciones enfocadas en validar:

- comportamiento de residuos.
- distribución de errores.
- relación entre valores predichos y residuos.

Estas gráficas permitieron interpretar visualmente si el modelo mantenía un comportamiento adecuado y sin patrones evidentes de error.

---

# Resultados Obtenidos

Durante el desarrollo del proyecto logré:

- Construir un modelo de regresión lineal múltiple.
- Analizar la relación entre inversión publicitaria y ventas.
- Identificar variables estadísticamente relevantes.
- Reducir el modelo utilizando criterios de significancia.
- Evaluar el desempeño predictivo mediante R².
- Generar intervalos de confianza para predicciones.
- Analizar residuos del modelo.
- Validar normalidad mediante Shapiro-Wilk.
- Evaluar independencia mediante Durbin-Watson.
- Analizar heterocedasticidad mediante White Test.
- Comparar cálculos manuales contra resultados generados por librerías estadísticas.
- Construir un flujo reproducible de validación estadística.

---

# Conclusiones Técnicas

Este proyecto permitió desarrollar un proceso completo de construcción y validación de un modelo de Regresión Lineal Múltiple bajo una perspectiva estadística.

El análisis demostró que la evaluación de un modelo predictivo no debe limitarse únicamente a medir su capacidad de ajuste, sino que también es necesario verificar que cumpla con los supuestos estadísticos fundamentales.

La aplicación de pruebas de normalidad, independencia y homocedasticidad permitió obtener una visión más completa sobre la confiabilidad del modelo desarrollado.

Además, la incorporación de intervalos de confianza permitió interpretar la incertidumbre asociada a las predicciones, proporcionando una perspectiva más realista sobre los resultados obtenidos.

La combinación de herramientas como Pandas, NumPy, Statsmodels, Scikit-Learn, Matplotlib y Seaborn permitió desarrollar un flujo profesional de análisis estadístico aplicado a Ciencia de Datos.

---

# Aplicación Profesional

Las metodologías desarrolladas en este proyecto tienen aplicación directa en áreas como:

- Data Science.
- Machine Learning Supervisado.
- Predictive Analytics.
- Business Intelligence.
- Modelado Estadístico.
- Econometría.
- Análisis financiero.
- Planeación comercial.
- Optimización de estrategias de marketing.
- Toma de decisiones basada en datos.

---

# Conclusión

En este proyecto desarrollé un análisis estadístico completo utilizando Regresión Lineal Múltiple, integrando construcción de modelos predictivos, selección de variables, cálculo de intervalos de confianza y validación rigurosa de supuestos estadísticos.

El flujo desarrollado permitió comprender no solamente cómo generar predicciones, sino también cómo evaluar la confiabilidad matemática del modelo antes de utilizarlo dentro de escenarios reales.

La implementación fortaleció mis conocimientos en modelado estadístico, análisis de residuos, pruebas de hipótesis y validación de modelos predictivos utilizando Python.

Este proyecto forma parte de mi desarrollo profesional dentro de Ciencia de Datos, orientado a la construcción de soluciones analíticas robustas, interpretables y fundamentadas en evidencia estadística.

---

# Autor

**RobertScience**

**Data Analytics & Machine Learning Engineering**

*Transformando datos en modelos inteligentes para la toma de decisiones.*

**https://robertscience.online**