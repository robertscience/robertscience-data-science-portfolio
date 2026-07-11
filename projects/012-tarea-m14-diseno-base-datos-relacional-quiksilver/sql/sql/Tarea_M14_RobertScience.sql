/* ============================================================
   EMPRESA:     RobertScience Analytics
   PROYECTO:    Diseño de Base de Datos Relacional Quiksilver
   CLIENTE:     Quiksilver
   ÁREA:        Operaciones Comerciales

   AUTOR:       RobertScience
   FECHA:       Enero 2026

   DESCRIPCIÓN:
   Implementación física de un modelo relacional para la gestión
   comercial de Quiksilver.

   El modelo permite administrar:
   - Clientes
   - Productos
   - Categorías
   - Empleados comerciales
   - Canales de venta
   - Ventas
   - Detalle de ventas

   Aplicando:
   - Llaves primarias
   - Llaves foráneas
   - Integridad referencial
   - Normalización hasta tercera forma normal (3FN)

   ============================================================ */


/* ============================================================
   CREACIÓN DE BASE DE DATOS
   ============================================================ */

CREATE DATABASE Quiksilver_Comercial;
GO

USE Quiksilver_Comercial;
GO


/* ============================================================
   TABLA: Categoria

   Almacena la clasificación de productos comercializados.
   ============================================================ */

CREATE TABLE dbo.Categoria
(
    IdCategoria INT IDENTITY(1,1)
        CONSTRAINT PK_Categoria PRIMARY KEY,

    NombreCategoria VARCHAR(100) NOT NULL,

    Descripcion VARCHAR(300) NULL
);
GO



/* ============================================================
   TABLA: Producto

   Catálogo principal de productos.
   Relación:
   Categoria 1 ---- N Producto
   ============================================================ */

CREATE TABLE dbo.Producto
(
    IdProducto INT IDENTITY(1,1)
        CONSTRAINT PK_Producto PRIMARY KEY,

    NombreProducto VARCHAR(150) NOT NULL,

    Precio DECIMAL(12,2) NOT NULL,

    IdCategoria INT NOT NULL,


    CONSTRAINT FK_Producto_Categoria
        FOREIGN KEY (IdCategoria)
        REFERENCES dbo.Categoria(IdCategoria)
);
GO



/* ============================================================
   TABLA: Cliente

   Información de clientes comerciales.
   ============================================================ */

CREATE TABLE dbo.Cliente
(
    IdCliente INT IDENTITY(1,1)
        CONSTRAINT PK_Cliente PRIMARY KEY,

    Nombre VARCHAR(100) NOT NULL,

    Apellido VARCHAR(100) NOT NULL,

    CorreoElectronico VARCHAR(150)
        CONSTRAINT UQ_Cliente_Correo UNIQUE,

    Telefono VARCHAR(20)
);
GO



/* ============================================================
   TABLA: Empleado

   Personal encargado del proceso comercial.
   ============================================================ */

CREATE TABLE dbo.Empleado
(
    IdEmpleado INT IDENTITY(1,1)
        CONSTRAINT PK_Empleado PRIMARY KEY,

    Nombre VARCHAR(100) NOT NULL,

    Apellido VARCHAR(100) NOT NULL,

    Puesto VARCHAR(100) NOT NULL
);
GO



/* ============================================================
   TABLA: CanalVenta

   Identifica el medio utilizado para realizar la venta.
   ============================================================ */

CREATE TABLE dbo.CanalVenta
(
    IdCanalVenta INT IDENTITY(1,1)
        CONSTRAINT PK_CanalVenta PRIMARY KEY,

    NombreCanal VARCHAR(100) NOT NULL
);
GO



/* ============================================================
   TABLA: Venta

   Cabecera de la transacción comercial.

   Relaciones:
   Cliente 1 ---- N Venta
   Empleado 1 ---- N Venta
   CanalVenta 1 ---- N Venta
   ============================================================ */

CREATE TABLE dbo.Venta
(
    IdVenta INT IDENTITY(1,1)
        CONSTRAINT PK_Venta PRIMARY KEY,

    FechaVenta DATETIME2 NOT NULL
        DEFAULT SYSDATETIME(),

    IdCliente INT NOT NULL,

    IdEmpleado INT NOT NULL,

    IdCanalVenta INT NOT NULL,


    CONSTRAINT FK_Venta_Cliente
        FOREIGN KEY (IdCliente)
        REFERENCES dbo.Cliente(IdCliente),


    CONSTRAINT FK_Venta_Empleado
        FOREIGN KEY (IdEmpleado)
        REFERENCES dbo.Empleado(IdEmpleado),


    CONSTRAINT FK_Venta_CanalVenta
        FOREIGN KEY (IdCanalVenta)
        REFERENCES dbo.CanalVenta(IdCanalVenta)
);
GO



/* ============================================================
   TABLA: DetalleVenta

   Productos asociados a cada venta.

   Relaciones:
   Venta 1 ---- N DetalleVenta
   Producto 1 ---- N DetalleVenta

   ============================================================ */

CREATE TABLE dbo.DetalleVenta
(
    IdDetalleVenta INT IDENTITY(1,1)
        CONSTRAINT PK_DetalleVenta PRIMARY KEY,

    IdVenta INT NOT NULL,

    IdProducto INT NOT NULL,

    Cantidad INT NOT NULL,

    PrecioUnitario DECIMAL(12,2) NOT NULL,


    CONSTRAINT FK_DetalleVenta_Venta
        FOREIGN KEY (IdVenta)
        REFERENCES dbo.Venta(IdVenta),


    CONSTRAINT FK_DetalleVenta_Producto
        FOREIGN KEY (IdProducto)
        REFERENCES dbo.Producto(IdProducto)
);
GO



/* ============================================================
   INSERCIÓN DE DATOS DE EJEMPLO
   ============================================================ */


INSERT INTO dbo.Categoria
(
    NombreCategoria,
    Descripcion
)
VALUES
('Surfwear','Prendas relacionadas con surf'),
('Snowboard','Equipo y ropa para nieve'),
('Outdoor','Productos estilo de vida exterior');
GO



INSERT INTO dbo.Producto
(
    NombreProducto,
    Precio,
    IdCategoria
)
VALUES
('Playera Quiksilver Classic',599.99,1),
('Sudadera Mountain Series',1299.99,3),
('Chaqueta Snow Pro',2499.99,2);
GO



INSERT INTO dbo.Cliente
(
    Nombre,
    Apellido,
    CorreoElectronico,
    Telefono
)
VALUES
('Carlos','Ramirez','carlos@email.com','5512345678'),
('Ana','Martinez','ana@email.com','5587654321');
GO



INSERT INTO dbo.Empleado
(
    Nombre,
    Apellido,
    Puesto
)
VALUES
('Luis','Hernandez','Ejecutivo Comercial'),
('Maria','Gonzalez','Gerente de Ventas');
GO



INSERT INTO dbo.CanalVenta
(
    NombreCanal
)
VALUES
('Tienda Física'),
('Comercio Electrónico'),
('Distribuidor');
GO



INSERT INTO dbo.Venta
(
    IdCliente,
    IdEmpleado,
    IdCanalVenta
)
VALUES
(1,1,2),
(2,2,1);
GO



INSERT INTO dbo.DetalleVenta
(
    IdVenta,
    IdProducto,
    Cantidad,
    PrecioUnitario
)
VALUES
(1,1,2,599.99),
(1,3,1,2499.99),
(2,2,1,1299.99);
GO



/* ============================================================
   VALIDACIÓN DEL MODELO
   ============================================================ */


SELECT * FROM dbo.Categoria;

SELECT * FROM dbo.Producto;

SELECT * FROM dbo.Cliente;

SELECT * FROM dbo.Empleado;

SELECT * FROM dbo.CanalVenta;

SELECT * FROM dbo.Venta;

SELECT * FROM dbo.DetalleVenta;
GO


/* ============================================================
   CONSULTA ANALÍTICA DE EJEMPLO

   Reporte comercial de ventas con cliente,
   producto y canal.
   ============================================================ */


SELECT
    c.Nombre + ' ' + c.Apellido AS Cliente,
    p.NombreProducto,
    dv.Cantidad,
    dv.PrecioUnitario,
    cv.NombreCanal,
    v.FechaVenta
FROM dbo.DetalleVenta dv
JOIN dbo.Venta v
    ON dv.IdVenta = v.IdVenta
JOIN dbo.Cliente c
    ON v.IdCliente = c.IdCliente
JOIN dbo.Producto p
    ON dv.IdProducto = p.IdProducto
JOIN dbo.CanalVenta cv
    ON v.IdCanalVenta = cv.IdCanalVenta;
GO


/* ============================================================
   FIN DEL PROYECTO

   RobertScience Analytics
   Data Analytics & Engineering Solutions
   ============================================================ */