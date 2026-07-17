Proyecto 039 - Clustering con K-Means y Reducción de Dimensionalidad PCA

Machine Learning No Supervisado | K-Means Clustering | PCA | Análisis Exploratorio de Datos

RobertScience Data Analytics Consulting

Descripción del Proyecto

En este proyecto desarrollé un análisis de agrupamiento no supervisado utilizando el algoritmo K-Means, con el objetivo de identificar estructuras naturales dentro del dataset Iris mediante técnicas de clustering y reducción de dimensionalidad.

El enfoque principal consistió en analizar patrones ocultos en los datos sin utilizar etiquetas durante el entrenamiento del modelo, evaluando la capacidad del algoritmo para reconstruir la estructura real del dataset a partir únicamente de variables numéricas.

El análisis se complementó con la aplicación de PCA (Principal Component Analysis), lo que permitió reducir la dimensionalidad del problema y facilitar la visualización de los clusters en un espacio bidimensional, manteniendo la mayor cantidad posible de información estadística relevante.

Objetivo Técnico

El objetivo principal de este proyecto fue aplicar técnicas de aprendizaje no supervisado para analizar la estructura interna del dataset Iris y validar la consistencia de los agrupamientos obtenidos.

De manera específica se plantearon los siguientes objetivos:

Aplicar el algoritmo K-Means sobre variables numéricas del dataset.
Determinar el número óptimo de clusters mediante:
Método del Codo (Elbow Method)
Coeficiente Silhouette
Analizar la coherencia de los agrupamientos obtenidos.
Aplicar PCA para reducción de dimensionalidad.
Comparar la estructura de clusters en espacio original vs espacio reducido.
Evaluar la estabilidad del modelo ante transformación de variables.

Durante el desarrollo se ejecutaron los siguientes procesos:

Exploración inicial del dataset.
Análisis estadístico descriptivo.
Selección de variables numéricas.
Evaluación de hiperparámetro k.
Entrenamiento del modelo K-Means.
Transformación mediante PCA.
Visualización y comparación de resultados.
Tecnologías Utilizadas

Lenguaje

Python 3.11

Entorno de Desarrollo

Jupyter Notebook
Visual Studio Code

Librerías principales

Pandas
NumPy
Matplotlib
Scikit-Learn
Seaborn
Estructura del Proyecto
039-clustering-kmeans-pca-iris-robertscience

│
├── data
│   └── iris.csv (cargado desde fuente externa)
│
├── notebooks
│   └── Practica_M27_KMeans_PCA.ipynb
│
├── img
│   ├── elbow_method.png
│   ├── silhouette_score.png
│   ├── clusters_original.png
│   └── clusters_pca.png
│
├── requirements.txt
│
└── README.md
Descripción de Carpetas y Archivos
data

En esta carpeta se define la fuente del dataset utilizado para el análisis.

El dataset Iris contiene mediciones de flores pertenecientes a tres especies:

Setosa
Versicolor
Virginica

Las variables analizadas fueron:

sepal.length
sepal.width
petal.length
petal.width
variety (variable de referencia no utilizada en entrenamiento)
notebooks

Contiene el desarrollo completo del análisis:

Practica_M27_KMeans_PCA.ipynb

Dentro del notebook se implementó:

Carga del dataset desde fuente externa.
Exploración inicial de datos.
Análisis estadístico descriptivo.
Visualización de distribuciones.
Selección de variables para clustering.
Evaluación del número óptimo de clusters.
Entrenamiento del modelo K-Means.
Aplicación de PCA.
Comparación de resultados.
Visualización de clusters en distintos espacios.
img

Contiene las visualizaciones generadas durante el análisis:

Método del Codo (Elbow Method)
Coeficiente Silhouette
Clusters en espacio original
Clusters en espacio reducido con PCA

Estas imágenes permiten validar visualmente la consistencia del modelo y la separación de grupos.

Flujo de Desarrollo
1. Exploración del Dataset

Se realizó una exploración inicial del dataset Iris con el objetivo de comprender su estructura interna.

El dataset está compuesto por:

150 observaciones
4 variables numéricas principales
1 variable categórica (especie)

Se validó que no existieran valores nulos y que todas las variables numéricas estuvieran correctamente tipificadas para su uso en algoritmos de clustering.

2. Análisis Estadístico

Se ejecutó un análisis descriptivo para evaluar:

Distribución de variables
Rangos de valores
Variabilidad entre atributos
Diferencias de escala entre features

Este paso permitió confirmar la necesidad de trabajar con técnicas de normalización conceptual previa al clustering.

3. Selección de Variables

Para el modelo K-Means se seleccionaron exclusivamente variables numéricas:

sepal.length
sepal.width
petal.length
petal.width

La variable categórica fue excluida del entrenamiento para garantizar un enfoque estrictamente no supervisado.

4. Determinación del Número Óptimo de Clusters

Se aplicaron dos técnicas complementarias:

Método del Codo

Se analizó la inercia del modelo para distintos valores de k, observando un punto de inflexión claro en k = 3.

Coeficiente Silhouette

Se evaluó la calidad de los clusters, obteniendo los mejores valores de separación también en k = 3.

Conclusión técnica:
Se determinó que el número óptimo de clusters para el dataset es k = 3.

5. Aplicación del Modelo K-Means

Se entrenó el modelo K-Means con:

k = 3
inicialización aleatoria controlada
múltiples reinicializaciones para estabilidad

El modelo permitió agrupar las observaciones en tres segmentos bien diferenciados según similitud geométrica en el espacio de variables.

6. Visualización de Clusters

Se generaron visualizaciones utilizando variables de mayor capacidad discriminativa:

petal.length
petal.width

Los resultados mostraron una separación clara entre grupos, evidenciando la capacidad del algoritmo para capturar estructura interna del dataset.

7. Reducción de Dimensionalidad con PCA

Se aplicó PCA (Principal Component Analysis) para reducir el dataset de 4 dimensiones a 2 componentes principales.

Resultados:

PC1 explicó la mayor parte de la varianza del dataset.
PC2 complementó la representación estructural.

Esto permitió proyectar los datos en un espacio bidimensional sin pérdida significativa de información.

8. Clustering en Espacio Reducido

Se aplicó nuevamente K-Means sobre los componentes principales.

El resultado mostró:

Clusters más claramente separables visualmente
Estructura consistente con el modelo original
Mayor facilidad de interpretación
9. Comparación de Resultados

La comparación entre el espacio original y el espacio PCA mostró consistencia en la estructura de agrupamiento.

Esto confirma que:

El dataset tiene estructura linealmente separable en gran medida
PCA preserva la información relevante para clustering
K-Means es robusto ante reducción de dimensionalidad en este caso
Conclusiones

El desarrollo de este proyecto permitió aplicar de forma práctica técnicas fundamentales de aprendizaje no supervisado, específicamente K-Means y PCA, sobre un dataset clásico de referencia en ciencia de datos.

Se logró identificar correctamente la estructura natural del dataset en tres grupos, los cuales coinciden con las especies reales de Iris, sin necesidad de utilizar etiquetas durante el entrenamiento.

La incorporación de PCA permitió simplificar la representación del problema, facilitando la visualización y validación de los resultados sin comprometer la integridad de la información relevante.

Este tipo de enfoques es ampliamente utilizado en problemas reales de segmentación, análisis exploratorio y reducción de dimensionalidad en entornos empresariales y científicos.

Reflexión Final

Durante el desarrollo del proyecto se evidenció la importancia de la selección adecuada del número de clusters, así como el impacto de la escala de las variables en algoritmos basados en distancia como K-Means.

La combinación de técnicas como Elbow Method, Silhouette Score y PCA permitió construir un flujo de análisis robusto, interpretable y alineado con prácticas profesionales de ciencia de datos.

Este proyecto refuerza la aplicación práctica del aprendizaje no supervisado como herramienta para descubrimiento de patrones sin necesidad de supervisión explícita.

Recomendación Estratégica

A partir de la lógica aplicada en este análisis, se pueden derivar aplicaciones directas en entornos empresariales como:

Segmentación de clientes basada en comportamiento.
Análisis de patrones de consumo.
Reducción de dimensionalidad en grandes volúmenes de datos.
Optimización de modelos de clustering en producción.
Exploración de estructuras ocultas en datasets complejos.

RobertScience
Data Analytics & Engineering Solutions

https://robertscience.online