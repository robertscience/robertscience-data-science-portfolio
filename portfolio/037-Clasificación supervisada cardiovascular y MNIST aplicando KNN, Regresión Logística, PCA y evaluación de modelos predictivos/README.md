Proyecto 037 - Supervised Learning: Clasificación Predictiva en Salud y Reconocimiento de Dígitos
Machine Learning Supervisado | Clasificación Binaria y Multiclase | Modelos Predictivos

RobertScience Data Analytics Consulting

Descripción del Proyecto

En este proyecto desarrollé dos aplicaciones de Machine Learning supervisado orientadas a problemas reales de clasificación:

Un modelo predictivo para estimar el riesgo de ataque al corazón en pacientes basado en variables clínicas.
Un modelo de reconocimiento de dígitos manuscritos utilizando el dataset MNIST.

El desarrollo contempla el flujo completo de un pipeline de Machine Learning: análisis exploratorio, preprocesamiento de datos, entrenamiento de modelos, evaluación de desempeño y validación con observaciones nuevas.

Todo el proceso fue documentado con el objetivo de garantizar trazabilidad metodológica, reproducibilidad y claridad analítica.

Objetivo Técnico

Mi objetivo en este proyecto fue construir y comparar modelos de clasificación supervisada aplicados a dos contextos distintos:

Clasificación binaria en datos clínicos.
Clasificación multiclase en imágenes (visión computacional).

Durante el desarrollo busqué:

Analizar relaciones estadísticas entre variables clínicas.
Identificar factores asociados al riesgo cardiovascular.
Implementar modelos basados en distancia y modelos lineales.
Reducir dimensionalidad en datos de alta complejidad.
Evaluar desempeño mediante métricas estándar de clasificación.
Validar capacidad de generalización con datos no vistos.
Datasets Utilizados
Heart Attack Dataset

El dataset contiene información clínica de pacientes y variables asociadas al riesgo cardiovascular:

Edad
Sexo
Tipo de dolor torácico
Presión arterial en reposo
Colesterol
Frecuencia cardíaca máxima
Otros indicadores clínicos

La variable objetivo es:

output: 1 = riesgo cardiovascular, 0 = no riesgo
MNIST Dataset

El dataset MNIST contiene imágenes de dígitos manuscritos del 0 al 9.

Cada imagen está representada como una matriz de 28x28 píxeles, lo que se transforma en un problema de clasificación multiclase con 10 posibles categorías.

📌 Ambos datasets fueron utilizados exclusivamente con fines académicos y no se incluyen directamente en el repositorio por consideraciones de tamaño y gestión de archivos. La estructura del proyecto asume su disponibilidad en una carpeta local /data.

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
Seaborn
Scikit-Learn
PIL (Pillow)
Estructura del Proyecto
037-supervised-learning-clasificacion-salud-mnist-robertscience

│
├── data
│   ├── heart_attack.csv
│   ├── mnist.csv
│   └── imagenes_prueba/
│
├── notebooks
│   └── Tarea_M25-CD_robertscience.ipynb
│
├── img
│   ├── correlacion_heatmap.png
│   ├── confusion_matrix_knn.png
│   ├── confusion_matrix_logreg.png
│   └── digit_examples.png
│
├── requirements.txt
│
└── README.md
Flujo de Desarrollo
1. Análisis Exploratorio de Datos (EDA)

Realicé un análisis exploratorio sobre el dataset de riesgo cardiovascular con el objetivo de comprender la estructura de las variables y su relación con la variable objetivo.

Se analizaron:

Distribuciones estadísticas.
Valores nulos.
Correlaciones entre variables.
Relación entre variables clínicas y riesgo cardiovascular.

Este paso permitió identificar variables con mayor capacidad explicativa dentro del modelo predictivo.

2. Preparación de Datos

Se realizó un proceso de preparación de datos que incluyó:

Separación de variables independientes y variable objetivo.
División en conjunto de entrenamiento y prueba.
Estandarización de variables mediante StandardScaler.

Este paso fue crítico debido al uso de algoritmos basados en distancia.

3. Modelo de Clasificación Cardiovascular

Se implementó un modelo basado en k-Nearest Neighbors (k-NN).

El modelo clasifica pacientes en función de la similitud con otros registros del conjunto de entrenamiento.

El flujo incluyó:

Escalamiento de variables.
Entrenamiento del modelo.
Evaluación mediante accuracy, matriz de confusión y reporte de clasificación.
4. Reconocimiento de Dígitos (MNIST)

Se trabajó con el dataset MNIST para resolver un problema de clasificación multiclase.

Debido a la alta dimensionalidad de los datos, se aplicó:

Escalamiento de variables.
Reducción de dimensionalidad mediante PCA (95% varianza explicada).

Posteriormente se entrenaron dos modelos:

k-Nearest Neighbors
Regresión Logística
5. Evaluación de Modelos

Los modelos fueron evaluados mediante:

Accuracy
Matriz de confusión
Precision, Recall y F1-score

En el caso de MNIST, también se evaluó el comportamiento por clase para identificar errores entre dígitos visualmente similares.

6. Validación con Datos Externos

Se implementó una validación adicional utilizando una imagen externa de un dígito manuscrito.

El pipeline completo incluyó:

Carga de imagen.
Preprocesamiento (28x28).
Normalización.
Aplicación de PCA.
Predicción final del modelo.
Resultados Obtenidos
Modelo Cardiovascular (k-NN)
Accuracy: ~88%
Buen balance entre precisión y recall.
Buena capacidad de discriminación entre clases.
Modelo MNIST
k-NN con PCA
Accuracy: ~94.6%
Regresión Logística con PCA
Accuracy: ~91.6%
Comparación de Modelos
k-NN mostró mejor desempeño en clasificación de dígitos.
Regresión Logística mostró mayor estabilidad pero menor precisión.
Conclusiones Técnicas

Durante el desarrollo de este proyecto se evidenció la importancia de:

La calidad del preprocesamiento en modelos supervisados.
El impacto del escalamiento en algoritmos basados en distancia.
La reducción de dimensionalidad en problemas de alta complejidad.
La comparación sistemática entre modelos para selección final.

En ambos casos, los modelos demostraron capacidad de generalización adecuada y desempeño competitivo.

Aplicación Profesional

Este proyecto tiene aplicación en:

Sistemas de apoyo a decisiones clínicas.
Modelos predictivos en salud.
Reconocimiento de imágenes.
Machine Learning aplicado a problemas reales.
Sistemas de clasificación automatizada.
Conclusión

En este proyecto desarrollé dos soluciones de Machine Learning supervisado aplicadas a problemas reales de clasificación binaria y multiclase.

El trabajo incluyó desde el análisis exploratorio hasta la validación con datos externos, integrando técnicas de preprocesamiento, reducción de dimensionalidad y evaluación comparativa de modelos.

Los resultados obtenidos demuestran la aplicabilidad de estos métodos en contextos tanto clínicos como de visión computacional.

Autor

RobertScience

Data Analytics & Machine Learning Engineering

Transformando datos en sistemas predictivos reales.

https://robertscience.online