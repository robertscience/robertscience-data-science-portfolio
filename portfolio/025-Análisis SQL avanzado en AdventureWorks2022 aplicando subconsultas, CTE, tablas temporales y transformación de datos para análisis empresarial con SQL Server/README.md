# Tarea M11 – RobertScience  
## Análisis SQL de Ventas y Recursos Humanos en AdventureWorks2022

**RobertScience Data Analytics Consulting**

---

# 📌 Descripción del Proyecto

Desarrollé esta práctica utilizando la base de datos **AdventureWorks2022**, enfocándome en el análisis de información de ventas y recursos humanos mediante consultas SQL avanzadas.

El objetivo fue aplicar diferentes técnicas de consulta como subconsultas, CTE, joins complejos, tablas temporales y funciones de manipulación de cadenas, con el fin de extraer información útil para análisis estructurado de negocio.

Durante el desarrollo trabajé cada ejercicio de forma progresiva, desde consultas de filtrado simples hasta estructuras más avanzadas orientadas a la optimización y organización de datos.

---

# 🎯 Objetivo

El objetivo principal de esta práctica fue fortalecer el uso de SQL avanzado para análisis de datos empresariales.

Los objetivos específicos fueron:

- Identificar productos que han sido ordenados mediante subconsultas.
- Obtener información de empleados y sus departamentos actuales.
- Implementar consultas con CTE para estructurar datos.
- Utilizar tablas temporales locales y globales para almacenamiento intermedio.
- Manipular cadenas para normalizar números de orden.
- Analizar información de ventas y recursos humanos de forma integrada.

---

# 🏗️ Arquitectura del Proyecto

La estructura del proyecto se organizó de la siguiente manera:

```text
025-tarea-m11-sql-advanced-adventureworks/

│
├── sql/
│   └── Tarea_M11_RobertScience.sql
│
├── docs/
│   └── Tarea M11 – RobertScience.pdf
│
├── capturas/
│   └── evidencia_ejecucion_sql/
│
└── README.md
📂 Nota sobre la estructura del repositorio

La estructura anterior representa el entorno completo utilizado durante el desarrollo de la práctica.

Sin embargo, en este repositorio de GitHub no se incluye la totalidad de los datos originales ni archivos pesados, debido a limitaciones de almacenamiento y buenas prácticas de versionado.

Los elementos omitidos corresponden principalmente a:

Archivos de base de datos completos o exportaciones pesadas.
Conjuntos de datos generados durante pruebas locales.
Evidencias adicionales de ejecución en entorno de desarrollo.

Todo el proceso puede ser reproducido mediante el script SQL incluido en la carpeta sql/.

🛠️ Tecnologías Utilizadas

Durante esta práctica utilicé:

SQL Server
Base de datos AdventureWorks2022
Lenguaje SQL
Visual Studio Code
Herramientas de administración de bases de datos
🔎 Desarrollo del Proyecto
1. Productos ordenados

Se utilizó una subconsulta para identificar los productos que han sido incluidos en órdenes de venta, permitiendo filtrar únicamente los elementos con actividad comercial.

2. Empleados con su departamento actual

Se realizó un JOIN entre tablas de recursos humanos, personas y departamentos para obtener información completa de cada empleado activo.

3. Implementación de CTE

Se utilizó una Common Table Expression (CTE) para estructurar la consulta de empleados, facilitando la lectura y organización del conjunto de datos.

4. Tablas temporales

Se implementaron:

Tabla temporal local (#ProductosOrdenadosLocal)
Tabla temporal global (##ProductosOrdenadosGlobal)

Estas permitieron almacenar resultados intermedios para análisis posterior dentro de la sesión SQL.

5. Análisis de órdenes (2011)

Se filtraron las órdenes correspondientes al año 2011, permitiendo observar el comportamiento histórico de ventas.

6. Manipulación de cadenas

Se aplicaron funciones como SUBSTRING y LEN para modificar los números de orden y compra, eliminando prefijos y normalizando su formato.

📊 SQL Utilizado

El desarrollo completo se encuentra en:

sql/Tarea_M11_RobertScience.sql

Incluye:

Subconsultas
INNER JOIN múltiples tablas
CTE (Common Table Expressions)
Tablas temporales (# y ##)
Funciones de cadena (SUBSTRING, LEN)
Consultas de filtrado por fecha
📈 Resultados Obtenidos
Identificación de productos con actividad de venta.
Relación completa entre empleados y departamentos activos.
Uso correcto de estructuras avanzadas de SQL.
Manejo de datos temporales para análisis intermedio.
Transformación de identificadores de órdenes.
📚 Conclusión

Esta práctica permitió consolidar el uso de SQL avanzado aplicado a escenarios reales de análisis de datos empresariales.

Trabajé con distintas técnicas de consulta que me permitieron estructurar, transformar y analizar información de manera eficiente, reforzando la capacidad de interpretar datos provenientes de sistemas transaccionales.

👨‍💻 Autor

RobertScience
Data Analytics & Engineering Solutions
https://robertscience.online

🚀 Cierre

Este proyecto forma parte de mi proceso de fortalecimiento en análisis de datos con SQL orientado a entornos empresariales reales.