Proyecto - Análisis de Recursos Humanos con SQLite y Python para el Estudio de Rotación de Empleados

Python | SQLite | SQL | Data Engineering | Data Analytics | Recursos Humanos | ETL | Análisis de Datos

RobertScience Data Analytics Consulting
Descripción del Proyecto

En este proyecto desarrollé un flujo completo de análisis de datos utilizando Python y SQLite, construyendo una base de datos relacional a partir de un archivo CSV con información de empleados.

El desarrollo reproduce un escenario típico de Data Engineering y People Analytics, donde un conjunto de datos proveniente de un archivo plano es transformado, almacenado y posteriormente consultado mediante SQL para obtener indicadores relevantes sobre el comportamiento de los colaboradores dentro de una organización.

Durante el proyecto implementé un proceso completo que incluye la carga del dataset, limpieza de datos, creación de la base de datos, inserción de información, consultas analíticas y validación de resultados utilizando Pandas.

El análisis permitió identificar relaciones entre el nivel de satisfacción, la carga laboral, las promociones y la rotación de empleados, demostrando cómo SQL y Python pueden integrarse para generar información útil para la toma de decisiones.

Objetivo Técnico

El objetivo principal fue construir un pipeline de análisis de datos utilizando SQLite como motor de almacenamiento y SQL como lenguaje de consulta.

Durante el desarrollo del proyecto realicé las siguientes actividades:

Importar información desde un archivo CSV.
Explorar la estructura del dataset.
Corregir inconsistencias en los nombres de columnas.
Crear una base de datos SQLite.
Insertar automáticamente todos los registros del dataset.
Validar la estructura de la base de datos.
Ejecutar consultas SQL utilizando Python.
Analizar indicadores relacionados con Recursos Humanos.
Generar visualizaciones para apoyar la interpretación de resultados.
Dataset Utilizado

El proyecto utiliza un dataset de Recursos Humanos que contiene información relacionada con el comportamiento laboral de miles de empleados.

Entre las variables analizadas destacan:

Nivel de satisfacción.
Evaluación de desempeño.
Número de proyectos.
Horas promedio trabajadas por mes.
Antigüedad dentro de la empresa.
Accidentes laborales.
Promociones.
Departamento.
Nivel salarial.
Estado de permanencia del empleado.

Debido a restricciones relacionadas con el tamaño del material académico utilizado durante el desarrollo del proyecto, el dataset original no se incluye dentro de este repositorio.

Toda la estructura del proyecto, el notebook y el flujo de trabajo fueron documentados para permitir la reproducción completa del análisis utilizando el mismo conjunto de datos.

Tecnologías Utilizadas
Lenguaje
Python 3.11
Base de Datos
SQLite
Entorno de Desarrollo
Visual Studio Code
Jupyter Notebook
Librerías
Pandas
SQLite3
Matplotlib
Estructura del Proyecto
051-sqlite-python-recursos-humanos-analisis-rotacion-empleados-robertscience
│
├── data
│   └── recursos_humanos.csv
│
├── database
│   └── RH.db
│
├── notebooks
│   └── Practica_M41_Analisis_Recursos_Humanos_SQLite.ipynb
│
├── img
│   ├── satisfaction_analysis.png
│   ├── average_hours_salary.png
│   ├── promoted_employees.png
│   └── high_performance_employees.png
│
├── sql
│   └── consultas_recursos_humanos.sql
│
├── requirements.txt
│
└── README.md

Nota: El dataset original y la base de datos SQLite no fueron incluidos en este repositorio debido al tamaño de los archivos utilizados durante la práctica académica. Sin embargo, el notebook, el código SQL y la documentación permiten reproducir completamente el proyecto siguiendo la estructura descrita.

Flujo de Desarrollo
1. Exploración Inicial del Dataset

Comencé realizando una exploración del archivo CSV para conocer su estructura, validar las variables disponibles y comprobar la calidad de los datos antes de iniciar el proceso de carga.

2. Limpieza de Datos

Durante la revisión del dataset identifiqué una inconsistencia en el nombre de una columna correspondiente a las horas promedio trabajadas por mes.

Realicé su corrección mediante operaciones de transformación utilizando Pandas para mantener una nomenclatura consistente durante todo el análisis.

3. Creación de la Base de Datos

Posteriormente establecí una conexión con SQLite y generé automáticamente la base de datos local donde se almacenaría toda la información del proyecto.

4. Carga de Información

Utilizando la función to_sql() inserté el contenido completo del DataFrame dentro de una tabla denominada Detalle, automatizando completamente el proceso de carga de datos.

5. Validación de la Estructura

Verifiqué la correcta creación de la tabla utilizando consultas sobre el catálogo interno de SQLite, confirmando la existencia de todas las columnas y tipos de datos.

6. Consultas Analíticas

Una vez construida la base de datos desarrollé distintas consultas SQL enfocadas en el análisis del comportamiento de los empleados.

Entre los análisis realizados destacan:

Nivel promedio de satisfacción según permanencia.
Promedio de horas trabajadas por nivel salarial.
Empleados promovidos que abandonaron la empresa.
Empleados con evaluaciones sobresalientes.
Validación general de registros almacenados.
7. Visualización de Resultados

Complementé el análisis mediante gráficos desarrollados con Matplotlib para representar visualmente los resultados obtenidos y facilitar su interpretación.

Consultas SQL Implementadas

Durante el proyecto se desarrollaron consultas relacionadas con:

Funciones de agregación (AVG).
Agrupaciones mediante GROUP BY.
Filtros utilizando WHERE.
Consultas condicionales.
Exploración de tablas mediante PRAGMA.
Consultas sobre sqlite_master.
Recuperación de registros utilizando SELECT.
Resultados Obtenidos

El proyecto permitió:

Construir correctamente una base de datos SQLite.
Integrar Python y SQL dentro de un mismo flujo de trabajo.
Automatizar la carga del dataset.
Ejecutar consultas analíticas sobre miles de registros.
Detectar diferencias de satisfacción entre empleados que permanecen y quienes abandonan la empresa.
Comparar la carga laboral según el nivel salarial.
Identificar empleados promovidos que posteriormente dejaron la organización.
Localizar colaboradores con evaluaciones de desempeño sobresalientes.
Generar visualizaciones para respaldar el análisis.
Conclusiones Técnicas

Este proyecto fortaleció mi experiencia en la integración de procesos de ingeniería y análisis de datos utilizando herramientas ligeras y ampliamente utilizadas en proyectos de analítica.

La combinación de Python, Pandas y SQLite permitió construir un flujo reproducible para transformar un archivo plano en una base de datos relacional preparada para consultas analíticas.

Asimismo, la implementación de consultas SQL sobre un entorno SQLite demuestra cómo es posible desarrollar soluciones eficientes para la exploración y análisis de información sin depender de motores de bases de datos empresariales.

Aplicación Profesional

Las técnicas implementadas durante este proyecto tienen aplicación directa en áreas como:

Data Engineering.
Data Analytics.
People Analytics.
Recursos Humanos.
Business Intelligence.
SQL Development.
Gestión de Talento.
Análisis Organizacional.
Ingeniería de Datos.
Ciencia de Datos aplicada a Recursos Humanos.
Conclusión

En este proyecto desarrollé un pipeline completo de análisis de datos utilizando Python y SQLite para transformar un dataset de Recursos Humanos en una base de datos relacional lista para análisis.

El flujo incluyó la exploración del dataset, limpieza de datos, creación de la base de datos, carga automatizada de registros, validación de la estructura, ejecución de consultas SQL, generación de indicadores y visualización de resultados.

Los análisis obtenidos evidencian cómo la integración entre Python y SQLite permite construir soluciones reproducibles para la obtención de información estratégica orientada al análisis del comportamiento organizacional y la toma de decisiones basada en datos.

Autor

RobertScience

Data Analytics | Data Engineering | SQL | Machine Learning

Transformando datos en sistemas inteligentes para la toma de decisiones.