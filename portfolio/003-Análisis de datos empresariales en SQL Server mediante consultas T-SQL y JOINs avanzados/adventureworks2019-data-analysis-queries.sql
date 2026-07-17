/*============================================================================
  PROYECTO      : Tarea M6 – SQL para Análisis de Datos
  CLIENTE       : Proyecto Académico – EBAC
  CONSULTORA    : RobertScience Data Analytics Consulting
  SITIO WEB     : https://robertscience.online/
  FECHA         : 2026

  DESCRIPCIÓN:
  Script profesional de consultas SQL desarrollado para análisis de datos
  utilizando la base AdventureWorks2019 de Microsoft SQL Server.

  El proyecto implementa técnicas de análisis relacional mediante consultas
  T-SQL, integración de múltiples entidades, transformación de información,
  manejo de valores nulos y generación de métricas derivadas.

  TECNOLOGÍAS:
  - SQL Server
  - T-SQL
  - AdventureWorks2019
============================================================================*/


USE AdventureWorks2019;
GO


/*===========================================================================
  EJERCICIO 1

  Obtención de información del personal de la organización.

  Objetivo:
  Integrar información de empleados con datos personales mediante la llave
  BusinessEntityID.

  Técnicas utilizadas:
  - INNER JOIN
  - Relación entre esquemas HumanResources y Person
===========================================================================*/

SELECT  
    p.FirstName,
    p.LastName,
    e.JobTitle,
    e.BirthDate
FROM HumanResources.Employee AS e
INNER JOIN Person.Person AS p
    ON e.BusinessEntityID = p.BusinessEntityID;
GO



/*===========================================================================
  EJERCICIO 2

  Consulta de clientes registrados dentro del sistema comercial.

  Objetivo:
  Relacionar clientes con información personal para obtener una vista
  descriptiva del catálogo de clientes.

  Técnicas utilizadas:
  - INNER JOIN
===========================================================================*/

SELECT  
    c.CustomerID,
    p.FirstName,
    p.LastName,
    p.EmailPromotion
FROM Sales.Customer AS c
INNER JOIN Person.Person AS p
    ON c.PersonID = p.BusinessEntityID;
GO



/*===========================================================================
  EJERCICIO 3

  Integración de clientes con órdenes de venta.

  Objetivo:
  Obtener información transaccional relacionando clientes, personas
  y operaciones comerciales.

  Técnicas utilizadas:
  - Múltiples INNER JOIN
  - Integración de modelo cliente-venta
===========================================================================*/

SELECT  
    c.CustomerID,
    p.FirstName,
    p.LastName,
    soh.SalesOrderID,
    soh.OrderDate,
    soh.TotalDue
FROM Sales.Customer AS c
INNER JOIN Person.Person AS p
    ON c.PersonID = p.BusinessEntityID
INNER JOIN Sales.SalesOrderHeader AS soh
    ON c.CustomerID = soh.CustomerID;
GO



/*===========================================================================
  EJERCICIO 4

  Análisis de vendedores mediante cuotas comerciales y bonos.

  Objetivo:
  Evaluar información de desempeño comercial aplicando transformación
  de valores monetarios.

  Técnicas utilizadas:
  - INNER JOIN
  - COALESCE para tratamiento de valores NULL
  - FORMAT para presentación financiera
===========================================================================*/

SELECT  
    per.FirstName,
    per.LastName,
    sp.SalesQuota,
    sp.Bonus,
    FORMAT(sp.SalesQuota, 'C') AS SalesQuotaCurrency,
    FORMAT(sp.Bonus, 'C') AS BonusCurrency
FROM Sales.SalesPerson AS sp
INNER JOIN Person.Person AS per
    ON sp.BusinessEntityID = per.BusinessEntityID
ORDER BY COALESCE(sp.SalesQuota, -1) DESC;
GO



/*===========================================================================
  EJERCICIO 5

  Análisis de clientes y productos adquiridos.

  Objetivo:
  Integrar información comercial mediante la relación de cinco entidades
  del modelo transaccional.

  Técnicas utilizadas:
  - Múltiples INNER JOIN
  - Integración cliente-producto-venta
===========================================================================*/

SELECT  
    per.FirstName,
    per.LastName,
    pr.Name AS ProductName
FROM Sales.Customer AS c
INNER JOIN Person.Person AS per
    ON c.PersonID = per.BusinessEntityID
INNER JOIN Sales.SalesOrderHeader AS soh
    ON c.CustomerID = soh.CustomerID
INNER JOIN Sales.SalesOrderDetail AS sod
    ON soh.SalesOrderID = sod.SalesOrderID
INNER JOIN Production.Product AS pr
    ON sod.ProductID = pr.ProductID
ORDER BY per.FirstName, per.LastName;
GO



/*===========================================================================
  EJERCICIO 6

  Identificación de productos con y sin ventas asociadas.

  Objetivo:
  Mantener todos los productos del catálogo incluyendo aquellos sin registros
  comerciales.

  Técnica utilizada:
  - LEFT JOIN
===========================================================================*/

SELECT  
    pr.ProductID,
    pr.Name AS ProductName,
    sod.SalesOrderID
FROM Production.Product AS pr
LEFT JOIN Sales.SalesOrderDetail AS sod
    ON pr.ProductID = sod.ProductID
ORDER BY sod.SalesOrderID, pr.Name;
GO



/*===========================================================================
  EJERCICIO 7

  Identificación de productos sin historial de órdenes.

  Objetivo:
  Detectar productos existentes en catálogo que no presentan movimientos.

  Técnica utilizada:
  - LEFT JOIN con filtrado NULL
===========================================================================*/

SELECT  
    pr.ProductID,
    pr.Name AS ProductName
FROM Production.Product AS pr
LEFT JOIN Sales.SalesOrderDetail AS sod
    ON pr.ProductID = sod.ProductID
WHERE sod.SalesOrderID IS NULL
ORDER BY pr.Name;
GO



/*===========================================================================
  EJERCICIO 8

  Relación entre vendedores y órdenes generadas.

  Objetivo:
  Analizar desempeño comercial incluyendo vendedores sin movimientos.

  Técnicas utilizadas:
  - INNER JOIN
  - LEFT JOIN
===========================================================================*/

SELECT  
    per.BusinessEntityID,
    per.FirstName + ' ' + per.LastName AS SalesPersonName,
    soh.SalesOrderID,
    soh.TotalDue
FROM Sales.SalesPerson AS sp
INNER JOIN Person.Person AS per
    ON sp.BusinessEntityID = per.BusinessEntityID
LEFT JOIN Sales.SalesOrderHeader AS soh
    ON sp.BusinessEntityID = soh.SalesPersonID
ORDER BY soh.TotalDue DESC;
GO



/*===========================================================================
  EJERCICIO 9

  Cálculo dinámico de precios con promociones comerciales.

  Objetivo:
  Aplicar descuentos vigentes sobre productos específicos.

  Técnicas utilizadas:
  - CROSS APPLY
  - Cálculo de métricas derivadas
===========================================================================*/

SELECT  
    pr.Name AS ProductName,
    pr.Size,
    so.DiscountPct,
    pr.ListPrice,
    pr.ListPrice * (1 - so.DiscountPct) AS FinalPrice
FROM Production.Product AS pr
CROSS APPLY (
    SELECT TOP 1 DiscountPct
    FROM Sales.SpecialOffer
    WHERE Category = 'Customer'
      AND Type = 'Excess Inventory'
) AS so
WHERE pr.Size = 'XL';
GO



/*===========================================================================
  EJERCICIO 10

  Normalización de información de productos.

  Objetivo:
  Reemplazar valores NULL para mejorar interpretación del análisis.

  Técnica utilizada:
  - COALESCE
===========================================================================*/

SELECT  
    Name AS ProductName,
    COALESCE(Color, 'N/A') AS ProductColor
FROM Production.Product;
GO



/*===========================================================================
  EJERCICIO 11

  Clasificación organizacional de empleados.

  Objetivo:
  Crear categorías jerárquicas mediante reglas de negocio.

  Técnica utilizada:
  - CASE WHEN
===========================================================================*/

SELECT  
    p.FirstName,
    p.LastName,
    e.JobTitle,
    e.OrganizationLevel,
    CASE 
        WHEN e.OrganizationLevel = 1 THEN 'Chief Level'
        WHEN e.OrganizationLevel = 2 THEN 'Management Level'
        WHEN e.OrganizationLevel = 3 THEN 'Ops Level'
        WHEN e.OrganizationLevel = 4 THEN 'Staff Level'
        ELSE 'N/A'
    END AS EmployeeCategory
FROM HumanResources.Employee AS e
INNER JOIN Person.Person AS p
    ON e.BusinessEntityID = p.BusinessEntityID;
GO



/*===========================================================================
  EJERCICIO 12

  Creación de tabla auxiliar analítica y consolidación de departamentos.

  Objetivo:
  Crear una estructura adicional para análisis sin modificar los esquemas
  originales de AdventureWorks2019.

  Técnicas utilizadas:
  - CREATE TABLE
  - INSERT
  - UNION ALL
===========================================================================*/


CREATE TABLE dbo.Departamentos_Analisis (
    DepartmentID SMALLINT NOT NULL,
    Name dbo.Name NOT NULL,
    GroupName dbo.Name NOT NULL,
    ModifiedDate DATETIME NOT NULL
);
GO


INSERT INTO dbo.Departamentos_Analisis
VALUES (
    999,
    'Executive Strategy',
    'Executive General and Administration',
    '2023-01-01'
);
GO



SELECT 
    DepartmentID,
    Name,
    GroupName,
    ModifiedDate
FROM HumanResources.Department

UNION ALL

SELECT 
    DepartmentID,
    Name,
    GroupName,
    ModifiedDate
FROM dbo.Departamentos_Analisis;
GO



/*===========================================================================
  VALIDACIÓN FINAL

  Confirmación de la base de datos utilizada durante la ejecución.
===========================================================================*/

SELECT DB_NAME() AS BaseDeDatosActual;
GO