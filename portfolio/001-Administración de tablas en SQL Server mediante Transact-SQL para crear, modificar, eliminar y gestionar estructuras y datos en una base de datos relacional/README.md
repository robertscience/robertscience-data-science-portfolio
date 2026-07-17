# SQL Server Table Operations - AdventureWorks2022

## 📌 Descripción del proyecto

En este proyecto trabajé con la base de datos AdventureWorks2022 en SQL Server realizando operaciones completas sobre tablas, incluyendo creación, inserción, modificación y eliminación de estructuras y datos.

El objetivo fue reforzar el manejo práctico de comandos SQL orientados a la administración de tablas dentro de un entorno relacional.

---

## 🛠️ Tecnologías utilizadas

- Microsoft SQL Server
- Transact-SQL (T-SQL)
- SQL Server Management Studio (SSMS)
- Base de datos AdventureWorks2022

---

## 🚀 Desarrollo del proyecto

Durante este proyecto realicé las siguientes actividades:

### Creación de estructuras

Creé una tabla llamada `Ventas` con campos destinados a almacenar información de órdenes de venta, incluyendo datos como número de orden, cliente, fechas, estatus y método de pago.

---

### Inserción de datos

Inserté múltiples registros de prueba en la tabla `Ventas` para simular diferentes estados de órdenes, como completadas, en proceso, pendientes y canceladas.

---

### Modificación de estructuras

Realicé cambios sobre la tabla:

- Renombré la tabla `Ventas` a `Ordenes`.
- Agregué una nueva columna llamada `FechaEnvio`.
- Renombré la columna `CompraOnline` a `BanderaCompraOnline`.

---

### Operaciones adicionales sobre tablas

Creé una tabla auxiliar llamada `Prueba` para practicar operaciones de mantenimiento:

- Inserté registros con valores por defecto.
- Eliminé los registros usando `TRUNCATE TABLE`.
- Eliminé la estructura completa con `DROP TABLE`.

---

### Manipulación de datos

Ejecuté consultas para:

- Visualizar la información de la tabla `Ordenes`.
- Eliminar registros con estatus "Cancelada".
- Validar los cambios realizados después de las operaciones.

---

## 📂 Estructura del proyecto

sql-server-table-operations-management/
├── README.md
└── sql/
    └── m08_operaciones_tablas.sql

---

## 🧠 Conocimientos aplicados

En este proyecto reforcé conocimientos en:

- Creación de tablas en SQL Server.
- Inserción de datos en tablas relacionales.
- Modificación de estructuras con ALTER TABLE.
- Uso de sp_rename para renombrar objetos y columnas.
- Eliminación de datos con DELETE y TRUNCATE.
- Eliminación de objetos con DROP TABLE.
- Gestión del ciclo de vida de tablas en bases de datos.

---

## 📈 Resultado

Al finalizar el proyecto logré consolidar habilidades en la gestión de tablas en SQL Server, aplicando operaciones fundamentales para la administración de estructuras y datos dentro de un entorno relacional.

---

## 👨‍💻 Autor

RobertScience  
Data Analytics & Engineering Solutions