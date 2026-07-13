# Análisis SQL AdventureWorks2022 – Joins y Transformación de Datos

## Proyecto de Consultas SQL Empresariales

**RobertScience Data Analytics Consulting**

---

## 📌 Descripción del Proyecto

Desarrollé este proyecto utilizando la base de datos empresarial **AdventureWorks2022**, con el objetivo de fortalecer el análisis relacional mediante consultas SQL avanzadas.

Durante el desarrollo trabajé con diferentes entidades empresariales relacionadas con empleados, clientes, productos y órdenes de venta, aplicando técnicas de integración de información mediante múltiples tipos de JOIN, operaciones de conjunto y funciones de transformación de datos.

El propósito principal fue comprender cómo se comportan las relaciones dentro de una base de datos empresarial y cómo extraer información útil mediante consultas estructuradas para escenarios reales de análisis.

---

# 🎯 Objetivo

El objetivo principal fue desarrollar consultas SQL capaces de integrar información proveniente de diferentes tablas utilizando buenas prácticas de análisis relacional.

Los principales objetivos fueron:

* Aplicar INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN y CROSS JOIN.
* Comprender la relación entre diferentes entidades dentro de una base de datos empresarial.
* Utilizar UNION y UNION ALL para combinar conjuntos de información.
* Implementar funciones de transformación como CASE, COALESCE e ISNULL.
* Crear consultas ordenadas, eficientes y orientadas al análisis de datos.

---

# 🏗️ Arquitectura del Proyecto

La estructura utilizada durante el desarrollo fue organizada de la siguiente manera:

```text
022-analisis-sql-adventureworks2022-joins-transformacion-datos/

│
├── sql/
│   └── Tarea_M9-RobertScience.sql
│
├── capturas/
│   ├── evidencia_consultas_01.png
│   ├── evidencia_consultas_02.png
│   └── proceso_sql.png
│
├── docs/
│   ├── Reflexion_Proyecto_SQL.pdf
│   └── Analisis_SQL_AdventureWorks2022.pdf
│
└── README.md
```

---

## 📂 Nota sobre la estructura del repositorio

La estructura anterior representa el entorno completo utilizado durante el desarrollo del proyecto.

Dentro de este repositorio de portafolio no necesariamente se incluye exactamente la totalidad de archivos originales, debido a que algunos elementos pueden depender del entorno local de ejecución, instalaciones específicas o archivos generados durante las pruebas.

Los archivos pesados o dependientes del entorno fueron documentados, manteniendo únicamente los recursos necesarios para comprender el desarrollo, metodología y resultados obtenidos.

---

# 🛠️ Tecnologías Utilizadas

Durante este proyecto utilicé:

* SQL Server
* AdventureWorks2022 Database
* SQL Management Tools
* Docker para pruebas de compatibilidad
* Visual Studio Code
* Lenguaje SQL

---

# 🔎 Desarrollo del Proyecto

## 1. Exploración del modelo relacional

Inicialmente trabajé con la estructura de AdventureWorks2022 para identificar las relaciones existentes entre sus principales entidades.

Analicé tablas como:

* Person.Person
* HumanResources.Employee
* Sales.Customer
* Sales.SalesOrderHeader
* Production.Product
* Production.ProductCategory
* Production.ProductReview

Este análisis permitió comprender cómo se conectan diferentes áreas del negocio dentro de una arquitectura relacional.

---

# 🔗 Aplicación de JOINs

Durante el desarrollo implementé diferentes tipos de uniones SQL:

## INNER JOIN

Utilicé INNER JOIN para obtener únicamente registros con coincidencias entre tablas relacionadas.

Ejemplo aplicado:

* Relación entre empleados y personas.

---

## LEFT JOIN

Implementé LEFT JOIN para conservar todos los registros de una tabla principal aunque no existieran coincidencias relacionadas.

Ejemplo aplicado:

* Consulta de clientes y datos personales asociados.

---

## RIGHT JOIN

Utilicé RIGHT JOIN para analizar relaciones donde era necesario conservar todos los registros de la tabla derecha.

Ejemplo aplicado:

* Relación entre órdenes de venta y clientes.

---

## FULL OUTER JOIN

Apliqué FULL OUTER JOIN para identificar coincidencias y diferencias entre conjuntos completos de información.

Ejemplo aplicado:

* Relación entre productos y reseñas.

---

## CROSS JOIN

Implementé CROSS JOIN para comprender combinaciones completas entre conjuntos de datos.

Ejemplo aplicado:

* Productos y categorías.

---

# 🔄 Transformación y preparación de datos

También trabajé con funciones SQL orientadas a transformación:

## CASE

Utilicé CASE para generar clasificaciones dinámicas dentro de los resultados.

Ejemplo:

* Clasificación de empleados según cargo.
* Segmentación de información.

---

## COALESCE

Implementé COALESCE para controlar valores nulos y proporcionar valores alternativos cuando la información original no estaba disponible.

---

## ISNULL

Utilicé ISNULL para reemplazar valores faltantes y mejorar la presentación de resultados.

Ejemplo:

* Validación de cuotas comerciales.

---

# 🧩 Compatibilidad y adaptación del entorno

Durante el desarrollo trabajé con diferentes configuraciones técnicas debido a diferencias entre versiones de motores SQL y entornos disponibles.

Fue necesario adaptar algunas consultas considerando:

* Compatibilidad del motor SQL utilizado.
* Disponibilidad de tablas dentro del entorno.
* Diferencias entre versiones de AdventureWorks2022.
* Limitaciones del entorno local de ejecución.

Realicé pruebas, ajustes y validaciones hasta obtener una versión final correctamente estructurada.

El resultado final mantiene la lógica solicitada originalmente, aplicando las relaciones, funciones y operaciones requeridas dentro del modelo empresarial.

---

# 📊 Resultados Obtenidos

Como resultado del proyecto logré:

* Integrar información de múltiples entidades empresariales.
* Comprender relaciones complejas dentro de una base de datos real.
* Aplicar diferentes tipos de JOIN según la necesidad del análisis.
* Transformar información mediante funciones SQL.
* Construir consultas más claras y orientadas a negocio.

---

# 📚 Aprendizajes Técnicos

Este proyecto fortaleció mi comprensión sobre:

* Diseño y navegación dentro de modelos relacionales.
* Importancia de las llaves primarias y relaciones entre tablas.
* Construcción de consultas SQL profesionales.
* Tratamiento de valores nulos.
* Preparación de información para procesos analíticos posteriores.

También reforcé la importancia de adaptar soluciones técnicas considerando siempre el entorno donde serán ejecutadas.

---

# 🚀 Aplicación Profesional

Las técnicas utilizadas en este proyecto forman parte de procesos habituales dentro de áreas como:

* Data Analytics.
* Business Intelligence.
* Ingeniería de Datos.
* Preparación de información para reportes empresariales.

La correcta integración y transformación de datos representa una etapa fundamental antes de generar métricas, dashboards o modelos predictivos.

---

# 👨‍💻 Autor

**RobertScience**

Data Analytics & Engineering Solutions

Transformando datos en decisiones inteligentes.

https://robertscience.online
