# Proyecto 041 - Segmentación Comercial mediante K-Means Clustering para Análisis de Ventas

**Machine Learning No Supervisado | Clustering | Segmentación Comercial | PCA | Analítica de Negocio**

---

# RobertScience Data Analytics Consulting

## Descripción del Proyecto

En este proyecto desarrollé un análisis de segmentación comercial utilizando técnicas de **Machine Learning No Supervisado**, con el objetivo de identificar patrones de comportamiento dentro del portafolio de productos de la marca **Vanish** a partir de información histórica de ventas.

La solución implementa el algoritmo **K-Means Clustering** para agrupar productos con características comerciales similares, permitiendo identificar segmentos de alto, medio y bajo desempeño. Como parte del flujo analítico también se aplicaron técnicas de exploración de datos, ingeniería de variables, estandarización, reducción de dimensionalidad mediante **Principal Component Analysis (PCA)** y evaluación de la calidad del modelo utilizando **Silhouette Score**.

Este proyecto reproduce un escenario típico dentro de un departamento de Business Intelligence o Data Analytics, donde la segmentación de productos constituye una herramienta fundamental para apoyar la toma de decisiones estratégicas.

---

# Objetivo Técnico

El objetivo principal fue construir un modelo de segmentación comercial que permitiera identificar grupos naturales de productos con comportamientos de ventas similares mediante técnicas de aprendizaje no supervisado.

Durante el desarrollo del proyecto busqué:

* Explorar y comprender la estructura del modelo de datos.
* Construir un dataset analítico consolidado para clustering.
* Seleccionar variables representativas del desempeño comercial.
* Aplicar técnicas de escalamiento mediante StandardScaler.
* Determinar el número óptimo de clusters utilizando el Método del Codo.
* Implementar el algoritmo K-Means.
* Evaluar la calidad de la segmentación mediante Silhouette Score.
* Reducir la dimensionalidad del problema utilizando PCA.
* Interpretar los segmentos obtenidos desde una perspectiva de negocio.
* Generar información útil para la toma de decisiones comerciales.

---

# Datasets Utilizados

Para el desarrollo del análisis se utilizaron los siguientes conjuntos de datos:

* DIM_CALENDAR (2).xlsx
* DIM_PRODUCT (1).xlsx
* DIM_SEGMENT (1).xlsx
* FACT_SALES (1).csv

Estos datasets conforman un modelo de datos tipo **Star Schema**, donde la tabla de hechos contiene las ventas históricas y las tablas dimensionales proporcionan información descriptiva acerca del tiempo, productos y segmentos comerciales.

Debido a restricciones relacionadas con el tamaño de los archivos y la naturaleza del material académico utilizado durante el proyecto, estos datasets **no se incluyen dentro de este repositorio**.

Sin embargo, toda la estructura del proyecto, el flujo analítico y el código fueron documentados para permitir la reproducción completa del análisis utilizando la misma organización de archivos.

---

# Tecnologías Utilizadas

## Lenguaje

* Python 3.11

## Entorno de Desarrollo

* Visual Studio Code
* Jupyter Notebook

## Librerías principales

* Pandas
* NumPy
* Matplotlib
* Seaborn
* Scikit-Learn

---

# Estructura del Proyecto

```text
041-segmentacion-comercial-kmeans-clustering-vanish-robertscience
│
├── data
│   ├── DIM_CALENDAR (2).xlsx
│   ├── DIM_PRODUCT (1).xlsx
│   ├── DIM_SEGMENT (1).xlsx
│   └── FACT_SALES (1).csv
│
├── notebooks
│   └── ProyectoDeEmpresaAliadaEntregable3.ipynb
│
├── img
│   ├── elbow_method.png
│   ├── clusters_sales.png
│   ├── pca_clusters.png
│   ├── cluster_distribution.png
│   └── cluster_heatmap.png
│
├── results
│   └── vanish_clusters_results.csv
│
├── requirements.txt
│
└── README.md
```

**Nota:** El archivo `vanish_clusters_results.csv` corresponde al resultado generado automáticamente por el modelo de clustering. Debido a que puede reproducirse ejecutando nuevamente el notebook y con el propósito de mantener un repositorio ligero, este archivo no fue incluido en GitHub.

---

# Flujo de Desarrollo

## 1. Exploración Inicial de los Datos

Realicé un análisis exploratorio para comprender la estructura de los datasets, identificar las variables disponibles, revisar tipos de datos, validar registros y comprender el modelo dimensional utilizado.

---

## 2. Construcción del Dataset Analítico

Consolidé la información de ventas mediante procesos de agregación utilizando el identificador del producto.

Se generaron variables representativas como:

* Total de unidades vendidas.
* Ingresos totales.
* Promedio semanal de ventas.

Estas variables constituyeron la base para el proceso de segmentación.

---

## 3. Preparación de los Datos

Las variables seleccionadas fueron estandarizadas mediante **StandardScaler**, garantizando que todas participaran con la misma importancia dentro del algoritmo basado en distancias.

---

## 4. Determinación del Número Óptimo de Clusters

Implementé el **Método del Codo (Elbow Method)** evaluando distintos valores de K para identificar el número de grupos que mejor representaba la estructura de los datos.

---

## 5. Implementación de K-Means Clustering

Con el número óptimo de clusters definido, entrené el modelo K-Means para segmentar automáticamente los productos según su comportamiento comercial.

Posteriormente obtuve los centroides de cada grupo para facilitar su interpretación.

---

## 6. Reducción de Dimensionalidad

Aplicando **Principal Component Analysis (PCA)** reduje el espacio de variables a dos componentes principales.

Esta transformación permitió representar gráficamente los clusters conservando la mayor parte de la información del conjunto de datos.

---

## 7. Evaluación del Modelo

La calidad de la segmentación fue evaluada utilizando **Silhouette Score**, obteniendo un valor cercano a **0.79**, lo que indica una separación adecuada entre los diferentes grupos identificados por el algoritmo.

---

## 8. Interpretación Comercial

Finalmente analicé las características promedio de cada cluster para identificar segmentos de:

* Productos de alto desempeño.
* Productos con desempeño medio.
* Productos con bajo desempeño.

Esta información puede utilizarse para fortalecer estrategias comerciales, optimizar inventarios y apoyar decisiones relacionadas con marketing, distribución y administración del portafolio.

---

# Resultados Obtenidos

Durante el análisis fue posible:

* Construir un modelo de segmentación comercial completamente funcional.
* Identificar grupos naturales dentro del portafolio de productos.
* Obtener una representación visual mediante PCA.
* Evaluar objetivamente la calidad del clustering.
* Generar perfiles comerciales para cada segmento identificado.
* Transformar información transaccional en conocimiento útil para el negocio.

---

# Conclusiones Técnicas

Este proyecto demuestra la utilidad del aprendizaje no supervisado para descubrir patrones ocultos dentro de grandes volúmenes de información comercial.

La combinación de técnicas de preparación de datos, escalamiento, K-Means, PCA y métricas de evaluación permitió construir una solución analítica capaz de segmentar productos de forma objetiva y reproducible.

Asimismo, el análisis evidencia cómo la Ciencia de Datos puede transformar datos operativos en información estratégica que facilite la toma de decisiones basada en evidencia.

---

# Aplicación Profesional

Las metodologías implementadas en este proyecto tienen aplicación directa en áreas como:

* Business Intelligence.
* Retail Analytics.
* Category Management.
* Segmentación Comercial.
* Marketing Analytics.
* Planeación Comercial.
* Optimización de Inventarios.
* Ciencia de Datos aplicada al negocio.

---

# Conclusión

En este proyecto desarrollé un modelo de segmentación comercial basado en técnicas de Machine Learning No Supervisado para analizar el comportamiento de ventas de productos de la marca Vanish.

El flujo completo incluyó exploración de datos, construcción del dataset analítico, estandarización de variables, selección del número óptimo de clusters, entrenamiento del modelo K-Means, reducción de dimensionalidad mediante PCA, evaluación utilizando Silhouette Score e interpretación de resultados desde una perspectiva empresarial.

Los resultados obtenidos demuestran cómo las técnicas de clustering pueden generar información estratégica para apoyar procesos de análisis comercial y toma de decisiones basadas en datos.

---

# Autor

**RobertScience**

**Data Analytics & Machine Learning Engineering**

**Transformando datos en sistemas inteligentes para la toma de decisiones.**

https://robertscience.online
