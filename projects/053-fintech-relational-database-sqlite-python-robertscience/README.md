# Modelado de Base de Datos Relacional Fintech con SQLite y Python

**Data Engineering | SQL | SQLite | Relational Database Design | FinTech Analytics | Python Data Processing**

---

# RobertScience Data Analytics Consulting

## Descripción del Proyecto

En este proyecto desarrollé un modelo de base de datos relacional orientado a un escenario **FinTech**, utilizando archivos CSV como fuente inicial de información e integrándolos dentro de una base de datos SQLite mediante Python.

El objetivo principal fue diseñar una estructura organizada de datos que permitiera almacenar, relacionar y consultar información financiera utilizando principios fundamentales de bases de datos relacionales.

Durante el desarrollo trabajé con tres entidades principales:

* Clientes.
* Cuentas.
* Transacciones.

A partir de estas entidades construí un modelo relacional donde fue posible aplicar consultas SQL para analizar relaciones entre tablas, clasificar información financiera y obtener diferentes perspectivas sobre el comportamiento de los usuarios dentro de una plataforma financiera simulada.

Este proyecto representa un escenario práctico de trabajo dentro de áreas como **Data Analytics, Business Intelligence y Data Engineering**, donde la correcta estructuración de la información es fundamental para generar análisis confiables y escalables.

---

# Objetivo Técnico

El objetivo principal fue construir una base de datos relacional funcional utilizando Python y SQLite, aplicando buenas prácticas de integración, organización y consulta de información estructurada.

Durante el desarrollo del proyecto busqué:

* Importar información desde archivos CSV.
* Validar la estructura inicial de los datos.
* Diseñar un modelo relacional basado en entidades financieras.
* Crear tablas dentro de SQLite.
* Establecer relaciones mediante claves identificadoras.
* Ejecutar consultas SQL utilizando diferentes tipos de JOIN.
* Aplicar lógica condicional mediante CASE WHEN.
* Implementar subconsultas para análisis financiero.
* Obtener información útil a partir de datos estructurados.
* Simular procesos de análisis utilizados dentro de plataformas FinTech.

---

# Modelo de Datos Utilizado

El proyecto trabaja con tres datasets principales que representan entidades dentro de una plataforma financiera:

## Clientes

Contiene información básica de los usuarios registrados dentro del sistema.

Campos principales:

* id_cliente
* nombre
* edad
* ciudad
* fecha_registro

---

## Cuentas

Representa las cuentas financieras asociadas a cada cliente.

Campos principales:

* id_cuenta
* id_cliente
* tipo_cuenta
* saldo

---

## Transacciones

Contiene los movimientos financieros realizados dentro de cada cuenta.

Campos principales:

* id_transaccion
* id_cuenta
* fecha
* monto
* tipo

---

La estructura implementada sigue un modelo relacional donde:


Clientes
|
|
└── Cuentas
|
|
└── Transacciones


Este diseño permite consultar información financiera relacionando usuarios, productos financieros y movimientos realizados.

---

# Datasets Utilizados

Para la construcción del modelo se utilizaron los siguientes archivos:

* clientes.csv
* cuentas.csv
* transacciones.csv

Estos archivos representan la fuente inicial de información utilizada para alimentar la base de datos SQLite.

Debido a restricciones relacionadas con el tamaño de archivos y con el objetivo de mantener un repositorio profesional y ligero en GitHub, los datasets originales **no fueron incluidos dentro del repositorio**.

La estructura del proyecto, rutas esperadas y flujo de procesamiento fueron documentados para permitir la reproducción completa del análisis utilizando los mismos archivos de entrada.

---

# Tecnologías Utilizadas

## Lenguaje

* Python 3.11.9

---

## Base de Datos

* SQLite

---

## Entorno de Desarrollo

* Visual Studio Code
* Jupyter Notebook

---

## Librerías Principales

* Pandas
* SQLite3

---

# Estructura del Proyecto

```text
fintech-relational-database-sqlite-python-robertscience
│
├── data
│   │
│   ├── raw
│   │   ├── clientes.csv
│   │   ├── cuentas.csv
│   │   └── transacciones.csv
│   │
│   └── processed
│       └── fintech.db
│
├── notebooks
│   └── practica-m43-modelado-base-datos-fintech.ipynb
│
├── src
│   └── database_connection.py
│
├── requirements.txt
│
└── README.md

Nota:

Los archivos ubicados dentro de las carpetas data/raw y data/processed no fueron incluidos dentro del repositorio debido a restricciones de tamaño y para mantener buenas prácticas de administración de archivos en GitHub.

El archivo de base de datos SQLite (fintech.db) y los datasets pueden ser generados nuevamente ejecutando el notebook siguiendo la estructura indicada.

La organización del proyecto fue documentada para conservar un flujo reproducible y facilitar futuras implementaciones.

Flujo de Desarrollo
1. Preparación del Entorno

Inicialmente configuré el entorno de trabajo utilizando Python y las librerías necesarias para manipulación de datos y conexión con SQLite.

Utilicé:

Pandas para lectura y manipulación de archivos CSV.
SQLite3 para creación y administración de la base de datos relacional.
2. Carga de Datos

Realicé la importación de los archivos CSV correspondientes a clientes, cuentas y transacciones.

Posteriormente validé la estructura de cada dataset revisando:

Columnas disponibles.
Tipos de datos.
Registros iniciales.
Consistencia de la información.

Este proceso permitió asegurar que los datos estuvieran preparados antes de integrarlos dentro de la base relacional.

3. Construcción de la Base de Datos Relacional

Transformé los DataFrames obtenidos desde Pandas en tablas SQLite utilizando una estructura organizada.

Las tablas creadas fueron:

clientes
cuentas
transacciones

Cada tabla representa una entidad independiente dentro del modelo financiero.

4. Validación de Información

Después de cargar los datos dentro de SQLite realicé consultas de validación para confirmar que la información hubiera sido almacenada correctamente.

Esta etapa permitió comprobar la integridad de los datos antes de iniciar los análisis SQL.

5. Consultas SQL Implementadas
INNER JOIN

Implementé consultas utilizando INNER JOIN para combinar información entre clientes, cuentas y transacciones.

Este tipo de consulta permitió obtener una vista completa de las operaciones financieras relacionando:

Cliente.
Tipo de cuenta.
Movimiento realizado.
Fecha de operación.
LEFT JOIN

Utilicé LEFT JOIN para conservar todos los clientes registrados aunque no tuvieran movimientos asociados.

Este enfoque permite identificar usuarios sin actividad financiera y puede ser utilizado para análisis de comportamiento o estrategias de retención.

Clasificación Financiera mediante CASE WHEN

Implementé lógica condicional utilizando CASE WHEN para clasificar cuentas según su saldo.

Las categorías generadas fueron:

Saldo alto.
Saldo medio.
Saldo negativo.

Este tipo de clasificación permite transformar valores numéricos en información más interpretable para análisis de negocio.

Subconsultas SQL

Desarrollé diferentes tipos de subconsultas para realizar análisis específicos:

Identificación de clientes activos.
Detección de clientes sin transacciones.
Comparación de saldos superiores al promedio general.

Estas consultas representan técnicas utilizadas frecuentemente en análisis financiero y Business Intelligence.

Resultados Obtenidos

Durante el desarrollo del proyecto fue posible:

Construir una base de datos relacional funcional.
Integrar múltiples fuentes de información mediante Python.
Crear tablas estructuradas dentro de SQLite.
Relacionar entidades mediante claves identificadoras.
Ejecutar consultas SQL avanzadas.
Analizar información financiera desde diferentes perspectivas.
Aplicar lógica de negocio sobre datos estructurados.
Conclusiones Técnicas

Este proyecto permitió aplicar conceptos fundamentales de ingeniería de datos y análisis relacional dentro de un escenario FinTech.

La integración entre Python, Pandas y SQLite permitió construir un flujo completo que inicia desde archivos CSV hasta una base de datos consultable mediante SQL.

El desarrollo de consultas utilizando JOINs, CASE WHEN y subconsultas demuestra la importancia de contar con estructuras de datos correctamente diseñadas para generar análisis confiables y escalables.

Este tipo de soluciones forman parte de los procesos utilizados dentro de equipos profesionales de Data Analytics, Business Intelligence y Data Engineering.

Aplicación Profesional

Las técnicas implementadas en este proyecto tienen aplicación directa en áreas como:

FinTech Analytics.
Data Engineering.
Business Intelligence.
Customer Analytics.
Banking Data Platforms.
Financial Reporting.
Data Modeling.
SQL Development.
Conclusión

En este proyecto desarrollé un modelo de base de datos relacional enfocado en un escenario financiero utilizando Python y SQLite.

El flujo completo incluyó la carga de archivos CSV, validación de información, creación de tablas relacionales, integración de entidades financieras y ejecución de consultas SQL orientadas al análisis.

La implementación permitió transformar datos estructurados en una fuente organizada de información capaz de responder preguntas de negocio mediante consultas eficientes.

Este proyecto fortalece mi experiencia en manejo de bases de datos, análisis estructurado de información y construcción de soluciones orientadas a datos dentro de ambientes profesionales.

Autor

RobertScience

Data Analytics & Machine Learning Engineering

Transformando datos en sistemas inteligentes para la toma de decisiones.

https://robertscience.online