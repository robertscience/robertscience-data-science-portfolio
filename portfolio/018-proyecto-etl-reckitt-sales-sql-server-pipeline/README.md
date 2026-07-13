# ETL Pipeline y Carga de Datos a SQL Server - Reckitt Sales Analysis

## Proyecto de Ingeniería de Datos y Automatización ETL

**RobertScience Data Analytics**

---

## 📌 Descripción del Proyecto

Desarrollé este proyecto con el objetivo de construir un pipeline completo de ingeniería de datos para la integración, transformación y carga de información comercial proveniente de múltiples fuentes en Excel.

El enfoque del proyecto está orientado a la automatización del proceso ETL (Extract, Transform, Load), asegurando la correcta preparación de los datos antes de su almacenamiento en un entorno estructurado en SQL Server.

Durante el desarrollo implementé procesos de conversión de archivos, limpieza de datos y carga automatizada hacia un modelo relacional basado en tablas dimensionales y una tabla de hechos.

---

# 🎯 Objetivo

El objetivo principal fue diseñar e implementar un flujo de datos automatizado que permitiera transformar información dispersa en Excel en un modelo estructurado listo para análisis en SQL Server.

Los objetivos específicos fueron:

- Convertir archivos Excel a formato CSV para estandarización.
- Aplicar procesos de limpieza y normalización de datos.
- Preparar datasets para integración en un modelo relacional.
- Cargar la información en SQL Server de forma automatizada.
- Validar la integridad de los datos mediante conteos y control de carga.

---

# 🏗️ Arquitectura del Proyecto

El proyecto está organizado bajo una estructura modular orientada a procesos ETL:

```text
018-proyecto-etl-reckitt-sales-sql-server-pipeline/

│
├── src/
│   ├── convert_excel.py
│   ├── convert_all.py
│   ├── clean_all_csv.py
│   └── load_to_sql.py
│
├── data/
│   ├── raw/
│   │   ├── DIM_CATEGORY.xlsx
│   │   ├── DIM_SEGMENT.xlsx
│   │   ├── DIM_PRODUCT.xlsx
│   │   ├── DIM_CALENDAR.xlsx
│   │   └── FACT_SALES.xlsx
│   │
│   ├── csv/
│   └── cleaned/
│
├── sql/
│   └── entregable_4.sql
│
├── report/
│   └── Reckitt Sales Analysis - Reporte Final.pdf
│
└── README.md

📂 Organización de Datos
Raw Data

La carpeta data/raw contiene los archivos originales en formato Excel utilizados como fuente inicial del proceso ETL.

Estas fuentes representan información estructurada de ventas, segmentación, productos y calendario.

CSV Data

La capa data/csv contiene los archivos convertidos desde Excel a CSV, con el objetivo de estandarizar el procesamiento y facilitar la manipulación con Python.

Cleaned Data

La carpeta data/cleaned contiene los datasets procesados mediante limpieza de datos, incluyendo:

Eliminación de saltos de línea
Normalización de texto
Limpieza de caracteres especiales
Estandarización de estructura

🛠️ Tecnologías Utilizadas

Durante el desarrollo utilicé:

Python 3.11
Pandas
SQL Server Express
SQLAlchemy
PyODBC
OpenPyXL
Visual Studio Code

🔄 Flujo de Trabajo Implementado
1. Conversión de datos

Convertí los archivos Excel a CSV para facilitar el procesamiento y asegurar compatibilidad con herramientas de análisis.

2. Limpieza de datos

Implementé un proceso de limpieza orientado a:

Estandarizar columnas
Eliminar caracteres inconsistentes
Preparar datasets para carga en base de datos
3. Carga a SQL Server

Diseñé un proceso automatizado de carga hacia SQL Server utilizando SQLAlchemy, incluyendo:

Creación de base de datos si no existe
Carga por lotes (chunks)
Reemplazo controlado de tablas
Validación de registros cargados

📊 Modelo de Datos

El modelo implementado sigue una estructura tipo estrella:

DIM_CATEGORY
DIM_SEGMENT
DIM_PRODUCT
DIM_CALENDAR
FACT_SALES

Este modelo permite una estructura optimizada para análisis de ventas y reporting.

📈 Resultados

Como resultado del proyecto se logró:

Automatización completa del flujo ETL.
Conversión y estandarización de fuentes de datos.
Limpieza y normalización de información.
Integración en SQL Server.
Preparación de datos para análisis avanzado.

🚀 Próximas Etapas

Este proyecto puede evolucionar hacia:

Construcción de dashboards en Power BI.
Implementación de modelos predictivos.
Optimización de consultas SQL.
Automatización con orquestadores (Airflow o similares).

👨‍💻 Autor

RobertScience
Data Analytics & Engineering Solutions
https://robertscience.online