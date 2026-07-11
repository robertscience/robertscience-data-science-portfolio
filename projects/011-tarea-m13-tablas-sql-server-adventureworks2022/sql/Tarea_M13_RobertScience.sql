/* ============================================================
   EMPRESA:     RobertScience Analytics
   
   PROYECTO:    Implementación y Administración de Tablas
                en SQL Server

   MÓDULO:      Tarea M13

   BASE DE DATOS:
                AdventureWorks2022

   AUTOR:
                RobertScience

   FECHA:
                Enero 2026


   DESCRIPCIÓN:

   En este proyecto desarrollé un ejercicio práctico de
   administración de estructuras de datos utilizando SQL Server.

   Implementé la creación de una tabla personalizada para
   almacenar información de órdenes de venta, realicé inserción
   de registros, validación de información y posteriormente
   modifiqué la estructura mediante el renombrado del objeto.

   El objetivo fue aplicar conceptos fundamentales de manejo
   de tablas dentro de un entorno relacional empresarial.


   CLASIFICACIÓN:
   Proyecto académico documentado para portafolio profesional.
   ============================================================ */


USE AdventureWorks2022;
GO


/* ============================================================
   PASO 1
   SELECCIÓN DE BASE DE DATOS

   Establezco AdventureWorks2022 como entorno de trabajo
   para desarrollar la práctica.
   ============================================================ */



/* ============================================================
   PASO 2
   CREACIÓN DE TABLA DE VENTAS

   Creo una tabla personalizada llamada Ventas destinada a
   almacenar información relacionada con órdenes comerciales.

   La estructura incluye:

   - Identificador de orden
   - Fechas de operación
   - Estado de la orden
   - Información del cliente
   - Método de pago
   - Importe económico
   - Observaciones adicionales
   ============================================================ */


CREATE TABLE dbo.Ventas (

    NumeroOrden INT NOT NULL,

    FechaOrden DATETIME2 NOT NULL,

    FechaEntrega DATE NULL,

    EstatusOrden VARCHAR(20) NOT NULL,

    NombreCliente VARCHAR(100) NOT NULL,

    DomicilioEntrega VARCHAR(200) NOT NULL,

    CompraOnline CHAR(1) NOT NULL,

    MetodoPago VARCHAR(50) NOT NULL,

    Subtotal DECIMAL(10,2) NOT NULL,

    Observaciones VARCHAR(500) NULL

);
GO



/* ============================================================
   VALIDACIÓN DE CREACIÓN

   Consulto las tablas existentes para confirmar que
   Ventas fue creada correctamente dentro de la base.
   ============================================================ */


SELECT 
    name AS TablaCreada
FROM sys.tables
WHERE name = 'Ventas';
GO



/* ============================================================
   PASO 3
   INSERCIÓN DE DATOS

   Inserto registros de prueba simulando diferentes escenarios
   comerciales:

   - Órdenes completadas
   - Órdenes en proceso
   - Órdenes pendientes
   - Órdenes canceladas

   Estos datos permiten validar la estructura creada.
   ============================================================ */


INSERT INTO dbo.Ventas
(
    NumeroOrden,
    FechaOrden,
    FechaEntrega,
    EstatusOrden,
    NombreCliente,
    DomicilioEntrega,
    CompraOnline,
    MetodoPago,
    Subtotal,
    Observaciones
)

VALUES

(
10001,
'2024-01-10 09:15:00',
'2024-01-15',
'Completada',
'Juan López',
'Av. Reforma 123, CDMX',
'S',
'Tarjeta de Crédito',
20565.62,
'Entrega en horario laboral'
),


(
10002,
'2024-01-12 14:30:00',
'2024-01-18',
'En Proceso',
'María González',
'Calle Hidalgo 456, Guadalajara',
'N',
'Efectivo',
8599.99,
'Cliente solicita confirmación previa'
),


(
10003,
'2024-01-15 11:45:00',
NULL,
'Pendiente',
'Carlos Ramírez',
'Av. Universidad 789, Monterrey',
'S',
'Tarjeta de Débito',
12450.00,
'Entrega programada'
),


(
10004,
'2024-01-18 16:10:00',
NULL,
'Cancelada',
'Ana Martínez',
'Blvd. del Sol 321, Puebla',
'S',
'Tarjeta de Crédito',
4320.50,
'Cancelación solicitada por el cliente'
),


(
10005,
'2024-01-20 10:05:00',
'2024-01-25',
'Completada',
'Luis Hernández',
'Av. Central 654, Querétaro',
'N',
'Transferencia',
17890.75,
'Entrega sin incidencias'
);

GO



/* ============================================================
   VALIDACIÓN DE DATOS INSERTADOS

   Consulto la información almacenada para verificar
   que los registros fueron cargados correctamente.
   ============================================================ */


SELECT *
FROM dbo.Ventas;
GO



/* ============================================================
   PASO 4
   MODIFICACIÓN DE ESTRUCTURA

   Renombro la tabla Ventas a Ordenes.

   Este procedimiento representa una modificación común
   dentro de la administración de bases de datos cuando
   evoluciona el modelo de información.
   ============================================================ */


EXEC sp_rename 
'dbo.Ventas',
'Ordenes';

GO



/* ============================================================
   VALIDACIÓN FINAL

   Confirmo que la tabla fue renombrada correctamente.
   ============================================================ */


SELECT
    name AS TablaFinal
FROM sys.tables
WHERE name = 'Ordenes';

GO



/* ============================================================
   CONCLUSIÓN

   En esta práctica implementé el ciclo básico de gestión
   de una tabla dentro de SQL Server:

   1. Creación de estructura relacional.
   2. Definición de tipos de datos.
   3. Inserción de información.
   4. Validación de registros.
   5. Modificación del nombre del objeto.

   Este ejercicio fortalece conocimientos fundamentales
   para administración de bases de datos y preparación
   de estructuras utilizadas en proyectos de análisis
   de datos empresariales.


   RobertScience Analytics
   Data Analytics & Engineering Solutions

   https://robertscience.online
   ============================================================ */