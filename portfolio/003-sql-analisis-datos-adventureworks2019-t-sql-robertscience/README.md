Análisis de Datos SQL con AdventureWorks2019

Data Analytics | SQL Server | T-SQL | Business Intelligence | Relational Database Analysis | Data Engineering

RobertScience Data Analytics Consulting
Descripción del Proyecto

En este proyecto desarrollé un conjunto de consultas SQL orientadas al análisis de datos utilizando la base de datos relacional AdventureWorks2019, un modelo empresarial utilizado frecuentemente para prácticas de análisis, inteligencia de negocio y desarrollo de soluciones basadas en datos.

El objetivo principal fue aplicar técnicas avanzadas de consulta sobre una base de datos estructurada, explorando relaciones entre entidades comerciales como:

Empleados.
Clientes.
Productos.
Ventas.
Vendedores.
Departamentos.

Durante el desarrollo trabajé con diferentes esquemas dentro de SQL Server, realizando integraciones entre múltiples tablas para obtener información analítica mediante consultas optimizadas y orientadas a escenarios reales de negocio.

Este proyecto representa un flujo práctico de trabajo dentro de áreas como Data Analytics, Business Intelligence y Data Engineering, donde la capacidad de consultar, relacionar y transformar información es fundamental para generar conocimiento a partir de datos empresariales.

Objetivo Técnico

El objetivo principal fue desarrollar consultas SQL profesionales utilizando T-SQL sobre SQL Server, aplicando fundamentos de análisis relacional y transformación de información.

Durante la implementación trabajé en:

Exploración de estructuras relacionales.
Integración de múltiples tablas mediante JOIN.
Análisis de clientes y órdenes de venta.
Relación entre productos y movimientos comerciales.
Identificación de registros sin actividad mediante LEFT JOIN.
Aplicación de lógica condicional mediante CASE.
Tratamiento de valores nulos utilizando COALESCE.
Cálculos dinámicos dentro de consultas.
Creación y consolidación de estructuras adicionales mediante UNION ALL.
Organización de consultas siguiendo buenas prácticas de documentación SQL.
Fuente de Datos Utilizada

Para el desarrollo del análisis utilicé la base de datos:

AdventureWorks2019

AdventureWorks2019 es una base de datos empresarial de ejemplo desarrollada por Microsoft que representa operaciones comerciales de una compañía dedicada a la fabricación y venta de productos.

La estructura utilizada contiene diferentes módulos relacionados con:

Recursos Humanos.
Personas.
Clientes.
Ventas.
Productos.
Producción.

Debido al tamaño de la base de datos original y considerando buenas prácticas de administración de repositorios en GitHub, los archivos completos de la base de datos no fueron incluidos dentro del repositorio.

El proyecto contiene el código SQL necesario para ejecutar los análisis, pero la instalación de AdventureWorks2019 debe realizarse previamente en el entorno local de SQL Server.

Tecnologías Utilizadas
Lenguaje
SQL (T-SQL)
Motor de Base de Datos
Microsoft SQL Server
AdventureWorks2019
Entorno de Desarrollo
Visual Studio Code
Extensión SQL Server (mssql)
SQL Server Developer Edition
Consultas SQL Implementadas

El proyecto contiene 12 ejercicios desarrollados para analizar diferentes escenarios empresariales.

Análisis de Recursos Humanos

Se realizaron consultas para obtener información relacionada con empleados utilizando relaciones entre:

HumanResources.Employee
Person.Person

Se analizaron campos como:

Nombre del empleado.
Puesto laboral.
Fecha de nacimiento.
Nivel organizacional.
Análisis de Clientes y Ventas

Se construyeron consultas integrando información entre:

Sales.Customer.
Person.Person.
Sales.SalesOrderHeader.

Esto permitió analizar:

Clientes registrados.
Órdenes realizadas.
Fechas de compra.
Montos totales de venta.
Integración de Productos y Ventas

Se realizaron consultas utilizando múltiples relaciones entre:

SalesOrderHeader.
SalesOrderDetail.
Production.Product.

Estas consultas permitieron identificar:

Productos vendidos.
Productos sin movimientos comerciales.
Relación entre clientes y productos adquiridos.
Uso de JOINs Avanzados

Durante el desarrollo implementé diferentes tipos de combinación entre tablas:

INNER JOIN

Utilizado para integrar información relacionada existente entre diferentes entidades.

Ejemplos:

Clientes con personas.
Empleados con información personal.
Productos vendidos.
LEFT JOIN

Aplicado para conservar registros principales aunque no existieran coincidencias.

Casos utilizados:

Productos sin ventas.
Vendedores sin órdenes.
Identificación de información faltante.
CROSS APPLY

Implementado para realizar cálculos dinámicos relacionados con ofertas comerciales y obtener información derivada dentro de la consulta.

Transformación y Limpieza de Información

Durante el análisis utilicé funciones propias de SQL Server para mejorar la interpretación de los datos.

COALESCE

Aplicado para controlar valores NULL y generar resultados más consistentes dentro de los reportes.

CASE WHEN

Utilizado para crear categorías analíticas.

Ejemplo:

Clasificación de empleados según nivel organizacional:

Chief Level.
Management Level.
Operations Level.
Staff Level.
FORMAT

Aplicado para transformar valores numéricos en formatos más interpretables para análisis ejecutivo.

Ejemplo:

Cuotas de venta.
Bonificaciones.
Valores monetarios.
Creación y Consolidación de Información

Como parte del ejercicio final desarrollé una estructura adicional dentro del esquema de Recursos Humanos:

Tabla creada:

HumanResources.Departamentos

La implementación incluyó:

Creación de estructura.
Inserción de registros.
Integración con información existente mediante UNION ALL.

Este proceso permitió practicar escenarios similares a los utilizados en procesos de integración y consolidación de información empresarial.

Estructura del Proyecto
sql-analisis-datos-adventureworks-ebac-robertscience
│
├── queries.sql
│
├── README.md
│
└── database
    │
    └── AdventureWorks2019
        └── Base de datos utilizada para ejecución local
Nota sobre archivos no incluidos

La base de datos AdventureWorks2019 no fue incluida dentro del repositorio debido a:

Tamaño del archivo.
Buenas prácticas de administración de repositorios.
Mantener GitHub enfocado en código fuente y documentación.

El proyecto puede reproducirse instalando AdventureWorks2019 en SQL Server y ejecutando el archivo:

queries.sql
Flujo de Desarrollo
1. Preparación del Entorno

Configuré un entorno SQL Server utilizando Visual Studio Code como herramienta principal de desarrollo.

Inicialmente preparé la conexión hacia SQL Server y validé la disponibilidad de la base AdventureWorks2019.

2. Exploración del Modelo Relacional

Analicé la estructura de tablas disponible para identificar relaciones entre entidades.

Durante esta etapa revisé:

Llaves primarias.
Llaves foráneas.
Relaciones entre esquemas.
Estructura comercial de la base.
3. Desarrollo de Consultas

Construí consultas progresivamente incrementando la complejidad:

Consultas básicas.
Integración de tablas.
Consultas con múltiples relaciones.
Transformaciones de datos.
Clasificaciones analíticas.
4. Validación de Resultados

Realicé pruebas sobre cada consulta verificando:

Correcta relación entre tablas.
Consistencia de resultados.
Manejo adecuado de valores nulos.
Integridad de la información obtenida.
Resultados Obtenidos

Durante el desarrollo del proyecto logré:

Construir consultas SQL orientadas a análisis empresarial.
Integrar información proveniente de múltiples tablas.
Aplicar técnicas utilizadas en ambientes profesionales de datos.
Trabajar con modelos relacionales complejos.
Generar consultas reutilizables para análisis posteriores.
Fortalecer conocimientos en SQL Server y Business Intelligence.
Conclusiones Técnicas

Este proyecto permitió aplicar conceptos fundamentales de análisis de datos mediante SQL Server dentro de un escenario empresarial.

La utilización de AdventureWorks2019 permitió trabajar con un modelo relacional completo, simulando procesos reales donde los analistas de datos necesitan extraer información desde diferentes fuentes estructuradas.

La implementación de JOINs, funciones condicionales y técnicas de transformación demuestra la importancia de dominar SQL como herramienta principal para convertir datos almacenados en información útil para la toma de decisiones.

Aplicación Profesional

Las técnicas desarrolladas en este proyecto tienen aplicación directa en:

Data Analytics.
Business Intelligence.
SQL Development.
Data Engineering.
Reporting Empresarial.
Análisis Comercial.
Modelado Relacional.
Procesamiento de Información Empresarial.
Autor

RobertScience

Data Analytics & Machine Learning Engineering

Transformando datos en sistemas inteligentes para la toma de decisiones.

🌐 https://robertscience.online