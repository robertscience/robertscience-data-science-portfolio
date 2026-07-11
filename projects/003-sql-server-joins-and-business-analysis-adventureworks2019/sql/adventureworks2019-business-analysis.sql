/*============================================================================
  PROYECTO      : Tarea M6 – SQL para Análisis de Datos
  CLIENTE       : Proyecto Académico – EBAC
  CONSULTORA    : RobertScience
  SITIO WEB     : https://robertscience.online/
  FECHA         : 2026
  DESCRIPCIÓN   : Script de consultas SQL desarrollado como entregable
                  profesional para análisis de datos sobre la base
                  AdventureWorks2019.
============================================================================*/

USE AdventureWorks2019;
GO

/*===========================================================================
  EJERCICIO 1
  Obtención de empleados con nombre, puesto y fecha de nacimiento.
  Se utiliza la llave común BusinessEntityID.
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
  Relación entre clientes y personas para obtener información básica
  de clientes registrados.
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
  Vendedores con cuotas y bonos.
  Uso de COALESCE para ordenar colocando primero los NULL.
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
  Clientes y productos adquiridos.
  Integración de cinco tablas.
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
  Productos y órdenes, incluyendo productos sin ventas.
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
  Productos que no han tenido ninguna orden.
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
  Vendedores y órdenes generadas, incluyendo vendedores sin ventas.
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
  Productos talla XL con descuento dinámico según oferta vigente.
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
  Productos mostrando color o N/A si no existe información.
===========================================================================*/
SELECT  
    Name AS ProductName,
    COALESCE(Color, 'N/A') AS ProductColor
FROM Production.Product;
GO


/*===========================================================================
  EJERCICIO 11
  Clasificación ejecutiva de empleados por nivel organizacional.
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
  Creación de tabla paralela de departamentos y consolidación.
===========================================================================*/

-- Creación de nueva tabla
CREATE TABLE HumanResources.Departamentos (
    DepartmentID SMALLINT NOT NULL,
    Name dbo.Name NOT NULL,
    GroupName dbo.Name NOT NULL,
    ModifiedDate DATETIME NOT NULL
);
GO

-- Inserción del nuevo departamento
INSERT INTO HumanResources.Departamentos
VALUES (
    999,
    'Executive Strategy',
    'Executive General and Administration',
    '2023-01-01'
);
GO

-- Consulta unificada de departamentos
SELECT DepartmentID, Name, GroupName, ModifiedDate
FROM HumanResources.Department
UNION ALL
SELECT DepartmentID, Name, GroupName, ModifiedDate
FROM HumanResources.Departamentos;
GO

SELECT DB_NAME() AS BaseDeDatosActual;


