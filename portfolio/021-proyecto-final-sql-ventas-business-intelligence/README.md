# Proyecto Final SQL Ventas - Business Intelligence

## Proyecto de Modelado Relacional, Análisis SQL y Dashboard Ejecutivo

**RobertScience Data Analytics Consulting**

---

# 📌 Descripción del Proyecto

Desarrollé este proyecto con el objetivo de construir una solución completa de análisis comercial integrando SQL Server, modelado dimensional y herramientas de Business Intelligence.

Durante el desarrollo construí una arquitectura de datos orientada al análisis de ventas, utilizando tablas dimensionales y una tabla de hechos para organizar correctamente la información comercial.

El proyecto integra diferentes etapas dentro de un flujo analítico profesional:

* Diseño de base de datos relacional.
* Creación de estructuras dimensionales.
* Validación mediante consultas SQL.
* Preparación de información para análisis.
* Construcción de dashboard interactivo en Power BI.

La solución fue desarrollada aplicando principios de ingeniería de datos, separando correctamente la información descriptiva de los eventos comerciales para facilitar consultas, análisis y visualización ejecutiva.

---

# 🎯 Objetivo del Proyecto

El objetivo principal fue crear una solución completa capaz de transformar información comercial en indicadores útiles para la toma de decisiones.

Los principales objetivos fueron:

* Diseñar una base de datos SQL Server desde cero.
* Crear un modelo dimensional basado en dimensiones y hechos.
* Organizar información comercial bajo una estructura analítica.
* Validar la integridad de los datos mediante consultas SQL.
* Construir una herramienta visual para análisis ejecutivo.

---

# 🏗️ Arquitectura General del Proyecto

Durante el desarrollo trabajé con la siguiente estructura completa:

```text
021-proyecto-final-sql-ventas-business-intelligence/

│
├── sql/
│   └── Proyecto_Final_SQL_Ventas.sql
│
├── database/
│   ├── EntregaFinalSQL.mdf
│   └── EntregaFinalSQL_log.ldf
│
├── powerbi/
│   └── Dashboard_Ventas_Final.pbix
│
├── notebook/
│   └── EntregaFinal.ipynb
│
├── screenshots/
│   ├── capturas_del_proceso/
│   └── dash.png
│
├── docs/
│   └── Reporte_Final_SQL_Ventas.pdf
│
└── README.md
```

---

# 📂 Nota sobre la estructura del repositorio

La estructura mostrada corresponde a la arquitectura completa utilizada durante el desarrollo del proyecto.

Sin embargo, el repositorio publicado en GitHub no contiene necesariamente todos los elementos originales de trabajo.

Debido a buenas prácticas de control de versiones, algunos archivos no fueron incluidos directamente por razones de peso, formato o naturaleza del archivo.

Los elementos no incluidos directamente pueden ser:

* Bases de datos físicas de SQL Server.
* Archivos binarios generados por herramientas externas.
* Archivos con gran volumen de información.
* Datos generados durante procesos internos.

Estos componentes permanecen documentados dentro del proyecto y pueden ser reproducidos mediante los scripts incluidos.

El objetivo del repositorio es mantener una versión profesional, ligera y funcional del proyecto, conservando todo el código necesario para comprender la solución.

---

# 🗄️ Diseño de Base de Datos SQL Server

Construí la base de datos:

```text
EntregaFinalSQL
```

utilizando SQL Server.

La arquitectura fue diseñada bajo un modelo dimensional compuesto por:

* Tablas de dimensiones.
* Tabla principal de hechos.
* Relaciones orientadas al análisis comercial.

---

# 📊 Tablas Dimensionales

## DIM_CATEGORY

Contiene la clasificación comercial de productos.

Principales campos:

* CATEGORY_ID
* CATEGORY_NAME

---

## DIM_SEGMENT

Almacena los segmentos comerciales utilizados dentro del análisis.

Campos principales:

* SEGMENT_ID
* SEGMENT_NAME

---

## DIM_CALENDAR

Permite realizar análisis temporales.

Campos principales:

* WEEK
* YEAR
* MONTH
* MONTH_NAME
* QUARTER

---

## DIM_PRODUCT

Contiene la información descriptiva del catálogo comercial.

Incluye:

* ITEM
* MANUFACTURER
* BRAND
* ITEM_DESCRIPTION
* CATEGORY
* SEGMENT
* FORMAT
* ATRIBUTOS DEL PRODUCTO

---

# 📈 Tabla de Hechos

## FACT_SALES

La tabla FACT_SALES concentra los eventos comerciales utilizados para análisis.

Contiene información relacionada con:

* Periodos de venta.
* Productos vendidos.
* Unidades comercializadas.
* Valor monetario.
* Promedios semanales.
* Región comercial.

Esta estructura permitió preparar la información para consultas analíticas y visualización ejecutiva.

---

# ⚙️ Desarrollo SQL

Durante la implementación desarrollé un script completo para automatizar la creación del entorno.

El archivo:

```text
Proyecto_Final_SQL_Ventas.sql
```

incluye:

* Creación de base de datos.
* Configuración del almacenamiento.
* Creación de tablas.
* Definición de llaves principales.
* Validaciones iniciales.

Ejemplo de validación:

```sql
SELECT TOP 10 *
FROM DIM_PRODUCT;
```

---

# 📊 Dashboard Ejecutivo en Power BI

Como fase final desarrollé un dashboard interactivo utilizando Power BI Desktop.

Archivo principal:

```text
Dashboard_Ventas_Final.pbix
```

El dashboard fue diseñado para transformar la información almacenada en SQL Server en una solución visual orientada al análisis empresarial.

Incluye:

* Indicadores comerciales.
* Análisis de ventas.
* Visualizaciones dinámicas.
* Seguimiento de productos.
* Exploración de información mediante gráficos interactivos.

---

# 🧪 Notebook Analítico

El archivo:

```text
EntregaFinal.ipynb
```

contiene parte del proceso analítico realizado durante el desarrollo.

Dentro del notebook trabajé con:

* Exploración de información.
* Validaciones.
* Preparación de datos.
* Análisis complementario.

---

# 📸 Evidencias del Desarrollo

La carpeta:

```text
screenshots/
```

contiene evidencias visuales del proceso completo.

Incluye:

* Construcción del modelo SQL.
* Ejecución de consultas.
* Desarrollo del dashboard.
* Resultado final de visualización.

---

# 🛠️ Tecnologías Utilizadas

Durante el desarrollo utilicé:

* SQL Server
* SQL
* Power BI Desktop
* Python
* Jupyter Notebook
* Pandas
* Visual Studio Code

---

# 📈 Resultados del Proyecto

Como resultado final desarrollé:

* Una base de datos SQL Server estructurada.
* Un modelo dimensional preparado para análisis.
* Consultas SQL funcionales.
* Un dashboard ejecutivo interactivo.
* Documentación técnica del flujo completo.

---

# 🚀 Posibles Mejoras Futuras

La solución puede evolucionar incorporando:

* Procesos ETL automatizados.
* Actualización incremental de datos.
* Integración con servicios cloud.
* Modelos predictivos de ventas.
* Automatización de reportes empresariales.

---

# 👨‍💻 Autor

**RobertScience**

Data Analytics & Engineering Solutions

https://robertscience.online

---

**Convertimos información en decisiones inteligentes.**
