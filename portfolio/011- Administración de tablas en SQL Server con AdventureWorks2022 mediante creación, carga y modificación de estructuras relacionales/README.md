# Tarea M13 – Implementación y Administración de Tablas en SQL Server (AdventureWorks2022)

## 📌 Descripción del proyecto

En este proyecto correspondiente a la **Tarea M13**, desarrollé una práctica de administración de estructuras de datos utilizando **Microsoft SQL Server** con la base de datos **AdventureWorks2022**.

Mi objetivo fue aplicar los fundamentos de creación, manipulación y validación de tablas dentro de un entorno relacional empresarial.

Durante el desarrollo construí una tabla personalizada para representar información de órdenes de venta, incorporando datos de clientes, fechas, estados de operación, métodos de pago y valores económicos.

Posteriormente realicé la inserción de registros de prueba, validé la información almacenada y ejecuté una modificación estructural mediante el cambio de nombre de la tabla, simulando procesos comunes dentro de la administración de bases de datos en ambientes productivos.

Este proyecto forma parte de mi portafolio técnico enfocado en **Data Analytics, SQL Server y gestión de bases de datos empresariales**.

---

## 🛠️ Tecnologías utilizadas

- Microsoft SQL Server
- Transact-SQL (T-SQL)
- SQL Server Management Studio (SSMS)
- Base de datos AdventureWorks2022

---

## 🚀 Desarrollo del proyecto

Durante el desarrollo de esta práctica implementé las siguientes actividades:

---

### 🔹 Creación de tabla relacional

Diseñé y creé la tabla `dbo.Ventas` para almacenar información relacionada con órdenes comerciales.

La estructura contiene campos para:

- Número de orden
- Fecha de creación
- Fecha de entrega
- Estado de la orden
- Nombre del cliente
- Dirección de entrega
- Tipo de compra
- Método de pago
- Subtotal
- Observaciones

Esta etapa permitió aplicar conceptos de diseño básico de estructuras relacionales utilizando tipos de datos adecuados.

---

### 🔹 Inserción de registros comerciales

Realicé la carga de datos de ejemplo simulando diferentes escenarios operativos:

- Órdenes completadas
- Órdenes en proceso
- Órdenes pendientes
- Órdenes canceladas

Estos registros permitieron validar el funcionamiento de la tabla y representar un escenario cercano a un sistema real de ventas.

---

### 🔹 Validación de información

Ejecuté consultas de validación utilizando `SELECT` para comprobar:

- La correcta creación del objeto dentro de la base de datos.
- La existencia de los registros insertados.
- La integridad de la información almacenada.

---

### 🔹 Modificación de estructura de base de datos

Realicé el cambio de nombre de la tabla utilizando el procedimiento almacenado:

`sp_rename`

La tabla pasó de llamarse:

`Ventas`

a:

`Ordenes`

Este proceso representa una operación habitual dentro de la administración y evolución de modelos de datos empresariales.

---

## 🧠 Conocimientos aplicados

- Creación de tablas en SQL Server
- Diseño básico de estructuras relacionales
- Definición de tipos de datos
- Restricciones `NOT NULL`
- Manejo de valores `NULL`
- Inserción de registros con `INSERT INTO`
- Validación de información con consultas `SELECT`
- Administración de objetos en SQL Server
- Modificación de nombres de tablas con `sp_rename`
- Documentación técnica de scripts SQL

---

## 📈 Resultado

Con este proyecto fortalecí mis habilidades en administración básica de bases de datos relacionales utilizando SQL Server.

Logré desarrollar el ciclo completo de creación y modificación de una estructura de datos, aplicando buenas prácticas de documentación y validación.

Este ejercicio representa una base importante para proyectos posteriores de análisis de datos, ingeniería de datos y construcción de soluciones empresariales basadas en información estructurada.

---

## 📂 Evidencias

El proyecto incluye:

- Script SQL documentado con todo el proceso de creación, carga y modificación de la tabla.
- Evidencias visuales del desarrollo y ejecución.
- Documento PDF con capturas del procedimiento realizado.

---

## 📂 Estructura del proyecto

```txt
011-tarea-m13-tablas-sql-server-adventureworks2022/
├── README.md
├── sql/
│   └── Tarea_M13_RobertScience.sql
├── Capturas_Tarea_M13_RobertScience/
└── Capturas_Tarea_M13_RobertScience.pdf

---

## 👨‍💻 Autor

RobertScience
Data Analytics & Engineering Solutions
https://robertscience.online