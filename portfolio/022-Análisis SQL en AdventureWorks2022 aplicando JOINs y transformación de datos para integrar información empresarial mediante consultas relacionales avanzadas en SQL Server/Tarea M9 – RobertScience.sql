USE AdventureWorks2022;
GO

/* =========================================
1) INNER JOIN – Empleados y nombres (CORREGIDO)
========================================= */

SELECT 
    p.FirstName,
    p.LastName,
    e.JobTitle
FROM HumanResources.Employee e
INNER JOIN Person.Person p
    ON e.BusinessEntityID = p.BusinessEntityID;

/* =========================================
2) LEFT JOIN – Clientes (todos incluidos)
========================================= */

SELECT 
    p.FirstName,
    p.LastName
FROM Sales.Customer c
LEFT JOIN Person.Person p
    ON c.PersonID = p.BusinessEntityID;


/* =========================================
3) RIGHT JOIN – Órdenes y clientes
========================================= */

SELECT 
    soh.SalesOrderID,
    c.CustomerID
FROM Sales.Customer c
RIGHT JOIN Sales.SalesOrderHeader soh
    ON c.CustomerID = soh.CustomerID;


/* =========================================
4) FULL OUTER JOIN – Productos y reseñas
========================================= */

SELECT 
    p.Name AS ProductName,
    pr.Comments
FROM Production.Product p
FULL OUTER JOIN Production.ProductReview pr
    ON p.ProductID = pr.ProductID;


/* =========================================
5) CROSS JOIN – Productos y categorías
========================================= */

SELECT 
    p.Name AS ProductName,
    pc.Name AS CategoryName
FROM Production.Product p
CROSS JOIN Production.ProductCategory pc;


/* =========================================
6) UNION vs UNION ALL
========================================= */

-- UNION (elimina duplicados)
SELECT Name FROM Production.Product
UNION
SELECT Name FROM Production.ProductModel;

-- UNION ALL (incluye duplicados)
SELECT Name FROM Production.Product
UNION ALL
SELECT Name FROM Production.ProductModel;


/* =========================================
7) CASE + COALESCE – Clasificación (CORREGIDO)
========================================= */

SELECT 
    BusinessEntityID,
    COALESCE(JobTitle, 'No Title') AS JobTitle,
    CASE 
        WHEN JobTitle LIKE '%Manager%' THEN 'Manager'
        ELSE 'Non-Manager'
    END AS Classification
FROM HumanResources.Employee;


/* =========================================
8) ISNULL – SalesPerson cuota (AJUSTADO PRO)
========================================= */

SELECT 
    BusinessEntityID,
    SalesQuota,
    ISNULL(CAST(SalesQuota AS VARCHAR), 'No Quota') AS QuotaText
FROM Sales.SalesPerson;