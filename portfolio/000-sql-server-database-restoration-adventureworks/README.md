# SQL Server Database Restoration - AdventureWorks2022

## 📌 Descripción del proyecto

En este proyecto realicé la restauración de la base de datos AdventureWorks2022 en SQL Server a partir de un archivo de respaldo `.bak`.

El objetivo principal fue preparar un entorno de trabajo funcional, asegurando que la base de datos quedara correctamente instalada y accesible para su uso en consultas y futuros proyectos de análisis de datos.

---

## 🛠️ Tecnologías utilizadas

- Microsoft SQL Server
- Transact-SQL (T-SQL)
- SQL Server Management Studio (SSMS)
- Archivo de respaldo `.bak`

---

## 🚀 Desarrollo del proyecto

Durante este proyecto realicé las siguientes actividades:

### Restauración de la base de datos

Ejecuté la restauración de la base de datos AdventureWorks2022 utilizando la instrucción `RESTORE DATABASE`, especificando:

- Archivo de datos `.mdf`
- Archivo de log `.ldf`
- Opción `REPLACE` para sobrescribir una instancia existente si era necesario

---

### Configuración del entorno

Establecí el contexto de trabajo en la base de datos restaurada mediante:

- `USE master`
- `USE AdventureWorks2022`

Esto me permitió asegurar que la conexión a la base fuera correcta.

---

### Validación de la restauración

Una vez completado el proceso, realicé consultas de verificación para confirmar el correcto funcionamiento:

- Consulta de bases de datos disponibles en el servidor.
- Conteo de registros en la tabla `Person.Person`.
- Validación del estado de la base dentro del sistema.

---

## 📂 Estructura del proyecto

sql-server-database-restoration-adventureworks/
├── README.md
└── sql/
    └── restore_adventureworks.sql

---

## 🧠 Conocimientos aplicados

En este proyecto reforcé conocimientos en:

- Restauración de bases de datos en SQL Server.
- Manejo de archivos de respaldo `.bak`.
- Configuración de rutas de archivos de base de datos.
- Uso de comandos T-SQL.
- Validación de entornos de bases de datos.

---

## 📈 Resultado

Al finalizar el proyecto logré restaurar correctamente la base de datos AdventureWorks2022, dejando el entorno listo para el desarrollo de consultas SQL y proyectos de análisis de datos.

---

## 👨‍💻 Autor

RobertScience  
Data Analytics & Engineering Solutions