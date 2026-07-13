# Tarea M14 – Diseño de Base de Datos Relacional para Área Comercial (Quiksilver)

## 📌 Descripción del proyecto

En este proyecto correspondiente a la **Tarea M14**, desarrollé el diseño e implementación de una base de datos relacional orientada al área comercial de **Quiksilver**.

El objetivo principal fue transformar una serie de requerimientos de negocio en un modelo de datos estructurado, aplicando principios de diseño de bases de datos, integridad referencial y normalización hasta la **Tercera Forma Normal (3FN)**.

El proyecto contempla la gestión de clientes, productos, categorías, empleados comerciales, canales de venta y transacciones, creando una estructura preparada para soportar consultas analíticas y procesos de toma de decisiones empresariales.

---

## 🛠️ Tecnologías utilizadas

* Microsoft SQL Server
* Transact-SQL (T-SQL)
* Modelado relacional de bases de datos
* Normalización de datos (1FN, 2FN y 3FN)
* Diseño entidad-relación

---

## 🚀 Desarrollo del proyecto

Durante el desarrollo del proyecto analicé los requerimientos del área comercial y construí un modelo relacional enfocado en representar correctamente las operaciones de venta de la empresa.

---

## 🔹 Análisis de requerimientos del negocio

Documenté las necesidades principales del sistema considerando procesos relacionados con:

* Gestión de clientes.
* Administración del catálogo de productos.
* Clasificación de productos por categorías.
* Control de empleados comerciales.
* Registro de ventas.
* Identificación de canales de venta.

El diseño fue planteado para permitir crecimiento futuro y facilitar consultas orientadas al análisis comercial.

---

## 🔹 Diseño del modelo conceptual

Definí las entidades principales del sistema y sus relaciones:

* **Cliente:** Información de compradores y datos de contacto.
* **Producto:** Catálogo de artículos comercializados.
* **Categoría:** Clasificación de productos por línea comercial.
* **Empleado:** Personal responsable de gestionar ventas.
* **CanalVenta:** Medio utilizado para realizar la transacción.
* **Venta:** Registro principal de operaciones comerciales.
* **DetalleVenta:** Relación entre ventas y productos adquiridos.

El modelo establece relaciones claras entre entidades evitando duplicidad de información.

---

## 🔹 Diseño del modelo lógico

Construí la estructura de tablas considerando:

* Llaves primarias para identificación única.
* Llaves foráneas para mantener integridad referencial.
* Campos obligatorios mediante restricciones NOT NULL.
* Restricciones UNIQUE para datos críticos.
* Relaciones uno a muchos entre entidades principales.

Las tablas principales diseñadas fueron:

### Cliente

* IdCliente (PK)
* Nombre
* Apellido
* CorreoElectronico
* Telefono

### Producto

* IdProducto (PK)
* NombreProducto
* Precio
* IdCategoria (FK)

### Categoria

* IdCategoria (PK)
* NombreCategoria
* Descripcion

### Empleado

* IdEmpleado (PK)
* Nombre
* Apellido
* Puesto

### CanalVenta

* IdCanalVenta (PK)
* NombreCanal

### Venta

* IdVenta (PK)
* FechaVenta
* IdCliente (FK)
* IdEmpleado (FK)
* IdCanalVenta (FK)

### DetalleVenta

* IdDetalleVenta (PK)
* IdVenta (FK)
* IdProducto (FK)
* Cantidad
* PrecioUnitario

---

## 🔹 Implementación SQL

Además del diseño documental, implementé el modelo físico mediante SQL Server.

Creé:

* Base de datos comercial.
* Tablas relacionales.
* Llaves primarias.
* Llaves foráneas.
* Restricciones de integridad.
* Datos de prueba.
* Consulta de validación comercial.

La implementación permite comprobar que el modelo conceptual puede convertirse en una estructura funcional dentro de un sistema gestor de bases de datos.

---

## 🔹 Normalización del modelo

El modelo fue diseñado aplicando principios de normalización:

### Primera Forma Normal (1FN)

Cada atributo contiene valores atómicos y no existen grupos repetitivos de información.

### Segunda Forma Normal (2FN)

Las tablas separan correctamente información independiente evitando dependencias parciales.

### Tercera Forma Normal (3FN)

Las entidades fueron separadas para eliminar dependencias transitivas y reducir redundancia.

---

## 🖼️ Recursos visuales del proyecto

Dentro de la carpeta `img/` se incluyen los elementos gráficos utilizados en la documentación:

* **Logo Quicksilver:** Identidad visual del proyecto.
* **Quiksilver_DER.png:** Diagrama Entidad-Relación utilizado para representar la estructura del modelo de datos.

---

## 📂 Estructura del proyecto

```txt
012-tarea-m14-diseno-base-datos-relacional-quiksilver/
│
├── README.md
│
├── sql/
│   └── Tarea_M14_RobertScience.sql
│
├── img/
│   ├── Logo Quicksilver.jfif
│   └── Quiksilver_DER.png
│
└── Tarea_M14_RobertScience.pdf
```

---

## 📈 Resultado

Con este proyecto desarrollé un modelo completo de base de datos relacional aplicado a un escenario empresarial real.

El trabajo demuestra habilidades en:

* Análisis de requerimientos.
* Diseño de arquitectura de datos.
* Modelado entidad-relación.
* Normalización.
* Implementación SQL.
* Integridad y organización de información comercial.

Este proyecto forma parte de mi portafolio orientado a **Data Analytics, Data Engineering y diseño de soluciones basadas en datos**.

---

## 👨‍💻 Autor

RobertScience
Data Analytics & Engineering Solutions
https://robertscience.online
