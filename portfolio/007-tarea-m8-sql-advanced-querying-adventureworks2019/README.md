# Tarea M8 – Consultas Avanzadas con SQL Server (AdventureWorks2019)

## 📌 Descripción del proyecto

En este proyecto correspondiente a la **Tarea M8**, realicé consultas avanzadas en SQL Server utilizando la base de datos **AdventureWorks2019**.

El objetivo fue aplicar técnicas más complejas de consulta como subconsultas, EXISTS, NOT EXISTS, CTEs, tablas derivadas y tablas temporales para reforzar habilidades de análisis de datos.

---

## 🛠️ Tecnologías utilizadas

- Microsoft SQL Server  
- Transact-SQL (T-SQL)  
- SQL Server Management Studio (SSMS)  
- Base de datos AdventureWorks2019  

---

## 🚀 Desarrollo del proyecto

Durante este proyecto desarrollé consultas avanzadas orientadas a análisis:

### 🔹 Subconsultas con EXISTS y NOT EXISTS

Identifiqué productos que han sido ordenados y productos que nunca han sido ordenados utilizando subconsultas con `EXISTS` y `NOT EXISTS`, permitiendo analizar comportamiento de inventario.

---

### 🔹 Análisis de empleados y departamentos

Realicé consultas para obtener el último departamento asignado a cada empleado utilizando:

- Subconsulta correlacionada  
- Tabla derivada  
- CTE (Common Table Expression)

Esto me permitió comparar diferentes enfoques para resolver el mismo problema.

---

### 🔹 Tablas temporales

Creé tablas temporales locales (`#`) y globales (`##`) para almacenar productos ordenados y analizar diferencias entre estructuras temporales y tablas físicas.

También documenté diferencias clave en persistencia, rendimiento y uso.

---

### 🔹 Manipulación de datos de órdenes

Realicé una consulta combinada entre órdenes de venta y órdenes de compra para el año 2011, aplicando:

- SUBSTRING  
- CONVERT  
- GROUP BY  
- ORDER BY con lógica condicional  

---

## 🧠 Conocimientos aplicados

- Subconsultas con EXISTS y NOT EXISTS  
- Subconsultas correlacionadas  
- CTE (Common Table Expressions)  
- Tablas derivadas  
- Tablas temporales (# y ##)  
- Manipulación de cadenas con SUBSTRING  
- Conversión de datos con CONVERT y TRY_CONVERT  
- Agrupación con GROUP BY  
- Ordenamiento condicional con CASE  

---

## 📈 Resultado

Con este proyecto fortalecí mis habilidades en SQL avanzado, entendiendo cómo resolver problemas complejos de análisis de datos utilizando múltiples enfoques técnicos dentro de una base de datos relacional.

El proyecto demuestra capacidad para resolver problemas analíticos utilizando múltiples enfoques SQL equivalentes, validando comprensión profunda del modelo relacional.

---

## 📂 Estructura del proyecto

TareaM8-robertscience-adventureworks2019/
├── README.md
└── sql/
    └── tarea_m8_robertscience_adventureworks2019.sql

---

## 👨‍💻 Autor

RobertScience  
Data Analytics & Engineering Solutions  
https://robertscience.online