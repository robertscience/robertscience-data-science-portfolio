# SQL Server Joins and Business Analysis - AdventureWorks2019

## 📌 Descripción del proyecto

En este proyecto realicé un análisis exploratorio de datos utilizando la base de datos **AdventureWorks2019** en SQL Server.

El objetivo fue fortalecer mis habilidades en el uso de **JOINs, subconsultas, funciones de agregación lógica y estructuras de análisis empresarial**, integrando información de distintas tablas para construir una visión más completa del negocio.

---

## 🛠️ Tecnologías utilizadas

- Microsoft SQL Server
- Transact-SQL (T-SQL)
- AdventureWorks2019
- SQL Server Management Studio (SSMS)

---

## 🚀 Desarrollo del proyecto

Durante este proyecto desarrollé una serie de consultas orientadas a análisis de datos empresariales.

### 🔹 Integración de datos de empleados

Realicé la unión de las tablas `HumanResources.Employee` y `Person.Person` para obtener información completa de empleados, incluyendo nombre, puesto y fecha de nacimiento.

---

### 🔹 Análisis de clientes

Integré las tablas `Sales.Customer` y `Person.Person` para obtener información básica de clientes registrados dentro del sistema.

---

### 🔹 Relación clientes–ventas

Uní las tablas `Sales.Customer`, `Person.Person` y `Sales.SalesOrderHeader` para analizar órdenes de venta asociadas a cada cliente, incluyendo fecha de orden y total pagado.

---

### 🔹 Análisis de vendedores

Trabajé con `Sales.SalesPerson` y `Person.Person` para analizar cuotas de venta y bonos, aplicando `COALESCE` para manejo de valores nulos y ordenamiento estratégico.

---

### 🔹 Análisis de productos y ventas

Integré cinco tablas para relacionar clientes con productos adquiridos:

- Customer
- Person
- SalesOrderHeader
- SalesOrderDetail
- Product

Esto permitió identificar qué productos fueron comprados por cada cliente.

---

### 🔹 Productos sin ventas

Utilicé `LEFT JOIN` para identificar productos que no han sido vendidos, útil para análisis de inventario y rotación.

---

### 🔹 Análisis de vendedores sin ventas

Relacioné vendedores con órdenes generadas, incluyendo aquellos que no han realizado ventas.

---

### 🔹 Cálculo de precios dinámicos

Usé `CROSS APPLY` para aplicar descuentos dinámicos sobre productos de talla XL según ofertas activas.

---

### 🔹 Manejo de datos nulos

Apliqué `COALESCE` para reemplazar valores nulos en atributos como color de producto.

---

### 🔹 Clasificación de empleados

Utilicé estructuras `CASE` para clasificar empleados según su nivel organizacional (Chief, Management, Ops, Staff).

---

### 🔹 Gestión de tablas

Creé una tabla adicional `Departamentos` y realicé una consolidación de datos usando `UNION ALL` con la tabla original del sistema.

---

## 📂 Estructura del proyecto

003-sql-server-joins-and-business-analysis-adventureworks2019/
├── README.md
└── sql/
    └── adventureworks2019-business-analysis.sql

---

## 🧠 Conocimientos aplicados

En este proyecto reforcé conocimientos en:

- INNER JOIN, LEFT JOIN y CROSS JOIN/APPLY
- Análisis relacional de datos empresariales
- Manejo de valores nulos con COALESCE
- Expresiones condicionales con CASE
- Integración de múltiples tablas
- Análisis de ventas, clientes y productos
- Diseño de consultas para inteligencia de negocio

---

## 📈 Resultado

Logré construir consultas avanzadas que permiten analizar el comportamiento de clientes, empleados y productos dentro de un entorno empresarial simulado, mejorando mis habilidades en análisis de datos con SQL Server.

---

## 👨‍💻 Autor

RobertScience  
Data Analytics & Engineering Solutions  
https://robertscience.online/