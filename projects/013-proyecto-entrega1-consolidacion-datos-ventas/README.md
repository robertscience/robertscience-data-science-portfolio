# Consolidación y Preparación de Datos de Ventas

## Proyecto de Integración y Análisis de Datos

**RobertScience Data Analytics**

---

## 📌 Descripción del Proyecto

Desarrollé este proyecto con el objetivo de integrar, explorar y validar diferentes fuentes de información comercial utilizando Python y Pandas.

El trabajo está enfocado en la preparación inicial de datos bajo un enfoque de ingeniería analítica, utilizando una estructura basada en tablas dimensionales y una tabla principal de hechos de ventas.

Durante esta etapa construí un flujo inicial que permite cargar información, revisar su estructura, identificar características principales y validar la calidad de los datos antes de aplicar procesos posteriores de transformación y análisis.

---

# 🎯 Objetivo

El objetivo principal fue establecer una base sólida para un proceso ETL, asegurando que las fuentes de información fueran correctamente identificadas, cargadas y evaluadas antes de continuar con etapas avanzadas de procesamiento.

Los principales objetivos fueron:

- Integrar múltiples fuentes de información comercial.
- Revisar la estructura de cada dataset.
- Analizar tipos de datos y dimensiones.
- Detectar valores faltantes.
- Preparar las fuentes para procesos posteriores de transformación y análisis.

---

# 🏗️ Arquitectura del Proyecto

El proyecto está organizado bajo una estructura separada por responsabilidades:

```text
013-proyecto-entrega1-consolidacion-datos-ventas/

│
├── python/
│   └── Proyecto_Entrega1.py
│
├── notebook/
│   └── Proyecto_Entrega1.ipynb
│
├── data/
│   ├── raw/
│   └── processed/
│
├── docs/
│   └── Reporte_Tecnico_Entrega1.pdf
│
└── requirements.txt

📂 Organización de Datos
Raw Data

La carpeta data/raw representa la capa de información original utilizada durante el desarrollo.

Las fuentes utilizadas fueron:

DIM_CALENDAR
DIM_CATEGORY
DIM_PRODUCT
DIM_SEGMENT
FACT_SALES

Los archivos originales no forman parte del repositorio debido a su tamaño, evitando incrementar innecesariamente el peso del proyecto y manteniendo buenas prácticas de control de versiones.

La estructura y características de las fuentes quedan documentadas para permitir la reproducción del flujo.

Processed Data

La carpeta data/processed está destinada a almacenar información resultante después de procesos de limpieza, transformación e integración.

Esta capa permite separar claramente:

Datos originales.
Datos preparados para análisis.
🛠️ Tecnologías Utilizadas

Durante el desarrollo utilicé:

Python 3.11
Pandas
NumPy
Jupyter Notebook
Visual Studio Code
OpenPyXL
🔄 Flujo de Trabajo Implementado
1. Carga de información

Desarrollé un proceso para importar diferentes fuentes comerciales utilizando Pandas.

Las fuentes fueron cargadas considerando su formato correspondiente:

Archivos CSV.
Archivos Excel.
2. Exploración inicial

Realicé una revisión estructural para identificar:

Número de registros.
Cantidad de columnas.
Nombre de variables.
Tipos de datos.
Primeros registros disponibles.
3. Validación de calidad

Implementé revisiones iniciales para identificar valores faltantes mediante análisis de nulos.

Esta validación permitió conocer el estado inicial de cada fuente antes de continuar con procesos de transformación.

📊 Fuentes Analizadas
DIM_CALENDAR

Tabla dimensional relacionada con información temporal utilizada para análisis basado en fechas.

DIM_CATEGORY

Fuente utilizada para clasificación de categorías comerciales.

DIM_PRODUCT

Información correspondiente al catálogo de productos.

DIM_SEGMENT

Fuente utilizada para segmentación comercial.

FACT_SALES

Tabla principal de hechos utilizada como base para análisis de ventas.

🧩 Estructura Técnica

El desarrollo fue organizado mediante funciones independientes:

cargar_fuentes()

Realicé la carga centralizada de las fuentes originales.

analizar_dataset()

Implementé una revisión automática de estructura, dimensiones y tipos de información.

validar_nulos()

Desarrollé una validación inicial de calidad para detectar valores faltantes.

📈 Resultados

Como resultado de esta primera etapa obtuve:

Fuentes comerciales correctamente identificadas.
Flujo automatizado de carga.
Exploración estructural inicial.
Validación básica de calidad.
Base preparada para procesos ETL posteriores.
🚀 Próximas Etapas

Este proyecto puede extenderse con procesos posteriores como:

Limpieza avanzada de datos.
Normalización de variables.
Integración dimensional.
Generación de métricas comerciales.
Análisis exploratorio.
Visualización mediante dashboards.
Modelos predictivos.
👨‍💻 Autor

RobertScience
Data Analytics & Engineering Solutions
https://robertscience.online