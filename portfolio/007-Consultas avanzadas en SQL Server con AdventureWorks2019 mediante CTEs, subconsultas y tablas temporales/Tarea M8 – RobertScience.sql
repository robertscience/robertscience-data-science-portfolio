/*========================================================
 Tarea M8 – RobertScience
 SQL para análisis de datos
 Base de datos: AdventureWorks2019
========================================================*/
USE AdventureWorks2019;
GO

/*========================================================
1. Productos ordenados (subquery)
========================================================*/
SELECT
    p.ProductID,
    p.Name
FROM Production.Product p
WHERE EXISTS (
    SELECT 1
    FROM Sales.SalesOrderDetail sod
    WHERE sod.ProductID = p.ProductID
)
ORDER BY p.Name ASC;
GO

/*========================================================
2. Productos NO ordenados
========================================================*/
SELECT
    p.ProductID,
    p.Name
FROM Production.Product p
WHERE NOT EXISTS (
    SELECT 1
    FROM Sales.SalesOrderDetail sod
    WHERE sod.ProductID = p.ProductID
)
ORDER BY p.Name ASC;
GO

/*========================================================
3. Empleado + Departamento (subquery correlacionado)
========================================================*/
SELECT
    e.BusinessEntityID,
    CONCAT(p.FirstName, ' ', p.LastName) AS Empleado,
    d.Name AS Departamento,
    edh.StartDate AS FechaInicio
FROM HumanResources.Employee e
JOIN Person.Person p
    ON e.BusinessEntityID = p.BusinessEntityID
JOIN HumanResources.EmployeeDepartmentHistory edh
    ON e.BusinessEntityID = edh.BusinessEntityID
JOIN HumanResources.Department d
    ON edh.DepartmentID = d.DepartmentID
WHERE edh.StartDate = (
    SELECT MAX(edh2.StartDate)
    FROM HumanResources.EmployeeDepartmentHistory edh2
    WHERE edh2.BusinessEntityID = e.BusinessEntityID
);
GO

/*========================================================
4. Misma salida usando tabla derivada
========================================================*/
SELECT
    e.BusinessEntityID,
    CONCAT(p.FirstName, ' ', p.LastName) AS Empleado,
    d.Name AS Departamento,
    edh.StartDate AS FechaInicio
FROM (
    SELECT
        BusinessEntityID,
        MAX(StartDate) AS MaxStartDate
    FROM HumanResources.EmployeeDepartmentHistory
    GROUP BY BusinessEntityID
) ult
JOIN HumanResources.EmployeeDepartmentHistory edh
    ON ult.BusinessEntityID = edh.BusinessEntityID
   AND ult.MaxStartDate = edh.StartDate
JOIN HumanResources.Employee e
    ON e.BusinessEntityID = edh.BusinessEntityID
JOIN Person.Person p
    ON p.BusinessEntityID = e.BusinessEntityID
JOIN HumanResources.Department d
    ON d.DepartmentID = edh.DepartmentID;
GO

/*========================================================
5. Misma salida usando CTE
========================================================*/
WITH UltimoDepto AS (
    SELECT
        BusinessEntityID,
        MAX(StartDate) AS MaxStartDate
    FROM HumanResources.EmployeeDepartmentHistory
    GROUP BY BusinessEntityID
)
SELECT
    e.BusinessEntityID,
    CONCAT(p.FirstName, ' ', p.LastName) AS Empleado,
    d.Name AS Departamento,
    edh.StartDate AS FechaInicio
FROM UltimoDepto u
JOIN HumanResources.EmployeeDepartmentHistory edh
    ON u.BusinessEntityID = edh.BusinessEntityID
   AND u.MaxStartDate = edh.StartDate
JOIN HumanResources.Employee e
    ON e.BusinessEntityID = edh.BusinessEntityID
JOIN Person.Person p
    ON p.BusinessEntityID = e.BusinessEntityID
JOIN HumanResources.Department d
    ON d.DepartmentID = edh.DepartmentID;
GO

/*========================================================
6. Tablas temporales (local y global)
========================================================*/
IF OBJECT_ID('tempdb..#ProductosOrdenados') IS NOT NULL
    DROP TABLE #ProductosOrdenados;

IF OBJECT_ID('tempdb..##ProductosOrdenados') IS NOT NULL
    DROP TABLE ##ProductosOrdenados;

CREATE TABLE #ProductosOrdenados (
    ProductID INT,
    Name NVARCHAR(255)
);

CREATE TABLE ##ProductosOrdenados (
    ProductID INT,
    Name NVARCHAR(255)
);

INSERT INTO #ProductosOrdenados (ProductID, Name)
SELECT
    p.ProductID,
    p.Name
FROM Production.Product p
WHERE EXISTS (
    SELECT 1
    FROM Sales.SalesOrderDetail sod
    WHERE sod.ProductID = p.ProductID
);

INSERT INTO ##ProductosOrdenados (ProductID, Name)
SELECT
    p.ProductID,
    p.Name
FROM Production.Product p
WHERE EXISTS (
    SELECT 1
    FROM Sales.SalesOrderDetail sod
    WHERE sod.ProductID = p.ProductID
);

/*
DIFERENCIAS ENTRE TABLAS TEMPORALES Y TABLAS FÍSICAS

1) Persistencia:
   - Tablas físicas permanecen hasta ser eliminadas manualmente.
   - Tablas temporales locales (#) existen solo durante la sesión activa.
   - Tablas temporales globales (##) existen mientras al menos una sesión las use.

2) Seguridad y permisos:
   - Tablas físicas permiten control detallado de permisos.
   - Tablas temporales heredan los permisos del usuario que las crea.

3) Restricciones:
   - No se recomienda usar claves foráneas complejas en temporales.
   - No pueden pertenecer a esquemas personalizados.

4) Rendimiento:
   - Las temporales residen en tempdb.
   - Uso intensivo puede impactar el desempeño global del servidor.
*/
GO

/*========================================================
7. Consulta combinada órdenes y compras (año 2011)
========================================================*/
SELECT
    SUBSTRING(soh.SalesOrderNumber, 3, LEN(soh.SalesOrderNumber)) 
        AS NewSalesOrderNumber,

    SUBSTRING(CAST(poh.PurchaseOrderID AS VARCHAR(20)), 3, 
              LEN(CAST(poh.PurchaseOrderID AS VARCHAR(20)))) 
        AS NewPurchaseOrderNumber,

    soh.CustomerID,
    CONVERT(DATE, MAX(soh.OrderDate)) AS UltimaFechaOrden
FROM Sales.SalesOrderHeader soh
LEFT JOIN Purchasing.PurchaseOrderHeader poh
    ON soh.SalesPersonID = poh.EmployeeID
WHERE YEAR(soh.OrderDate) = 2011
GROUP BY
    soh.SalesOrderNumber,
    poh.PurchaseOrderID,
    soh.CustomerID
ORDER BY
    CASE 
        WHEN poh.PurchaseOrderID IS NULL THEN 1
        ELSE 0
    END,
    TRY_CONVERT(INT,
        SUBSTRING(CAST(poh.PurchaseOrderID AS VARCHAR(20)), 3, 
                  LEN(CAST(poh.PurchaseOrderID AS VARCHAR(20))))
    ) ASC;
GO
