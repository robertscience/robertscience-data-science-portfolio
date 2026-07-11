# Proyecto 040 - Análisis de Componentes Principales (PCA): Reducción de Dimensionalidad y Exploración Multivariada del Dataset Iris

Machine Learning No Supervisado | Análisis Multivariado | Reducción de Dimensionalidad | PCA

RobertScience Data Analytics Consulting


# Descripción del Proyecto

En este proyecto desarrollé un análisis exploratorio multivariado utilizando la técnica de **Análisis de Componentes Principales (PCA)** aplicada al conjunto de datos clásico **Iris Dataset**.

El objetivo principal fue reducir la dimensionalidad del conjunto de variables originales, conservando la mayor cantidad posible de información estadística, y analizar la estructura interna de los datos mediante una representación gráfica en un nuevo espacio de componentes principales.

El análisis permitió estudiar las relaciones existentes entre las variables físicas de las flores, identificar patrones naturales de agrupamiento entre especies y determinar qué características tienen mayor influencia dentro de la variabilidad del conjunto de datos.


El dataset utilizado contiene información sobre tres especies de flores:

- Setosa
- Versicolor
- Virginica


Las variables analizadas corresponden a características físicas:

- Longitud del sépalo
- Ancho del sépalo
- Longitud del pétalo
- Ancho del pétalo


A partir de estas variables se realizó una transformación matemática que permitió representar la información original mediante componentes principales, facilitando su interpretación visual y estadística.


# Objetivo Técnico

El objetivo principal del proyecto fue aplicar PCA como técnica de reducción de dimensionalidad para analizar la estructura multivariada del dataset.

Durante el desarrollo se realizaron los siguientes procesos:

- Exploración inicial del conjunto de datos.
- Validación de estructura y tipos de variables.
- Selección de variables numéricas.
- Estandarización mediante StandardScaler.
- Análisis de correlación entre variables.
- Aplicación del algoritmo PCA.
- Evaluación de varianza explicada.
- Reducción dimensional a dos componentes principales.
- Visualización de observaciones en espacio bidimensional.
- Interpretación de cargas y contribución de variables.
- Construcción de biplot PCA.
- Análisis final de resultados.


# Tecnologías Utilizadas

## Lenguaje

Python 3.11


## Entorno de Desarrollo

Jupyter Notebook

Visual Studio Code


## Librerías principales

Pandas

NumPy

Matplotlib

Seaborn

Scikit-Learn


# Estructura del Proyecto

```
040-analisis-componentes-principales-pca-iris-robertscience

│
├── notebooks
│   └── Tarea M28-CD – RobertScience.ipynb
│
├── img
│   ├── matriz_correlacion.png
│   ├── scree_plot.png
│   ├── pca_componentes.png
│   ├── mapa_factores.png
│   ├── varianza_acumulada.png
│   └── biplot_pca.png
│
├── requirements.txt
│
└── README.md
```


# Descripción de Carpetas y Archivos


## notebooks

Contiene el desarrollo completo del análisis realizado mediante Jupyter Notebook.


Archivo principal:

```
Tarea M28-CD – RobertScience.ipynb
```


Dentro del notebook se implementó:

- Carga del dataset Iris.
- Exploración estadística inicial.
- Preparación de variables.
- Estandarización de datos.
- Cálculo de matriz de correlación.
- Aplicación del modelo PCA.
- Cálculo de varianza explicada.
- Reducción dimensional.
- Visualización de componentes principales.
- Interpretación de cargas factoriales.
- Construcción de biplot.
- Conclusiones del análisis.


# Flujo de Desarrollo


# 1. Exploración del Dataset

Se realizó una revisión inicial para comprender la estructura del conjunto de datos.

Características principales:

- 150 registros.
- 4 variables numéricas.
- 1 variable categórica.
- 3 clases diferentes de especies.


La exploración permitió verificar la ausencia de valores faltantes y confirmar que las variables disponibles eran adecuadas para aplicar técnicas multivariadas.


# 2. Selección de Variables

Para aplicar PCA se seleccionaron únicamente las variables cuantitativas:

- sepal.length
- sepal.width
- petal.length
- petal.width


La variable correspondiente a la especie fue conservada únicamente para interpretar posteriormente la distribución de los grupos.


# 3. Estandarización de Datos

Debido a que PCA utiliza relaciones basadas en varianza y covarianza, fue necesario transformar previamente las variables mediante StandardScaler.


El proceso permitió obtener variables con:

- Media = 0
- Desviación estándar = 1


Esta transformación evitó que alguna variable dominara el análisis debido a diferencias de escala.


# 4. Análisis de Correlación

Se construyó una matriz de correlación para estudiar la relación entre las variables originales.


Este análisis permitió identificar relaciones importantes entre características físicas de las flores.


Las variables relacionadas con las dimensiones del pétalo mostraron una fuerte relación lineal, indicando que PCA era una técnica adecuada para reducir redundancia y capturar la estructura principal del dataset.


# 5. Aplicación del Modelo PCA

Se aplicó el algoritmo:

```
PCA()
```


El modelo transformó las variables originales en nuevos componentes principales.


Cada componente representa una combinación lineal de las variables originales y está ordenado según la cantidad de información que explica dentro del conjunto de datos.


# 6. Análisis de Varianza Explicada

Uno de los objetivos principales del PCA fue determinar cuánta información podía conservarse mediante la reducción dimensional.


Resultados obtenidos:


Primer componente:

```
PC1 = 72.96%
```


Segundo componente:

```
PC2 = 22.85%
```


Varianza acumulada:


```
PC1 + PC2 = 95.81%
```


Esto indica que únicamente dos componentes principales permiten representar aproximadamente el 96% de la información original del dataset.


# 7. Reducción Dimensional a Dos Componentes

Se realizó una transformación utilizando:


```
PCA(n_components=2)
```


Esto permitió representar las observaciones en un espacio bidimensional.


La nueva representación facilitó:

- Visualización de patrones.
- Comparación entre especies.
- Identificación de agrupamientos naturales.


# 8. Visualización del Espacio PCA

Se generó un mapa de observaciones donde cada punto representa una flor proyectada sobre:

- Componente Principal 1.
- Componente Principal 2.


La distribución mostró una separación clara entre especies, especialmente para:

- Setosa.
- Versicolor.
- Virginica.


Esto demuestra que las variables originales contienen información suficiente para diferenciar los grupos.


# 9. Interpretación de Componentes y Variables

Se analizaron las cargas factoriales (loadings) para identificar qué variables tienen mayor influencia en cada componente.


Los resultados muestran que las variables relacionadas con:

- Longitud del pétalo.
- Ancho del pétalo.

presentan una contribución importante dentro de la separación de especies.


Esto confirma que las dimensiones del pétalo representan características relevantes para explicar la variabilidad del dataset.


# 10. Construcción del Biplot PCA

Se desarrolló un biplot combinando:

- Distribución de observaciones.
- Influencia de variables originales.


Esta visualización permitió analizar simultáneamente:

- Posición relativa de las especies.
- Dirección de influencia de cada característica.
- Relación entre variables y componentes principales.


# Resultados del Proyecto

Los principales resultados obtenidos fueron:


## Reducción efectiva de dimensionalidad

El dataset original compuesto por cuatro variables pudo ser representado mediante dos componentes principales conservando más del 95% de la información.


## Identificación de patrones naturales

Las especies mostraron agrupamientos diferenciados dentro del espacio PCA.


## Interpretación de variables importantes

Las medidas relacionadas con los pétalos fueron las variables con mayor influencia en la separación de grupos.


## Visualización avanzada de datos multivariados

PCA permitió transformar un problema de cuatro dimensiones en una representación gráfica interpretable.


# Aplicaciones del PCA en Ciencia de Datos

El Análisis de Componentes Principales es ampliamente utilizado en proyectos profesionales para:


- Reducción de dimensionalidad en grandes datasets.
- Eliminación de variables redundantes.
- Preparación de datos para modelos de Machine Learning.
- Visualización de información compleja.
- Identificación de patrones ocultos.
- Análisis exploratorio avanzado.


# Conclusión

El análisis de componentes principales permitió transformar el conjunto de datos Iris en una representación simplificada manteniendo la mayor parte de la información original.


La aplicación de PCA demostró que es posible reducir la complejidad del dataset utilizando únicamente dos componentes principales, conservando aproximadamente el 95.8% de la variabilidad total.


La visualización obtenida permitió identificar patrones claros entre las especies y comprender qué variables tienen mayor influencia dentro de la estructura de los datos.


Este proyecto demuestra la utilidad del PCA como herramienta fundamental dentro del análisis exploratorio, la ingeniería de variables y la preparación de datos para modelos avanzados de Machine Learning.


# Reflexión Final

Durante el desarrollo del proyecto comprendí la importancia de transformar correctamente los datos antes de aplicar técnicas estadísticas avanzadas.


El PCA permitió observar que muchas variables contienen información compartida y que es posible simplificar conjuntos complejos sin perder capacidad interpretativa.


Además, el análisis de componentes principales mostró cómo las técnicas matemáticas pueden convertirse en herramientas visuales para descubrir patrones, relaciones y estructuras ocultas dentro de los datos.


Este conocimiento representa una base importante para desarrollar análisis más avanzados de reducción dimensional, visualización y modelamiento predictivo.


# Recomendación Estratégica Empresarial

Desde una perspectiva empresarial, las técnicas de reducción dimensional como PCA pueden ser utilizadas para:


- Simplificar análisis con grandes cantidades de variables.
- Mejorar procesos de visualización ejecutiva.
- Detectar relaciones ocultas entre indicadores.
- Preparar información para modelos predictivos.
- Optimizar procesos de clasificación y segmentación.


La reducción inteligente de información permite transformar datos complejos en conocimiento útil para la toma de decisiones.


---

RobertScience

Data Analytics & Engineering Solutions

https://robertscience.online