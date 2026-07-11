Proyecto - Fundamentos de Consultas SQL sobre AdventureWorks2022 para Análisis de Datos

SQL Server | Data Querying | Docker | AdventureWorks2022 | Data Analytics

RobertScience Data Analytics Consulting
Descripción del Proyecto

En este proyecto desarrollé un flujo completo de trabajo para el análisis de datos utilizando Microsoft SQL Server sobre la base de datos AdventureWorks2022, implementando un entorno de desarrollo reproducible mediante contenedores Docker y utilizando Visual Studio Code como cliente SQL para la ejecución de consultas.

El objetivo principal fue comprender el funcionamiento del proceso completo de consulta de información dentro de una base de datos relacional, desde la preparación del entorno hasta la extracción organizada de información utilizando instrucciones SQL fundamentales.

Durante el desarrollo del proyecto restauré la base de datos AdventureWorks2022 a partir de un archivo de respaldo (.bak), configuré el servidor SQL dentro de un contenedor Docker y posteriormente ejecuté diversas consultas orientadas a explorar, filtrar y ordenar información perteneciente a diferentes áreas del negocio.

Aunque las consultas implementadas corresponden a operaciones fundamentales del lenguaje SQL, representan la base sobre la cual se construyen procesos más complejos de análisis de datos, inteligencia de negocios y ciencia de datos.

Objetivo Técnico

El objetivo principal consistió en implementar un entorno profesional para trabajar con SQL Server y desarrollar consultas fundamentales que permitieran recuperar información estructurada desde una base de datos empresarial.

Durante el desarrollo del proyecto busqué:

Implementar un entorno SQL Server utilizando Docker.
Restaurar correctamente la base de datos AdventureWorks2022.
Configurar Visual Studio Code como cliente SQL.
Comprender la estructura de una base de datos empresarial.
Ejecutar consultas utilizando SELECT.
Filtrar registros mediante WHERE.
Ordenar información utilizando ORDER BY.
Realizar consultas por rangos mediante BETWEEN.
Documentar el flujo completo de trabajo.
Generar una estructura reproducible para futuros proyectos SQL.
Base de Datos Utilizada

El proyecto utiliza la base de datos de ejemplo AdventureWorks2022, desarrollada por Microsoft para escenarios de aprendizaje y análisis de datos empresariales.

AdventureWorks simula la operación de una empresa dedicada a la fabricación y comercialización de productos, incluyendo información relacionada con:

Clientes
Personas
Productos
Ventas
Compras
Recursos Humanos
Producción
Inventarios
Finanzas

Durante esta práctica se trabajó principalmente con las tablas:

Person.Person
Sales.SalesOrderHeader
Tecnologías Utilizadas
Base de Datos
Microsoft SQL Server 2022
Contenedores
Docker Desktop
Entorno de Desarrollo
Visual Studio Code
Extensiones
SQL Server (mssql)
Lenguaje
Transact-SQL (T-SQL)
Estructura del Proyecto
048-sql-fundamentos-consultas-adventureworks2022-robertscience
│
├── database
│   └── AdventureWorks2022.bak
│
├── sql
│   └── M35_SQL_Fundamentos_Consultas.sql
│
├── outputs
│   ├── select_person.csv
│   ├── where_firstname_john.csv
│   ├── orderby_lastname.csv
│   └── between_orders_2013.csv
│
├── docs
│   └── Reporte_M35_SQL.pdf
│
├── requirements.md
│
└── README.md

Nota: El archivo AdventureWorks2022.bak no se incluye dentro del repositorio debido a su tamaño. Sin embargo, toda la estructura del proyecto, la organización de carpetas y las consultas SQL fueron documentadas para que cualquier persona pueda restaurar la base de datos y reproducir completamente el ejercicio utilizando AdventureWorks2022.

Flujo de Desarrollo
1. Preparación del Entorno

Implementé un entorno aislado utilizando Docker para ejecutar una instancia de Microsoft SQL Server.

Esta configuración proporciona un ambiente reproducible y desacoplado del sistema operativo, siguiendo buenas prácticas utilizadas en proyectos profesionales de ingeniería de datos.

2. Restauración de la Base de Datos

Restauré la base de datos AdventureWorks2022 utilizando un archivo de respaldo (.bak), verificando que todas las tablas, relaciones y objetos fueran recuperados correctamente antes de comenzar el análisis.

3. Configuración del Cliente SQL

Utilicé Visual Studio Code como herramienta para establecer conexión con SQL Server y ejecutar las consultas desarrolladas durante la práctica.

Esta configuración permitió trabajar en un entorno ligero, moderno y fácilmente reproducible.

4. Exploración Inicial

Antes de iniciar el análisis revisé la estructura general de la base de datos para identificar las tablas y la información disponible.

Este proceso facilitó comprender la organización del modelo relacional utilizado por AdventureWorks2022.

5. Consultas SQL Implementadas

Durante el proyecto desarrollé consultas utilizando las instrucciones fundamentales del lenguaje SQL.

SELECT

Recuperé registros completos desde la tabla Person.Person para explorar la información almacenada.

WHERE

Apliqué filtros para seleccionar únicamente registros que cumplían condiciones específicas.

Este tipo de consultas permite segmentar información de interés dentro de grandes volúmenes de datos.

ORDER BY

Ordené registros alfabéticamente utilizando diferentes criterios de clasificación.

Esta operación resulta indispensable para organizar información antes de realizar análisis posteriores.

BETWEEN

Realicé consultas por rango sobre fechas de órdenes de venta, permitiendo recuperar únicamente la información correspondiente al periodo de interés.

Resultados Generados

Como resultado de las consultas realizadas se obtuvieron diferentes conjuntos de datos que fueron exportados para facilitar su revisión y documentación.

Entre ellos se incluyen:

Registros generales de personas.
Personas filtradas por nombre.
Listados ordenados alfabéticamente.
Órdenes de venta correspondientes al año 2013.

Estos archivos representan ejemplos de extracción de información que posteriormente podrían utilizarse como entrada para procesos de análisis, visualización o modelado de datos.

Competencias Demostradas

Durante este proyecto apliqué conocimientos relacionados con:

SQL Server
Transact-SQL
Consultas SELECT
Filtrado de información
Ordenamiento de datos
Consultas por rangos
Restauración de bases de datos
Administración básica de SQL Server
Docker
Visual Studio Code
Bases de datos relacionales
Documentación técnica
Aplicación Profesional

Las técnicas implementadas durante este proyecto pueden utilizarse en escenarios reales como:

Business Intelligence
Data Analytics
Ingeniería de Datos
Reporting
Extracción de información
Preparación de datasets
Automatización de consultas
Construcción de pipelines ETL
Análisis exploratorio sobre bases de datos empresariales
Conclusiones Técnicas

Este proyecto me permitió comprender el flujo completo de trabajo necesario para interactuar con una base de datos empresarial utilizando SQL Server.

Además de reforzar el uso de consultas fundamentales como SELECT, WHERE, ORDER BY y BETWEEN, consolidé conocimientos relacionados con la configuración de entornos reproducibles mediante Docker, la restauración de bases de datos y la utilización de Visual Studio Code como cliente SQL.

Aunque las consultas desarrolladas corresponden a operaciones básicas, constituyen la base para la construcción de procedimientos almacenados, vistas, consultas analíticas y procesos ETL utilizados en proyectos profesionales de análisis de datos.

La documentación del proyecto y la organización de su estructura permiten reproducir completamente el flujo de trabajo en cualquier entorno compatible con SQL Server.

Autor

RobertScience

Data Analytics & Machine Learning Engineering

Transformando datos en sistemas inteligentes para la toma de decisiones.

https://robertscience.online