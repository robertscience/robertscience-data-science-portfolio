# Tarea M9 – Desarrollo de Objetos SQL Server Avanzados (AdventureWorks2019)

## 📌 Descripción del proyecto

En este proyecto correspondiente a la **Tarea M9**, desarrollé componentes avanzados dentro de SQL Server utilizando la base de datos **AdventureWorks2019**.

Mi objetivo fue crear objetos reutilizables dentro de una base de datos empresarial mediante vistas, funciones y procedimientos almacenados, aplicando conceptos utilizados en ambientes reales de desarrollo y análisis de datos.

Este proyecto forma parte de mi portafolio de **Data Analytics & Engineering**, demostrando la capacidad de transformar consultas SQL en soluciones estructuradas, reutilizables y orientadas a procesos empresariales.

---

## 🛠️ Tecnologías utilizadas

- Microsoft SQL Server
- Transact-SQL (T-SQL)
- SQL Server Management Studio (SSMS)
- Base de datos AdventureWorks2019

---

## 🚀 Desarrollo del proyecto

Durante el desarrollo implementé diferentes objetos programables dentro de SQL Server.

---

## 🔹 Creación de vistas SQL (Views)

Desarrollé vistas para facilitar el acceso y análisis de información empresarial:

### Production.vHistoricoCostosProducto

Creé una vista para consultar el historial de costos de productos, relacionando información de:

- Productos
- Costos históricos
- Fechas de vigencia

Esto permite consultar información comercial sin repetir la lógica de unión entre tablas.

---

### HumanResources.vEmpleadosAsignacionDepartamento

Construí una vista para analizar la relación entre empleados y departamentos.

La consulta integra:

- Información del empleado
- Departamento asignado
- Fecha de inicio
- Estado de asignación actual

---

## 🔹 Desarrollo de funciones Table-Valued Functions (TVF)

Implementé funciones que permiten devolver conjuntos de datos reutilizables.

Creé:

- Función para obtener asignaciones completas de empleados.
- Función con parámetro para consultar la información de un empleado específico.

Estas funciones permiten encapsular lógica SQL y reutilizarla en diferentes consultas o procesos.

---

## 🔹 Desarrollo de funciones personalizadas

Implementé funciones para transformación y limpieza de datos:

### Limpieza de texto

Creé una función para:

- Convertir texto a mayúsculas.
- Eliminar espacios innecesarios.
- Remover acentos.
- Limpiar caracteres especiales.

Esto simula procesos reales de preparación de datos antes de análisis.

---

### Formato de teléfonos

Desarrollé una función para transformar números telefónicos a un formato estándar:

Ejemplo:

5512345678

Resultado:

(55) 1234-5678

---

## 🔹 Creación de procedimientos almacenados

Desarrollé procedimientos almacenados para ejecutar lógica reutilizable:

### uspObtenAsignacionEmpleadoPorID

Permite consultar la información de asignación laboral de un empleado mediante un identificador.

---

### uspObtenTotalesCliente

Genera un resumen de ventas agrupado por:

- Cliente
- Año
- Mes
- Monto total

Este procedimiento permite obtener indicadores comerciales para análisis.

---

## 🧠 Conocimientos aplicados

- Creación de Views en SQL Server
- Funciones escalares
- Table-Valued Functions (TVF)
- Funciones con parámetros
- Procedimientos almacenados
- JOIN entre tablas relacionales
- Transformación y limpieza de datos
- Manejo de fechas
- Agregaciones con GROUP BY
- Encapsulación de lógica SQL
- Desarrollo de componentes reutilizables

---

## 📂 Estructura del proyecto

```txt
009-tarea-m9-sql-server-views-functions-procedures-adventureworks2019/
├── README.md
└── sql/
    └── Tarea M9 – RobertScience.sql

---

## 📈 Resultado

Con este proyecto fortalecí mis habilidades en desarrollo avanzado de bases de datos utilizando SQL Server.

Aprendí a convertir consultas tradicionales en objetos reutilizables mediante vistas, funciones y procedimientos almacenados, aplicando una metodología más cercana a entornos profesionales de ingeniería de datos y desarrollo backend.

---

## 👨‍💻 Autor

RobertScience
Data Analytics & Engineering Solutions
https://robertscience.online