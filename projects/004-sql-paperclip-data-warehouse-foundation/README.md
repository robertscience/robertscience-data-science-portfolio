# SQL Data Warehouse Foundation - Paperclip Project

## 📌 Descripción del proyecto

En este proyecto desarrollé la estructura completa de una base de datos relacional empresarial llamada **Paperclip**, diseñada como un sistema tipo Data Warehouse operativo para gestión de Recursos Humanos y Ventas.

El objetivo fue construir una arquitectura de base de datos escalable que incluye modelado, carga de datos, validación de integridad, seguridad y respaldo completo del sistema.

---

## 🏗️ Arquitectura del sistema

El sistema está dividido en dos dominios principales:

- RH (Recursos Humanos)
- Ventas (Sales Domain)

Cada dominio contiene entidades normalizadas con relaciones controladas mediante claves primarias y foráneas.

---

## 🛠️ Tecnologías utilizadas

- Microsoft SQL Server
- Transact-SQL (T-SQL)
- BULK INSERT
- Gestión de archivos CSV
- Administración de backups (.bak)

---

## 🚀 Desarrollo del proyecto

### 🔹 1. Diseño de estructura de base de datos

Diseñé la base de datos `Paperclip` con esquemas separados:

- RH.Departamentos
- RH.Empleados
- Ventas.Clientes
- Ventas.Productos
- Ventas.Ordenes

Definiendo relaciones entre entidades para asegurar integridad referencial.

---

### 🔹 2. Carga de datos masiva

Implementé carga de datos desde archivos CSV utilizando `BULK INSERT`, respetando el orden lógico:

1. Catálogos (Departamentos, Clientes, Productos)
2. Entidades principales (Empleados)
3. Transacciones (Órdenes)

---

### 🔹 3. Validación de integridad

Realicé validaciones para asegurar consistencia del modelo:

- Conteo de registros por tabla
- Validación de claves foráneas
- Revisión de integridad referencial entre entidades

---

### 🔹 4. Seguridad del sistema

Implementé control de acceso en SQL Server:

- Creación de login: UsuarioVentas
- Usuario en base de datos Paperclip
- Permisos restringidos a solo lectura sobre el esquema de Ventas

---

### 🔹 5. Respaldo y restauración

Configuré procesos de backup y restore:

- Generación de archivo .bak
- Restauración completa del sistema
- Configuración de rutas físicas MDF y LDF
- Validación de consistencia post-restauración

---

## 📂 Estructura del proyecto

004-sql-paperclip-data-warehouse-foundation/
├── README.md
└── sql/
    └── paperclip_business_model.sql

---

## 🧠 Conocimientos aplicados

- Modelado relacional de bases de datos
- Diseño de esquemas empresariales (RH y Ventas)
- Integridad referencial (PK/FK)
- Carga masiva de datos con BULK INSERT
- Seguridad en SQL Server (logins y permisos)
- Backup y restore de bases de datos
- Arquitectura tipo Data Warehouse

---

## 📈 Resultado

El proyecto permitió construir una base de datos empresarial completa con estructura escalable, preparada para análisis de datos y futuras capas de inteligencia de negocio (BI).

---

## 👨‍💻 Autor

RobertScience  
Data Analytics & Engineering Solutions  
https://robertscience.online/