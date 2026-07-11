# Tarea M10 – SQL Analytics & Business Intelligence (AdventureWorks2019)

## 📌 Descripción del proyecto

En este proyecto correspondiente a la **Tarea M10**, desarrollé un conjunto de consultas analíticas en SQL Server utilizando la base de datos **AdventureWorks2019**.

Mi objetivo fue aplicar técnicas de análisis de datos orientadas a escenarios empresariales, transformando información operativa en indicadores útiles para la toma de decisiones dentro de áreas como Recursos Humanos, Ventas, Clientes e Inventarios.

Durante este proyecto trabajé con consultas avanzadas utilizando agrupaciones, funciones de ventana, expresiones comunes de tabla (CTE), análisis porcentual y métricas comerciales, aplicando un enfoque similar al utilizado en ambientes profesionales de Business Intelligence.

---

## 🛠️ Tecnologías utilizadas

- Microsoft SQL Server
- Transact-SQL (T-SQL)
- SQL Server Management Studio (SSMS)
- Base de datos AdventureWorks2019

---

## 🚀 Desarrollo del proyecto

Durante el desarrollo de este proyecto realicé diferentes análisis enfocados en la extracción de información estratégica.

---

### 🔹 Análisis de distribución de empleados

Realicé consultas para identificar la cantidad de colaboradores por puesto dentro de la organización.

Este análisis permite conocer la estructura interna de la empresa y detectar la concentración de talento por rol organizacional.

También implementé funciones de ventana para mostrar cada empleado junto con la cantidad total de colaboradores que pertenecen al mismo puesto.

---

### 🔹 Análisis de productos con mayor volumen de compra

Analicé los productos con mayor cantidad de unidades vendidas mediante la integración de tablas de ventas y productos.

Este análisis permite identificar productos con mayor rotación comercial para apoyar decisiones relacionadas con inventarios y abastecimiento.

---

### 🔹 Análisis de órdenes con alta diversidad de productos

Identifiqué órdenes con una gran variedad de productos utilizando funciones de agregación y filtros con `HAVING`.

Este enfoque permite detectar patrones de compra complejos y evaluar comportamientos relevantes dentro de la operación comercial.

---

### 🔹 Análisis de recurrencia de clientes

Desarrollé consultas para identificar clientes con mayor frecuencia de compra anual.

Este análisis permite evaluar clientes recurrentes y generar información útil para estrategias de retención y administración de cuentas importantes.

---

### 🔹 Análisis geográfico de clientes

Realicé un análisis de distribución de clientes por país, enfocándome en mercados específicos.

Este proceso permitió obtener una visión general de la presencia comercial por región y apoyar posibles análisis de expansión.

---

### 🔹 Análisis porcentual de participación por cliente

Implementé expresiones comunes de tabla (`CTE`) y funciones de ventana para calcular la participación porcentual de cada orden respecto al total generado por cada cliente.

Esto permite analizar concentración de ingresos y comportamiento individual de compra.

---

### 🔹 Ranking de órdenes por impacto financiero

Construí un ranking de órdenes utilizando la función `RANK()` para identificar las transacciones con mayor impacto económico dentro de cada cliente.

Este análisis facilita la identificación de operaciones relevantes para la gestión comercial.

---

## 🧠 Conocimientos aplicados

- Consultas analíticas en SQL Server
- Agrupaciones con `GROUP BY`
- Filtrado avanzado con `HAVING`
- Funciones de agregación (`COUNT`, `SUM`)
- Funciones de ventana (`COUNT OVER`, `RANK`)
- Expresiones comunes de tabla (CTE)
- Análisis de clientes y comportamiento de compra
- Integración de múltiples tablas relacionales
- Métricas orientadas a Business Intelligence
- Extracción de información para toma de decisiones

---

## 📈 Resultado

Con este proyecto fortalecí mis habilidades en análisis avanzado de datos utilizando SQL Server, aplicando técnicas utilizadas en escenarios reales de Business Intelligence.

Desarrollé consultas orientadas a transformar datos operativos en información estratégica, demostrando la capacidad de analizar estructuras empresariales, identificar patrones comerciales y generar métricas útiles para la toma de decisiones.

---

## 📂 Evidencias

El proyecto incluye:

- Script SQL documentado con todas las consultas desarrolladas.
- Evidencias visuales del proceso de ejecución.
- Documento PDF con los resultados y validaciones realizadas.

---

## 📂 Estructura del proyecto

```txt
010-tarea-m10-sql-analytics-business-intelligence-adventureworks2019/
├── README.md
├── sql/
│   └── Tarea_M10_RobertScience.sql
├── Capturas_Tarea_M10_RobertScience/
└── Tarea M10 – RobertScience.pdf

---

##👨‍💻 Autor

RobertScience
Data Analytics & Engineering Solutions
https://robertscience.online