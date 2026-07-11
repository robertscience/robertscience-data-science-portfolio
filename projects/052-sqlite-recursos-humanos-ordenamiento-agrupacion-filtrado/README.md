# Proyecto - Análisis de Recursos Humanos con SQLite mediante Ordenamiento, Agrupación y Filtrado de Datos

**Python | SQLite | SQL | Data Analytics | Data Engineering | People Analytics | Recursos Humanos | ORDER BY | GROUP BY | HAVING**

**RobertScience Data Analytics Consulting**

---

# Descripción del Proyecto

En este proyecto desarrollé un pipeline de análisis de datos utilizando Python y SQLite para construir una base de datos relacional a partir de un conjunto de datos de Recursos Humanos y realizar consultas SQL enfocadas en el análisis organizacional.

El flujo de trabajo parte de un archivo CSV con información de miles de empleados, el cual es transformado mediante Python para posteriormente almacenarse dentro de una base de datos SQLite. Una vez estructurada la información, implementé distintas consultas SQL que permiten ordenar, agrupar y filtrar los registros con el objetivo de obtener indicadores relevantes sobre satisfacción laboral, desempeño y seguridad dentro de la organización.

Durante el desarrollo del proyecto integré procesos propios de Data Engineering con técnicas de Data Analytics, aplicando operaciones de limpieza de datos, validación de estructuras, funciones de agregación y filtros avanzados para convertir datos operativos en información útil para el análisis.

Este ejercicio reproduce un escenario frecuente en proyectos de analítica empresarial donde la información debe organizarse dentro de una base de datos antes de generar métricas que apoyen la toma de decisiones.

---

# Objetivo Técnico

El objetivo principal fue construir un flujo reproducible de análisis de datos utilizando SQLite como motor de almacenamiento y SQL como lenguaje de consulta para explorar el comportamiento de los empleados mediante técnicas de ordenamiento, agrupación y filtrado.

Durante el desarrollo del proyecto realicé las siguientes actividades:

- Importar información desde un archivo CSV.
- Explorar la estructura del dataset.
- Validar las variables disponibles.
- Corregir inconsistencias en los nombres de columnas.
- Crear una base de datos SQLite.
- Insertar automáticamente todos los registros.
- Verificar la estructura de la base de datos.
- Ejecutar consultas SQL utilizando ORDER BY.
- Implementar agrupaciones mediante GROUP BY.
- Aplicar filtros utilizando HAVING.
- Analizar indicadores relacionados con satisfacción laboral, desempeño y accidentes de trabajo.
- Validar los resultados obtenidos mediante consultas en Python.

---

# Dataset Utilizado

El proyecto utiliza un dataset de Recursos Humanos compuesto por información de aproximadamente 15,000 empleados pertenecientes a distintos departamentos de una organización.

Entre las variables analizadas destacan:

- Nivel de satisfacción.
- Evaluación de desempeño.
- Número de proyectos.
- Horas promedio trabajadas por mes.
- Tiempo de permanencia en la empresa.
- Accidentes laborales.
- Promociones durante los últimos cinco años.
- Departamento.
- Nivel salarial.
- Estado de permanencia del empleado.

Durante la preparación del conjunto de datos identifiqué una inconsistencia en el nombre de una de las columnas (`average_montly_hours`), la cual fue corregida para mantener consistencia semántica y facilitar el desarrollo de las consultas SQL posteriores.

Debido a restricciones relacionadas con el tamaño del material académico utilizado durante el desarrollo del proyecto, el dataset original no se incluye dentro de este repositorio.

Sin embargo, la estructura del proyecto, el notebook y toda la documentación permiten reproducir completamente el flujo de trabajo utilizando el mismo conjunto de datos.

---

# Tecnologías Utilizadas

## Lenguaje

- Python 3.11

## Base de Datos

- SQLite

## Entorno de Desarrollo

- Visual Studio Code
- Jupyter Notebook

## Librerías

- Pandas
- SQLite3

---

# Estructura del Proyecto

```
052-sqlite-recursos-humanos-ordenamiento-agrupacion-filtrado
│
├── data
│   └── recursos_humanos.csv
│
├── database
│   └── RH.db
│
├── notebooks
│   └── Practica_M42_Analisis_Recursos_Humanos_SQLite.ipynb
│
├── sql
│   └── consultas_ordenamiento_agrupacion_filtrado.sql
│
├── img
│   ├── carga_dataset.png
│   ├── estructura_tabla.png
│   ├── consulta_order_by.png
│   ├── consulta_group_by.png
│   ├── consulta_having.png
│   └── resultados_consultas.png
│
├── requirements.txt
│
└── README.md
```

> **Nota:** El dataset original y la base de datos SQLite no fueron incluidos en este repositorio debido al tamaño de los archivos utilizados durante la práctica académica y a las limitaciones de almacenamiento de GitHub. No obstante, la estructura del proyecto, el notebook, las consultas SQL y la documentación permiten reproducir completamente el flujo de trabajo siguiendo la organización descrita.

---

# Flujo de Desarrollo

## 1. Exploración Inicial del Dataset

Comencé cargando el archivo CSV mediante Pandas para verificar la estructura del conjunto de datos, identificar las variables disponibles y validar el número total de registros antes de iniciar el proceso de almacenamiento en SQLite.

---

## 2. Limpieza y Preparación de Datos

Durante la inspección del dataset detecté una inconsistencia en el nombre de la variable correspondiente a las horas promedio trabajadas por mes.

Mediante operaciones de transformación con Pandas corregí dicha columna para mantener una nomenclatura uniforme durante todo el proyecto y facilitar la construcción de las consultas SQL.

---

## 3. Creación de la Base de Datos

Posteriormente establecí una conexión con SQLite y generé una base de datos local destinada al almacenamiento estructurado de toda la información del proyecto.

---

## 4. Inserción de Registros

Utilizando la función `to_sql()` inserté automáticamente el contenido completo del DataFrame dentro de una tabla denominada **Detalle**, automatizando completamente el proceso de carga de datos.

---

## 5. Validación de la Base de Datos

Antes de iniciar el análisis verifiqué:

- Existencia de la tabla.
- Tipos de datos.
- Número de columnas.
- Integridad de los registros almacenados.

Esta validación garantiza que las consultas posteriores se ejecuten sobre una estructura consistente.

---

## 6. Desarrollo de Consultas SQL

Una vez construida la base de datos desarrollé distintas consultas analíticas utilizando funciones propias del lenguaje SQL.

Entre los análisis realizados destacan:

- Ordenamiento descendente de empleados según su nivel de satisfacción.
- Obtención del promedio de evaluación por departamento.
- Identificación de departamentos con mayor promedio de accidentes laborales.
- Cálculo del número total de accidentes por departamento.
- Filtrado de departamentos mediante cláusulas HAVING.
- Validación de resultados obtenidos mediante consultas SELECT.

---

# Consultas SQL Implementadas

Durante el proyecto trabajé con distintos componentes fundamentales del lenguaje SQL, entre ellos:

- SELECT
- ORDER BY
- GROUP BY
- HAVING
- AVG()
- SUM()
- PRAGMA
- sqlite_master
- Funciones de agregación
- Consultas sobre estructuras internas de SQLite

---

# Resultados Obtenidos

El desarrollo del proyecto permitió:

- Construir correctamente una base de datos SQLite.
- Automatizar la carga de información desde archivos CSV.
- Validar la estructura de la base de datos generada.
- Aplicar consultas utilizando ORDER BY para ordenar información.
- Calcular indicadores mediante GROUP BY.
- Implementar filtros analíticos utilizando HAVING.
- Identificar departamentos con mayores niveles de satisfacción.
- Comparar el desempeño promedio entre distintas áreas.
- Detectar departamentos con mayor incidencia de accidentes laborales.
- Obtener métricas consolidadas para apoyar procesos de análisis organizacional.

---

# Conclusiones Técnicas

Este proyecto fortaleció mi experiencia en la construcción de flujos de análisis de datos utilizando Python y SQLite como herramientas integradas para el procesamiento y consulta de información.

La implementación de consultas basadas en ORDER BY, GROUP BY y HAVING permitió profundizar en el uso de funciones de agregación y técnicas de análisis sobre bases de datos relacionales ligeras.

Asimismo, el proyecto demuestra cómo un flujo bien estructurado puede transformar un archivo plano en una base de datos preparada para generar indicadores útiles dentro de un contexto de analítica empresarial y People Analytics.

---

# Aplicación Profesional

Las técnicas implementadas durante este proyecto tienen aplicación directa en áreas como:

- Data Analytics.
- Data Engineering.
- SQL Development.
- Business Intelligence.
- People Analytics.
- Recursos Humanos.
- Gestión del Talento.
- Análisis Organizacional.
- Ingeniería de Datos.
- Ciencia de Datos aplicada a Recursos Humanos.

---

# Conclusión

En este proyecto desarrollé un flujo completo para transformar un dataset de Recursos Humanos en una base de datos SQLite preparada para análisis mediante SQL.

El proceso incluyó la exploración del dataset, limpieza de datos, creación de la base de datos, carga automatizada de registros, validación de la estructura y desarrollo de consultas analíticas utilizando ORDER BY, GROUP BY y HAVING.

Los resultados obtenidos demuestran cómo la integración entre Python y SQLite permite construir soluciones reproducibles para organizar información, generar indicadores y apoyar la toma de decisiones basada en datos mediante consultas eficientes sobre bases de datos relacionales.

---

# Autor

**RobertScience**

**Data Analytics | Data Engineering | SQL | Python | Machine Learning**

**Transformando datos en sistemas inteligentes para la toma de decisiones.**