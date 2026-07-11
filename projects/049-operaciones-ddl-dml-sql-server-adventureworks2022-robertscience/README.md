Proyecto - Operaciones DDL y DML en SQL Server utilizando AdventureWorks2022

SQL Server | AdventureWorks2022 | DDL | DML | Administración de Tablas | Gestión de Datos

RobertScience Data Analytics Consulting
Descripción del Proyecto

En este proyecto desarrollé un flujo completo de administración y manipulación de estructuras de datos utilizando SQL Server sobre la base de datos AdventureWorks2022.

El objetivo consistió en implementar las principales operaciones de definición y manipulación de datos (DDL y DML) mediante un escenario práctico que simula la administración de órdenes dentro de un sistema comercial.

Durante el desarrollo del proyecto construí una tabla desde cero, definí su estructura, inserté información de prueba, realicé modificaciones sobre el esquema, administré objetos de base de datos y ejecuté operaciones de mantenimiento y eliminación de registros, validando cada etapa mediante consultas SQL.

Este proyecto reproduce tareas habituales realizadas por un Analista de Datos, un Desarrollador SQL o un Ingeniero de Datos durante la administración de bases de datos relacionales.

Objetivo Técnico

El objetivo principal fue fortalecer el manejo de estructuras de datos en SQL Server mediante la implementación de operaciones fundamentales de administración de tablas.

Durante el desarrollo del proyecto llevé a cabo las siguientes actividades:

Crear tablas mediante instrucciones DDL.
Definir correctamente los tipos de datos de cada columna.
Insertar registros utilizando instrucciones DML.
Modificar la estructura de tablas existentes.
Renombrar tablas y columnas mediante procedimientos del sistema.
Agregar nuevas columnas a una tabla existente.
Ejecutar operaciones de mantenimiento utilizando TRUNCATE.
Eliminar tablas mediante DROP TABLE.
Eliminar registros específicos mediante DELETE.
Validar cada operación utilizando consultas SELECT.
Comprender el ciclo completo de administración de objetos dentro de SQL Server.
Base de Datos Utilizada

El proyecto fue desarrollado utilizando la base de datos de ejemplo AdventureWorks2022, ampliamente utilizada para prácticas profesionales y aprendizaje de SQL Server.

Durante la práctica se trabajó sobre un esquema propio dentro del mismo entorno, creando tablas independientes para simular un proceso de gestión de órdenes comerciales.

Tecnologías Utilizadas
Motor de Base de Datos
Microsoft SQL Server 2022
Entorno de Desarrollo
Visual Studio Code
Herramientas
SQL Server
Docker
AdventureWorks2022
Estructura del Proyecto
048-operaciones-ddl-dml-sql-server-adventureworks2022-robertscience
│
├── sql
│   └── M36_SQL_Table_Operations.sql
│
├── outputs
│   ├── 01_tabla_creada.csv
│   ├── 02_registros_insertados.csv
│   ├── 03_tabla_renombrada.csv
│   ├── 04_columna_agregada.csv
│   ├── 05_columna_renombrada.csv
│   ├── 06_tabla_prueba.csv
│   ├── 07_truncate.csv
│   ├── 08_drop_table.csv
│   └── 09_resultado_final.csv
│
├── docs
│   └── Reporte_M36_SQL_Table_Operations.pdf
│
├── README.md
│
└── requirements.txt

Nota: La base de datos AdventureWorks2022 y su archivo de respaldo (.bak) no se incluyen en este repositorio debido a restricciones de distribución y tamaño. Asimismo, los archivos CSV contenidos en la carpeta outputs corresponden a evidencias generadas durante la ejecución del script SQL y documentan los resultados obtenidos en cada etapa del proceso, permitiendo reproducir completamente el proyecto utilizando una instalación estándar de AdventureWorks2022.

Flujo de Desarrollo
1. Preparación del Entorno

Configuré el entorno de trabajo seleccionando la base de datos AdventureWorks2022 como contexto de ejecución, garantizando que todas las operaciones se realizaran sobre el entorno correcto.

2. Creación de la Tabla

Diseñé una tabla denominada Ventas definiendo una estructura orientada al registro de órdenes comerciales.

Durante esta etapa establecí columnas para almacenar información relacionada con:

Número de orden.
Fechas de operación.
Estado de la orden.
Información del cliente.
Dirección de entrega.
Método de pago.
Indicador de compra en línea.
Subtotal.
Observaciones.

La selección de tipos de datos se realizó siguiendo buenas prácticas de modelado relacional.

3. Inserción de Registros

Posteriormente inserté múltiples registros simulando distintos escenarios de negocio.

Los datos incorporan órdenes con diferentes estados, clientes, métodos de pago y montos de compra, permitiendo validar la correcta operación de la estructura creada.

4. Modificación de la Estructura

Una vez creada la tabla, realicé modificaciones sobre su esquema mediante instrucciones DDL.

Las principales operaciones fueron:

Renombrar la tabla Ventas a Ordenes.
Incorporar una nueva columna denominada FechaEnvio.
Renombrar la columna CompraOnline a BanderaCompraOnline para mejorar la claridad semántica del modelo.

Estas actividades representan tareas comunes dentro de la evolución de un modelo de datos en entornos productivos.

5. Administración de Tablas

Como parte de las operaciones de mantenimiento desarrollé una tabla auxiliar denominada Prueba para ejecutar diferentes procedimientos administrativos.

Durante esta etapa apliqué:

Inserción de registros.
Eliminación masiva mediante TRUNCATE TABLE.
Eliminación completa de la estructura utilizando DROP TABLE.

Estas operaciones permitieron comprender el ciclo de vida completo de una tabla dentro de SQL Server.

6. Manipulación de Datos

Implementé operaciones de eliminación de registros mediante DELETE, aplicando filtros condicionales para remover únicamente aquellas órdenes cuyo estatus correspondía a Cancelada.

Posteriormente validé el resultado utilizando consultas SELECT.

7. Validación de Resultados

Después de cada operación ejecuté consultas de validación para verificar que las modificaciones realizadas sobre la estructura y los datos fueran consistentes.

Este proceso permitió documentar cada etapa del flujo de trabajo y generar evidencia de los resultados obtenidos.

Resultados Obtenidos

Durante el desarrollo del proyecto logré:

Crear estructuras de datos utilizando SQL Server.
Insertar información de manera controlada.
Modificar tablas existentes.
Agregar nuevas columnas.
Renombrar tablas y columnas.
Administrar objetos de base de datos.
Ejecutar operaciones de mantenimiento.
Aplicar eliminación selectiva de registros.
Validar cada operación mediante consultas SQL.
Documentar completamente el flujo de trabajo desarrollado.
Competencias Demostradas

Durante este proyecto apliqué conocimientos relacionados con:

SQL Server.
AdventureWorks2022.
Data Definition Language (DDL).
Data Manipulation Language (DML).
Creación de tablas.
Inserción de registros.
Modificación de estructuras.
Administración de objetos de base de datos.
Manipulación de datos.
Validación mediante consultas SQL.
Buenas prácticas de documentación.
Gestión de bases de datos relacionales.
Aplicación Profesional

Las actividades desarrolladas en este proyecto tienen aplicación directa en escenarios profesionales como:

Administración de bases de datos.
Desarrollo SQL.
Data Analytics.
Data Engineering.
Business Intelligence.
Implementación de sistemas transaccionales.
Diseño y mantenimiento de modelos relacionales.
Automatización de procesos sobre SQL Server.
Conclusión

En este proyecto desarrollé un flujo completo de administración de tablas utilizando SQL Server sobre la base de datos AdventureWorks2022.

Implementé operaciones de creación de estructuras, inserción de registros, modificación del esquema, mantenimiento de tablas y manipulación de datos mediante instrucciones DDL y DML, validando cada etapa mediante consultas SQL.

El proyecto fortaleció mi comprensión sobre el ciclo de vida de las tablas dentro de una base de datos relacional y consolidó el uso de comandos fundamentales utilizados en entornos profesionales para la gestión y administración de información.

Autor

RobertScience

Data Analytics & Machine Learning Engineering

Transformando datos en sistemas inteligentes para la toma de decisiones.

https://robertscience.online