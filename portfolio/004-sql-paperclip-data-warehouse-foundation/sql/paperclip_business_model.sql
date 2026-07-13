/* =========================================================
   PROYECTO: Paperclip - Business Data Model
   AUTOR: RobertScience
   OBJETIVO: Creación, carga, validación y seguridad
   ========================================================= */

-- =========================
-- 1. BASE DE DATOS
-- =========================
CREATE DATABASE Paperclip;
GO

USE Paperclip;
GO

-- =========================
-- 2. ESQUEMAS
-- =========================
CREATE SCHEMA RH;
GO

CREATE SCHEMA Ventas;
GO

-- =========================
-- 3. TABLAS
-- =========================

CREATE TABLE RH.Departamentos (
    DepartmentID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Area VARCHAR(100)
);
GO

CREATE TABLE RH.Empleados (
    EmployeeID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    DepartmentID INT,
    Salario DECIMAL(10,2),
    FOREIGN KEY (DepartmentID) REFERENCES RH.Departamentos(DepartmentID)
);
GO

CREATE TABLE Ventas.Clientes (
    ClienteID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Email VARCHAR(100)
);
GO

CREATE TABLE Ventas.Productos (
    ProductoID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Precio DECIMAL(10,2)
);
GO

CREATE TABLE Ventas.Ordenes (
    OrdenID INT PRIMARY KEY,
    ClienteID INT,
    ProductoID INT,
    Cantidad INT,
    Fecha DATE,
    FOREIGN KEY (ClienteID) REFERENCES Ventas.Clientes(ClienteID),
    FOREIGN KEY (ProductoID) REFERENCES Ventas.Productos(ProductoID)
);
GO

-- =========================
-- 4. VALIDACIONES BÁSICAS
-- =========================

SELECT 'Departamentos' AS Tabla, COUNT(*) AS Total FROM RH.Departamentos
UNION ALL
SELECT 'Empleados', COUNT(*) FROM RH.Empleados
UNION ALL
SELECT 'Clientes', COUNT(*) FROM Ventas.Clientes
UNION ALL
SELECT 'Productos', COUNT(*) FROM Ventas.Productos
UNION ALL
SELECT 'Ordenes', COUNT(*) FROM Ventas.Ordenes;
GO

-- =========================
-- 5. SEGURIDAD
-- =========================

CREATE LOGIN UsuarioVentas WITH PASSWORD = 'StrongPass123!';
GO

CREATE USER UsuarioVentas FOR LOGIN UsuarioVentas;
GO

GRANT SELECT ON SCHEMA::Ventas TO UsuarioVentas;
GO