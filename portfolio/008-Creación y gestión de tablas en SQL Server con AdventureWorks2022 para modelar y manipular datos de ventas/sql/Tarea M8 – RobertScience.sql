-- =============================================
-- Tarea M8 – RobertScience
-- Módulo 8: Trabajo con Tablas en SQL Server
-- Base de datos: AdventureWorks2022
-- Autor: RobertScience
-- Empresa: RobertScience Data Analytics & Engineering Solutions
-- Web: https://robertscience.online
-- Fecha: 2026
-- =============================================

USE AdventureWorks2022;
GO

-- =============================================
-- PASO 1: CREACIÓN DE TABLA
-- =============================================
-- En este paso creé la tabla Ventas para simular
-- un sistema de gestión de órdenes de venta.

CREATE TABLE dbo.Ventas (
    NumeroOrden      INT NOT NULL,
    FechaOrden       DATETIME2 NOT NULL,
    FechaEntrega     DATE NULL,
    EstatusOrden     VARCHAR(20) NOT NULL,
    NombreCliente    VARCHAR(100) NOT NULL,
    DomicilioEntrega VARCHAR(200) NOT NULL,
    CompraOnline     CHAR(1) NOT NULL,
    MetodoPago       VARCHAR(50) NOT NULL,
    Subtotal         DECIMAL(10,2) NOT NULL,
    Observaciones    VARCHAR(500) NULL
);
GO

-- Verificación de creación de tabla
SELECT name 
FROM sys.tables 
WHERE name = 'Ventas';
GO

-- =============================================
-- PASO 2: INSERCIÓN DE REGISTROS
-- =============================================
-- Inserté registros simulando distintos estados de órdenes.

INSERT INTO dbo.Ventas (
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
    (10001, '2024-01-10 09:15:00', '2024-01-15', 'Completada', 'Juan López', 
     'Av. Reforma 123, CDMX', 'S', 'Tarjeta de Crédito', 20565.62, 
     'Entrega en horario laboral'),

    (10002, '2024-01-12 14:30:00', '2024-01-18', 'En Proceso', 'María González', 
     'Calle Hidalgo 456, Guadalajara', 'N', 'Efectivo', 8599.99, 
     'Cliente solicita confirmación previa'),

    (10003, '2024-01-15 11:45:00', NULL, 'Pendiente', 'Carlos Ramírez', 
     'Av. Universidad 789, Monterrey', 'S', 'Tarjeta de Débito', 12450.00, 
     'Entrega programada'),

    (10004, '2024-01-18 16:10:00', NULL, 'Cancelada', 'Ana Martínez', 
     'Blvd. del Sol 321, Puebla', 'S', 'Tarjeta de Crédito', 4320.50, 
     'Cancelación solicitada por el cliente'),

    (10005, '2024-01-20 10:05:00', '2024-01-25', 'Completada', 'Luis Hernández', 
     'Av. Central 654, Querétaro', 'N', 'Transferencia', 17890.75, 
     'Entrega sin incidencias');
GO

-- =============================================
-- PASO 3: VALIDACIÓN DE DATOS
-- =============================================
-- Consulto los registros para verificar integridad.

SELECT * FROM dbo.Ventas;
GO

-- =============================================
-- PASO 4: MODIFICACIÓN DE ESTRUCTURA
-- =============================================
-- Renombré la tabla para reflejar mejor su propósito.

EXEC sp_rename 'dbo.Ventas', 'Ordenes';
GO

-- Verificación del cambio
SELECT name 
FROM sys.tables 
WHERE name = 'Ordenes';
GO