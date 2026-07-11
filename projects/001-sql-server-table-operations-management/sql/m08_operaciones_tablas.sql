USE AdventureWorks2022;
GO

-- ====================================================
-- Paso 2: Creación de la tabla Ventas
-- Descripción: Tabla para almacenar órdenes de venta
-- ====================================================
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

SELECT name
FROM sys.tables
WHERE name = 'Ventas';
GO 

-- ====================================================
-- Paso 3: Inserción de órdenes de ejemplo en la tabla Ventas
-- ====================================================
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
(10001, '2024-01-10 09:15:00', '2024-01-15', 'Completada', 'Juan Pérez',
 'Av. Reforma 123, CDMX', 'S', 'Tarjeta de Crédito', 20565.62,
 'Entrega en horario laboral'),

(10002, '2024-01-12 14:30:00', '2024-01-18', 'En Proceso', 'María López',
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

SELECT *
FROM dbo.Ventas;
GO 

-- ====================================================
-- Paso 4: Cambiar el nombre de la tabla Ventas a Ordenes
-- ====================================================
EXEC sp_rename 'dbo.Ventas', 'Ordenes';
GO 

SELECT *
FROM dbo.Ordenes;
GO 

SELECT name
FROM sys.tables
WHERE name IN ('Ventas', 'Ordenes');
GO

EXEC sp_rename 'dbo.Ventas', 'Ordenes';
GO 

SELECT *
FROM dbo.Ordenes;
GO

-- ====================================================
-- Paso 5: Agregar columna FechaEnvio a la tabla Ordenes
-- ====================================================
ALTER TABLE dbo.Ordenes
ADD FechaEnvio DATE;
GO 

SELECT *
FROM dbo.Ordenes;
GO

-- ====================================================
-- Paso 6: Cambiar nombre de columna CompraOnline
--         a BanderaCompraOnline
-- ====================================================
EXEC sp_rename 
    'dbo.Ordenes.CompraOnline',
    'BanderaCompraOnline',
    'COLUMN';
GO

SELECT *
FROM dbo.Ordenes;
GO

-- ====================================================
-- Paso 7: Creación de la tabla Prueba
-- ====================================================
CREATE TABLE dbo.Prueba (
    ID INT IDENTITY(1,1) PRIMARY KEY
);
GO

-- ====================================================
-- Paso 8: Inserción de registros en la tabla Prueba
-- ====================================================
INSERT INTO dbo.Prueba DEFAULT VALUES;
INSERT INTO dbo.Prueba DEFAULT VALUES;
INSERT INTO dbo.Prueba DEFAULT VALUES;
INSERT INTO dbo.Prueba DEFAULT VALUES;
INSERT INTO dbo.Prueba DEFAULT VALUES;
GO

SELECT *
FROM dbo.Prueba;
GO

-- ====================================================
-- Paso 9: TRUNCATE TABLE sobre Prueba
-- ====================================================
TRUNCATE TABLE dbo.Prueba;
GO

SELECT *
FROM dbo.Prueba;
GO

-- ====================================================
-- Paso 10: DROP TABLE sobre Prueba
-- ====================================================
DROP TABLE dbo.Prueba;
GO

-- ====================================================
-- Paso 11: Verificación de órdenes antes del DELETE
-- ====================================================
SELECT *
FROM dbo.Ordenes;
GO

-- ====================================================
-- Paso 12: DELETE de órdenes canceladas
-- ====================================================
DELETE
FROM dbo.Ordenes
WHERE EstatusOrden = 'Cancelada';
GO

-- ====================================================
-- Paso 13: Verificación posterior al DELETE
-- ====================================================
SELECT *
FROM dbo.Ordenes;
GO


















