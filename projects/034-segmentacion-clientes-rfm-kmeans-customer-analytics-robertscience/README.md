# Proyecto 034 - Segmentación de Clientes mediante RFM y K-Means

## Customer Analytics | Unsupervised Learning | Business Intelligence

**RobertScience Data Consulting**

---

# Descripción del Proyecto

En este proyecto desarrollé un modelo de segmentación de clientes utilizando la metodología RFM (Recency, Frequency, Monetary) combinada con técnicas de aprendizaje no supervisado mediante el algoritmo K-Means.

El objetivo principal fue transformar información transaccional de clientes en segmentos estratégicos capaces de representar diferentes patrones de comportamiento comercial.

La metodología RFM permitió analizar tres dimensiones fundamentales:

* **Recency:** Qué tan reciente fue la última compra del cliente.
* **Frequency:** Con qué frecuencia realiza compras.
* **Monetary:** Cuál es el valor económico generado por cada cliente.

Posteriormente utilicé técnicas de clustering para identificar grupos homogéneos dentro de la base de clientes y construir una clasificación orientada a estrategias comerciales.

Este enfoque permitió pasar de datos históricos de compra hacia una interpretación estratégica del comportamiento del consumidor.

---

# Objetivo Técnico

Mi objetivo en este proyecto fue desarrollar un sistema de segmentación automática de clientes utilizando análisis RFM y Machine Learning no supervisado.

A través del desarrollo busqué:

* Construir métricas de comportamiento comercial por cliente.
* Aplicar técnicas de agrupamiento mediante K-Means.
* Determinar el número óptimo de clusters.
* Crear una clasificación basada en valor estratégico.
* Identificar clientes de alto valor.
* Detectar clientes con riesgo de abandono.
* Generar información útil para toma de decisiones comerciales.

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
* Matplotlib.
* Seaborn.
* Scikit-Learn.

---

# Estructura del Proyecto

```text
034-segmentacion-clientes-rfm-kmeans-customer-analytics-robertscience

│
├── data
│   └── Online_Retail.csv
│
├── notebooks
│   └── Tarea_M30-CD_robertscience.ipynb
│
├── img
│   └── Visualizaciones generadas durante el análisis
│
├── docs
│   ├── Customer_Segmentation_Report.html
│   └── Customer_Segmentation_Report.pdf
│
├── requirements.txt
│
└── README.md
```

---

# Descripción de Carpetas y Archivos

## data

Esta carpeta corresponde al almacenamiento del dataset utilizado durante el análisis.

Archivo utilizado:

```text
Online_Retail.csv
```

El dataset contiene información transaccional de clientes incluyendo:

* Identificador de cliente.
* Número de factura.
* Fecha de compra.
* Productos adquiridos.
* Cantidad.
* Precio unitario.

El archivo original contiene un volumen elevado de registros comerciales.

Por criterios de administración del repositorio, optimización de almacenamiento y buenas prácticas para GitHub, la fuente de datos original no se incluye dentro del repositorio público.

La estructura mantiene documentada la ubicación esperada para permitir la reproducción local del proyecto.

Ruta esperada:

```text
data/Online_Retail.csv
```

---

# notebooks

Contiene el notebook principal donde desarrollé todo el proceso analítico.

Archivo:

```text
Tarea_M30-CD_robertscience.ipynb
```

Dentro del notebook implementé:

* Importación de librerías.
* Lectura del dataset.
* Exploración inicial.
* Limpieza de información.
* Construcción de variables RFM.
* Aplicación de clustering.
* Evaluación de clusters.
* Segmentación final.
* Visualización de resultados.

---

# img

Contiene las evidencias gráficas generadas durante el desarrollo.

Incluye:

* Método del codo para selección de clusters.
* Distribución de segmentos.
* Relación Monetary vs Recency.
* Relación Monetary vs Frequency.

Estas visualizaciones permiten interpretar el comportamiento de los grupos generados.

---

# docs

Contiene documentación complementaria del proyecto.

Incluye:

* Reporte técnico en HTML.
* Versión PDF para presentación profesional.

---

# Flujo de Desarrollo

## 1. Exploración y Preparación de Datos

Inicié el proyecto realizando una revisión general de la información transaccional.

Analicé:

* Estructura del dataset.
* Variables disponibles.
* Calidad de registros.
* Distribución de compras.

Posteriormente realicé procesos de limpieza para trabajar únicamente con información válida.

---

# 2. Construcción de Métricas RFM

Construí tres indicadores principales.

## Recency

Calculé el tiempo transcurrido desde la última compra registrada de cada cliente.

Esta métrica permite identificar clientes activos y clientes alejados de la marca.

---

## Frequency

Calculé la cantidad de compras realizadas por cada cliente.

Esta variable permite medir el nivel de interacción comercial.

---

## Monetary

Generé el valor económico acumulado por cliente mediante:

```text
Cantidad × Precio Unitario
```

Esta métrica representa la contribución monetaria individual.

---

# 3. Implementación de Machine Learning No Supervisado

Después de construir las variables RFM implementé el algoritmo:

```text
K-Means Clustering
```

Este algoritmo permitió agrupar clientes con características similares sin utilizar etiquetas previamente definidas.

---

# 4. Selección del Número Óptimo de Clusters

Utilicé el método:

```text
Elbow Method
```

para analizar diferentes configuraciones y seleccionar una cantidad adecuada de grupos.

Este proceso permitió encontrar una segmentación equilibrada entre interpretación y separación de clientes.

---

# 5. Creación de Segmentos Estratégicos

Después del clustering desarrollé un score basado en las métricas obtenidas.

La segmentación permitió clasificar clientes en grupos estratégicos como:

## High-Value

Clientes con alto valor económico y comportamiento frecuente.

## Potential

Clientes con oportunidad de crecimiento.

## Average

Clientes con comportamiento intermedio.

## Low-Value

Clientes con baja interacción comercial.

---

# Resultados Obtenidos

El modelo permitió transformar una base transaccional extensa en perfiles comerciales diferenciados.

Los principales resultados fueron:

* Identificación automática de grupos de clientes.
* Creación de segmentos basados en comportamiento real.
* Interpretación del valor comercial de cada grupo.
* Generación de información útil para estrategias de negocio.

---

# Insights Estratégicos

El análisis permitió identificar que:

* Los clientes no tienen el mismo valor comercial.
* Los clientes frecuentes y recientes requieren estrategias de fidelización.
* Los clientes alejados necesitan acciones de recuperación.
* La segmentación permite utilizar recursos comerciales de forma más eficiente.

---

# Aplicación Profesional

Este tipo de solución tiene aplicación directa en:

* Customer Analytics.
* CRM.
* Marketing Intelligence.
* Business Intelligence.
* Retención de clientes.
* Personalización comercial.

La combinación entre análisis RFM y Machine Learning no supervisado permite construir sistemas capaces de descubrir patrones ocultos dentro del comportamiento de compra.

---

# Reproducibilidad del Proyecto

Para ejecutar este proyecto localmente:

Crear entorno virtual:

```bash
python -m venv .venv
```

Activar entorno:

Windows:

```bash
.venv\Scripts\activate
```

Instalar dependencias:

```bash
pip install -r requirements.txt
```

Abrir proyecto:

```bash
code .
```

Ejecutar notebook:

```text
notebooks/Tarea_M30-CD_robertscience.ipynb
```

---

# Conclusión

En este proyecto desarrollé una solución completa de segmentación de clientes combinando análisis RFM con técnicas de aprendizaje no supervisado.

El desarrollo permitió transformar datos transaccionales en información estratégica mediante la identificación automática de grupos de clientes con comportamientos similares.

Este proyecto demuestra la aplicación práctica de la ciencia de datos para resolver problemas reales de negocio relacionados con conocimiento del cliente, fidelización y optimización comercial.

---

# Autor

**RobertScience**

Data Analytics & Engineering Solutions

Transformando datos en decisiones inteligentes.

https://robertscience.online
