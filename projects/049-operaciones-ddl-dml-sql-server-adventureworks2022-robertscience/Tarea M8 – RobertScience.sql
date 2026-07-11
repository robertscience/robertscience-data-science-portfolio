/*
============================================================
RobertScience Data Analytics Consulting
SQL Table Operations – AdventureWorks2022
============================================================
*/

USE AdventureWorks2022;
GO

PRINT '=== INICIO DE EJECUCIÓN ===';

-- =========================
-- LIMPIEZA INICIAL
-- =========================
PRINT 'Limpieza de tablas existentes';

IF OBJECT_ID('dbo.Ordenes', 'U') IS NOT NULL
    DROP TABLE dbo.Ordenes;

IF OBJECT_ID('dbo.Ventas', 'U') IS NOT NULL
    DROP TABLE dbo.Ventas;
GO

-- =========================
-- 1. CREAR TABLA Ventas
-- =========================
PRINT 'Creando tabla Ventas';

CREATE TABLE dbo.Ventas (
    NumeroOrden INT,
    FechaOrden DATETIME,
    FechaEntrega DATE,
    EstatusOrden VARCHAR(20),
    NombreCliente VARCHAR(100),
    DomicilioEntrega VARCHAR(255),
    CompraOnline CHAR(1),
    MetodoPago VARCHAR(50),
    Subtotal DECIMAL(10,2),
    Observaciones VARCHAR(255)
);
GO

-- Validación
SELECT 'Tabla Ventas creada' AS Estado;
GO

-- =========================
-- 2. INSERTAR DATOS
-- =========================
PRINT 'Insertando datos en Ventas';

INSERT INTO dbo.Ventas VALUES
(1001, GETDATE(), '2022-08-15', 'Pendiente', 'Juan Perez', 'CDMX', 'S', 'Tarjeta de Crédito', 1200.50, 'Entrega entre semana'),
(1002, GETDATE(), '2022-08-16', 'Completada', 'Ana Lopez', 'Guadalajara', 'N', 'Efectivo', 850.00, 'Sin observaciones'),
(1003, GETDATE(), '2022-08-17', 'Cancelada', 'Carlos Ruiz', 'Monterrey', 'S', 'Tarjeta de Débito', 430.75, 'Cliente canceló'),
(1004, GETDATE(), '2022-08-18', 'En Proceso', 'Maria Gomez', 'Puebla', 'S', 'Tarjeta de Crédito', 999.99, 'Entrega urgente'),
(1005, GETDATE(), '2022-08-19', 'Pendiente', 'Luis Torres', 'Toluca', 'N', 'Efectivo', 150.00, 'Pago contra entrega');
GO

SELECT * FROM dbo.Ventas;
GO

-- =========================
-- 3. RENOMBRAR TABLA
-- =========================
PRINT 'Renombrando tabla Ventas a Ordenes';

EXEC sp_rename 'dbo.Ventas', 'Ordenes';
GO

SELECT * FROM dbo.Ordenes;
GO

-- =========================
-- 4. AGREGAR COLUMNA
-- =========================
PRINT 'Agregando columna FechaEnvio';

IF COL_LENGTH('dbo.Ordenes', 'FechaEnvio') IS NULL
BEGIN
    ALTER TABLE dbo.Ordenes
    ADD FechaEnvio DATE;
END
GO

SELECT FechaEnvio FROM dbo.Ordenes;
GO

-- =========================
-- 5. RENOMBRAR COLUMNA
-- =========================
PRINT 'Renombrando columna CompraOnline';

IF COL_LENGTH('dbo.Ordenes', 'CompraOnline') IS NOT NULL
BEGIN
    EXEC sp_rename 'dbo.Ordenes.CompraOnline', 'BanderaCompraOnline', 'COLUMN';
END
GO

SELECT * FROM dbo.Ordenes;
GO

-- =========================
-- 6. TABLA PRUEBA
-- =========================
PRINT 'Creando tabla Prueba';

IF OBJECT_ID('dbo.Prueba', 'U') IS NOT NULL
    DROP TABLE dbo.Prueba;

CREATE TABLE dbo.Prueba (
    ID INT
);
GO

INSERT INTO dbo.Prueba VALUES (1),(2),(3),(4),(5);
GO

SELECT * FROM dbo.Prueba;
GO

-- =========================
-- 7. TRUNCATE
-- =========================
PRINT 'Aplicando TRUNCATE a Prueba';

TRUNCATE TABLE dbo.Prueba;
GO

SELECT * FROM dbo.Prueba;
GO

-- =========================
-- 8. DROP TABLE
-- =========================
PRINT 'Eliminando tabla Prueba';

DROP TABLE dbo.Prueba;
GO

SELECT 'Tabla Prueba eliminada' AS Estado;
GO

-- =========================
-- 9. DELETE CONDICIONAL
-- =========================
PRINT 'Eliminando registros Cancelados';

DELETE FROM dbo.Ordenes
WHERE EstatusOrden = 'Cancelada';
GO

SELECT * FROM dbo.Ordenes;
GO

PRINT '=== FIN DE EJECUCIÓN ===';