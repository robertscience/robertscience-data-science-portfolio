# Proyecto 042 - Análisis de Similitud y Patrones de Consumo mediante KNN y Market Basket Analysis

## Machine Learning | Análisis de Vecinos Cercanos | Minería de Patrones | Reglas de Asociación

**RobertScience Data Consulting**

---

# Descripción del Proyecto

En este proyecto desarrollé un análisis utilizando técnicas de Machine Learning y minería de datos orientadas a la identificación de similitudes entre observaciones y al descubrimiento de patrones de consumo dentro de conjuntos transaccionales.

El proyecto integra dos enfoques complementarios dentro del área de Data Science:

* Análisis de similitud mediante el algoritmo **K Nearest Neighbors (KNN)** aplicado a un conjunto de datos de características fisicoquímicas de vinos.
* Análisis de patrones de compra mediante **Market Basket Analysis**, utilizando algoritmos de minería de reglas de asociación.

El objetivo fue demostrar cómo diferentes técnicas analíticas pueden utilizarse para encontrar relaciones dentro de los datos, identificar comportamientos similares y generar información útil para procesos de recomendación, análisis comercial y toma de decisiones basada en datos.

---

# Objetivo Técnico

Mi objetivo en este proyecto fue implementar técnicas de aprendizaje automático y minería de patrones para analizar relaciones dentro de diferentes tipos de información.

Durante el desarrollo trabajé en:

* Preparación y exploración de conjuntos de datos.
* Estandarización de variables numéricas.
* Implementación del algoritmo KNN para búsqueda de similitudes.
* Identificación de observaciones cercanas dentro de un espacio multidimensional.
* Transformación de datos transaccionales.
* Aplicación del algoritmo Apriori para encontrar conjuntos frecuentes.
* Generación e interpretación de reglas de asociación.
* Análisis de resultados desde una perspectiva de negocio.

---

# Tecnologías Utilizadas

## Lenguaje

* Python 3.11

## Entorno de Desarrollo

* Visual Studio Code.
* Jupyter Notebook.

## Librerías principales

* Pandas.
* NumPy.
* Scikit-Learn.
* MLxtend.

---

# Estructura del Proyecto

```text
042-dataTaream30-knn-market-basket-robertscience

│
├── data
│   └── wine-clustering.csv
│
├── notebooks
│   └── M30_KNN_Market_Basket_Analysis.ipynb
│
├── img
│   └── Visualizaciones generadas durante el análisis
│
├── docs
│   ├── Reporte_KNN_Market_Basket.html
│   └── Reporte_KNN_Market_Basket.pdf
│
├── requirements.txt
│
└── README.md
```

---

# Descripción de Carpetas y Archivos

## data

Esta carpeta corresponde al almacenamiento local de los datasets utilizados durante el desarrollo del análisis.

Archivo:

```text
wine-clustering.csv
```

El dataset contiene variables fisicoquímicas relacionadas con diferentes muestras de vino.

Variables principales utilizadas:

* Alcohol.
* Malic Acid.
* Ash.
* Ash Alcanity.
* Magnesium.
* Total Phenols.
* Flavanoids.
* Nonflavanoid Phenols.
* Proanthocyanins.
* Color Intensity.
* Hue.
* OD280.
* Proline.

Por criterios de administración del repositorio, optimización del almacenamiento y buenas prácticas para GitHub, el dataset original no se incluye dentro del repositorio público.

La estructura del proyecto mantiene documentada la ubicación esperada para reproducir el análisis de manera local.

Ruta esperada:

```text
data/wine-clustering.csv
```

Para ejecutar nuevamente el proyecto es necesario colocar el archivo dentro de esta ubicación.

---

# notebooks

Contiene el notebook principal donde desarrollé todo el flujo analítico.

Archivo:

```text
M30_KNN_Market_Basket_Analysis.ipynb
```

Dentro del notebook implementé:

* Importación de librerías.
* Carga y validación del dataset.
* Exploración inicial de datos.
* Preparación de variables.
* Estandarización mediante StandardScaler.
* Entrenamiento del modelo KNN.
* Identificación de vecinos cercanos.
* Cálculo de similitudes.
* Estimación del contenido promedio de alcohol.
* Construcción de transacciones comerciales.
* Codificación binaria de productos.
* Aplicación del algoritmo Apriori.
* Generación de reglas de asociación.
* Interpretación de resultados.

---

# img

Esta carpeta contiene los recursos visuales generados durante el análisis.

Puede incluir:

* Visualizaciones exploratorias.
* Representaciones de resultados.
* Evidencias gráficas del análisis.

Estas imágenes permiten complementar la interpretación técnica del proyecto.

---

# docs

Contiene documentación adicional generada a partir del análisis.

Incluye:

* Reporte técnico en formato HTML.
* Reporte técnico en formato PDF.

Estos documentos permiten presentar el desarrollo del proyecto fuera del entorno del notebook.

---

# requirements.txt

Archivo utilizado para documentar las dependencias necesarias para reproducir el entorno de ejecución.

Principales paquetes utilizados:

```text
pandas
numpy
scikit-learn
mlxtend
jupyter
```

---

# Flujo de Desarrollo

# 1. Exploración y Preparación de Datos

Inicialmente realicé una revisión del conjunto de datos para comprender su estructura y características principales.

Durante esta etapa validé:

* Número de registros disponibles.
* Variables presentes.
* Tipos de datos.
* Estadísticas descriptivas.
* Disponibilidad de valores nulos.

Este proceso permitió asegurar que la información se encontraba preparada para las siguientes etapas del análisis.

---

# 2. Preparación del Modelo KNN

Para implementar el algoritmo de vecinos más cercanos fue necesario preparar las variables numéricas mediante un proceso de estandarización.

Utilicé:

```python
StandardScaler()
```

Este procedimiento permitió transformar las variables para que tuvieran una escala comparable, evitando que características con valores mayores dominaran el cálculo de distancias.

La estandarización fue un paso fundamental debido a que KNN basa su funcionamiento en la medición de proximidad entre observaciones.

---

# 3. Implementación del Algoritmo KNN

Implementé el algoritmo:

```text
K Nearest Neighbors
```

utilizando cinco vecinos cercanos como parámetro de búsqueda.

El modelo permitió identificar las observaciones más similares dentro del conjunto de datos de vinos a partir de sus características fisicoquímicas.

Posteriormente utilicé estas observaciones para analizar el comportamiento del contenido de alcohol dentro del grupo encontrado.

---

# 4. Análisis de Similitud

A partir del registro de referencia definido dentro del análisis, el modelo identificó los cinco vinos con menor distancia dentro del espacio de características.

Los resultados permitieron:

* Comparar observaciones similares.
* Analizar características compartidas.
* Obtener un valor promedio representativo de alcohol.

Este enfoque demuestra cómo los modelos basados en distancia pueden utilizarse para sistemas de recomendación y comparación de productos.

---

# 5. Preparación del Análisis Market Basket

Para la segunda parte del proyecto trabajé con información transaccional simulando diferentes compras realizadas por clientes.

Cada transacción representa un conjunto de productos adquiridos conjuntamente.

El flujo aplicado fue:

* Transformación de datos transaccionales.
* Conversión a matriz binaria.
* Identificación de productos frecuentes.
* Generación de reglas de asociación.

---

# 6. Identificación de Patrones Frecuentes

Utilicé el algoritmo:

```text
Apriori
```

para encontrar combinaciones de productos que aparecen frecuentemente dentro de las transacciones.

El análisis permitió identificar relaciones entre artículos mediante métricas como:

* Support.
* Confidence.
* Lift.

---

# 7. Generación de Reglas de Asociación

A partir de los conjuntos frecuentes obtenidos generé reglas de asociación para analizar relaciones entre productos.

Estas reglas permiten interpretar escenarios como:

"Cuando un cliente adquiere determinado producto, existe una probabilidad asociada de adquirir otro producto relacionado."

Este tipo de información es ampliamente utilizado en:

* Sistemas de recomendación.
* Venta cruzada.
* Estrategias comerciales.
* Optimización de promociones.

---

# Resultados del Proyecto

El análisis permitió obtener información relevante desde dos perspectivas diferentes.

## Modelo KNN

Se identificaron registros similares dentro del conjunto de datos de vinos y se obtuvo una estimación basada en el comportamiento de observaciones cercanas.

## Market Basket Analysis

Se descubrieron relaciones frecuentes entre productos, permitiendo identificar patrones de compra conjunta dentro de las transacciones analizadas.

Ambos enfoques demostraron cómo diferentes técnicas de Machine Learning pueden transformar datos sin procesar en información útil para la toma de decisiones.

---

# Aplicación Profesional

Las técnicas implementadas en este proyecto tienen aplicaciones reales dentro de diferentes áreas:

* Sistemas de recomendación.
* Retail Analytics.
* Customer Behavior Analysis.
* Segmentación de productos.
* Análisis comercial.
* Inteligencia de negocio.
* Modelos de similitud.

El análisis de patrones y relaciones dentro de los datos representa una herramienta clave para organizaciones que buscan comprender mejor el comportamiento de sus usuarios y optimizar procesos estratégicos.

---

# Consideraciones Técnicas

Aunque los modelos implementados permiten obtener resultados útiles, en escenarios productivos sería recomendable complementar estos análisis con:

* Mayor volumen de datos.
* Validaciones adicionales.
* Evaluación con información histórica real.
* Automatización del flujo de procesamiento.
* Integración con plataformas analíticas.

Estas mejoras permitirían llevar el análisis desde un entorno experimental hacia una solución empresarial escalable.

---

# Conclusión

En este proyecto desarrollé un análisis integrando técnicas de Machine Learning basado en similitud y minería de patrones para extraer información relevante desde diferentes tipos de datos.

La implementación de KNN permitió identificar relaciones entre observaciones mediante proximidad matemática, mientras que Market Basket Analysis permitió descubrir asociaciones dentro de datos transaccionales.

El desarrollo completo reforzó la aplicación práctica de algoritmos de aprendizaje automático y minería de datos orientados a resolver problemas reales dentro de contextos analíticos y comerciales.

---

# Autor

**RobertScience**

Data Analytics & Engineering Solutions

Transformando datos en decisiones inteligentes.

https://robertscience.online
