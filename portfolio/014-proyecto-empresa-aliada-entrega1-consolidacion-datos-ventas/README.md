# Consolidación y Preparación de Datos de Ventas

## Proyecto de Integración de Datos – Empresa Aliada (Entrega 1)

**RobertsScience Data Analytics**

---

# 📌 Descripción del Proyecto

Desarrollé este proyecto como parte del primer entregable del programa Empresa Aliada, con el objetivo de construir un flujo profesional de consolidación y preparación de datos comerciales.

El propósito principal fue integrar diferentes fuentes estructuradas de información comercial, combinando una tabla de hechos de ventas con múltiples dimensiones para generar un dataset final limpio, consistente y preparado para procesos posteriores de análisis.

Durante el desarrollo implementé un flujo basado en buenas prácticas de Ciencia de Datos e Ingeniería de Datos, aplicando separación entre datos originales y procesados, validaciones estructurales, control de calidad y trazabilidad completa del proceso ETL.

---

# 🎯 Objetivo del Proyecto

El objetivo principal fue construir una base analítica consolidada mediante la integración de diferentes fuentes comerciales.

Las principales actividades realizadas fueron:

- Carga de múltiples fuentes de información.
- Exploración inicial de estructuras.
- Perfilado de calidad de datos.
- Limpieza y estandarización.
- Normalización de llaves de integración.
- Integración de tablas dimensionales.
- Validación de integridad referencial.
- Generación del dataset final consolidado.

---

# 🏗️ Arquitectura del Proyecto

```text
014-proyecto-empresa-aliada-entrega1-consolidacion-datos-ventas/

│
├── robertscience_data/
│
│   ├── raw/
│   │
│   │   ├── FACT_SALES
│   │   ├── DIM_PRODUCT
│   │   ├── DIM_CATEGORY
│   │   ├── DIM_SEGMENT
│   │   └── DIM_CALENDAR
│   │
│   └── processed/
│       └── sales_consolidated_final.csv
│
├── robertscience_notebooks/
│   └── rs_sales_data_consolidation.ipynb
│
├── robertscience_docs/
│   └── Reporte_Tecnico_Entrega1.pdf
│
└── robertscience_requirements.txt
```

---

# 📂 Organización de Datos

## Raw Data

La carpeta:

```text
robertscience_data/raw
```

representa la capa de datos originales utilizada durante el desarrollo.

Las fuentes utilizadas fueron:

- FACT_SALES
- DIM_PRODUCT
- DIM_CATEGORY
- DIM_SEGMENT
- DIM_CALENDAR

Estos archivos fueron utilizados exclusivamente como entrada del proceso ETL para realizar la carga, exploración, limpieza e integración de información.

## Consideración sobre archivos RAW

Los archivos originales no forman parte del repositorio público debido a su tamaño y con el objetivo de mantener buenas prácticas de control de versiones.

En un entorno profesional, las fuentes originales suelen mantenerse en repositorios internos, almacenamiento corporativo o sistemas de gestión de datos independientes.

La estructura y composición de estas fuentes quedan documentadas dentro del proyecto para conservar trazabilidad del flujo desarrollado.

---

# 📊 Processed Data

La carpeta:

```text
robertscience_data/processed
```

contiene el resultado final del proceso de transformación.

Archivo generado:

```text
sales_consolidated_final.csv
```

Este dataset representa la versión consolidada preparada para análisis posteriores.

---

# 🧪 Proceso ETL Implementado

Durante el desarrollo realicé las siguientes etapas:

## 1. Carga de información

Implementé la carga automatizada utilizando Python y Pandas.

Se trabajó con diferentes formatos:

- Archivos CSV.
- Archivos Excel.

Cada fuente fue validada después de la carga inicial.

---

## 2. Exploración inicial

Realicé una revisión estructural para identificar:

- Número de registros.
- Cantidad de columnas.
- Tipos de datos.
- Valores faltantes.
- Llaves disponibles para integración.

---

## 3. Limpieza y preparación

Apliqué procesos orientados a mejorar la calidad del dato:

- Eliminación de registros inválidos.
- Tratamiento de valores faltantes.
- Normalización de textos.
- Preparación de llaves comerciales.
- Validación de consistencia.

---

## 4. Integración dimensional

La consolidación fue realizada mediante un flujo progresivo:

```text
FACT_SALES

      ↓

DIM_PRODUCT

      ↓

DIM_CATEGORY

      ↓

DIM_SEGMENT

      ↓

DIM_CALENDAR
```

Cada integración fue validada utilizando relaciones:

```text
many-to-one
```

garantizando consistencia entre tablas de hechos y dimensiones.

---

# 📈 Resultado Final

Como resultado del proceso obtuve un dataset consolidado con:

- 122,002 registros.
- 23 columnas finales.
- Integridad referencial completa.
- Sin pérdida de registros.
- Sin duplicados en dimensiones críticas.

Archivo final:

```text
sales_consolidated_final.csv
```

---

# 🛠️ Tecnologías Utilizadas

Durante el desarrollo utilicé:

- Python 3.11
- Pandas
- NumPy
- OpenPyXL
- Jupyter Notebook
- Visual Studio Code

---

# 📓 Notebook Técnico

El flujo completo se encuentra documentado en:

```text
robertscience_notebooks/

└── rs_sales_data_consolidation.ipynb
```

El notebook contiene:

- Carga de fuentes.
- Exploración inicial.
- Perfilado de datos.
- Limpieza.
- Transformaciones.
- Integraciones.
- Validaciones.
- Exportación del dataset final.

---

# 📄 Documentación Técnica

El proyecto incluye un reporte técnico profesional:

```text
robertscience_docs/

└── Reporte_Tecnico_Entrega1.pdf
```

Este documento describe:

- Contexto del proyecto.
- Arquitectura utilizada.
- Proceso ETL.
- Validaciones realizadas.
- Resultados obtenidos.
- Conclusiones técnicas.

---

# 📦 Dependencias del Proyecto

Las librerías necesarias se encuentran definidas en:

```text
robertscience_requirements.txt
```

Incluye:

```text
pandas
numpy
openpyxl
jupyter
notebook
```

---

# 🚀 Próximas Etapas

Este proyecto puede evolucionar mediante:

- Análisis exploratorio avanzado.
- Generación de indicadores comerciales.
- Visualización mediante dashboards.
- Automatización de pipelines.
- Construcción de modelos predictivos.

---

# 👨‍💻 Autor

**RobertsScience**

Data Analytics & Engineering Solutions

https://robertscience.online