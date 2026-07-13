-- ========================================
-- Tarea M11 – RobertScience
-- ========================================

-- Usar la base de datos AdventureWorks2022
USE AdventureWorks2022;
GO

/* =========================================
Ejercicio 1: Productos que han sido ordenados
========================================= */
SELECT 
    ProductID,
        Name
        FROM Production.Product
        WHERE ProductID IN (
            SELECT ProductID
                FROM Sales.SalesOrderDetail
                )
                ORDER BY Name ASC;
                GO

                /* =========================================
                Ejercicio 2: Listado de empleados con su departamento actual
                ========================================= */
                SELECT 
                    e.BusinessEntityID,
                        p.FirstName + ' ' + p.LastName AS NombreEmpleado,
                            d.Name AS NombreDepartamento
                            FROM HumanResources.Employee e
                            INNER JOIN HumanResources.EmployeeDepartmentHistory edh
                                ON e.BusinessEntityID = edh.BusinessEntityID
                                INNER JOIN HumanResources.Department d
                                    ON edh.DepartmentID = d.DepartmentID
                                    INNER JOIN Person.Person p
                                        ON e.BusinessEntityID = p.BusinessEntityID
                                        WHERE edh.EndDate IS NULL
                                        ORDER BY NombreEmpleado ASC;
                                        GO

                                        /* =========================================
                                        Ejercicio 3: Listado de empleados con CTE
                                        ========================================= */
                                        WITH EmpleadosCTE AS (
                                            SELECT 
                                                    e.BusinessEntityID,
                                                            p.FirstName + ' ' + p.LastName AS NombreEmpleado,
                                                                    d.Name AS NombreDepartamento,
                                                                            edh.EndDate
                                                                                FROM HumanResources.Employee e
                                                                                    INNER JOIN HumanResources.EmployeeDepartmentHistory edh
                                                                                            ON e.BusinessEntityID = edh.BusinessEntityID
                                                                                                INNER JOIN HumanResources.Department d
                                                                                                        ON edh.DepartmentID = d.DepartmentID
                                                                                                            INNER JOIN Person.Person p
                                                                                                                    ON e.BusinessEntityID = p.BusinessEntityID
                                                                                                                    )
                                                                                                                    SELECT BusinessEntityID, NombreEmpleado, NombreDepartamento
                                                                                                                    FROM EmpleadosCTE
                                                                                                                    WHERE EndDate IS NULL
                                                                                                                    ORDER BY NombreEmpleado ASC;
                                                                                                                    GO

                                                                                                                    /* =========================================
                                                                                                                    Ejercicio 4: Tablas temporales para productos ordenados
                                                                                                                    ========================================= */
                                                                                                                    -- Tabla temporal local
                                                                                                                    CREATE TABLE #ProductosOrdenadosLocal (
                                                                                                                        ProductID INT,
                                                                                                                            Name NVARCHAR(50)
                                                                                                                            );

                                                                                                                            INSERT INTO #ProductosOrdenadosLocal (ProductID, Name)
                                                                                                                            SELECT ProductID, Name
                                                                                                                            FROM Production.Product
                                                                                                                            WHERE ProductID IN (SELECT ProductID FROM Sales.SalesOrderDetail);

                                                                                                                            -- Tabla temporal global
                                                                                                                            CREATE TABLE ##ProductosOrdenadosGlobal (
                                                                                                                                ProductID INT,
                                                                                                                                    Name NVARCHAR(50)
                                                                                                                                    );

                                                                                                                                    INSERT INTO ##ProductosOrdenadosGlobal (ProductID, Name)
                                                                                                                                    SELECT ProductID, Name
                                                                                                                                    FROM Production.Product
                                                                                                                                    WHERE ProductID IN (SELECT ProductID FROM Sales.SalesOrderDetail);

                                                                                                                                    GO

                                                                                                                                    /* =========================================
                                                                                                                                    Ejercicio 5: Números de orden y compra para el año 2011
                                                                                                                                    ========================================= */
                                                                                                                                    SELECT 
                                                                                                                                        SalesOrderNumber,
                                                                                                                                            PurchaseOrderNumber
                                                                                                                                            FROM Sales.SalesOrderHeader
                                                                                                                                            WHERE YEAR(OrderDate) = 2011
                                                                                                                                            ORDER BY SalesOrderNumber ASC;
                                                                                                                                            GO

                                                                                                                                            /* =========================================
                                                                                                                                            Ejercicio 6: Números de orden y compra sin los 2 primeros caracteres
                                                                                                                                            ========================================= */
                                                                                                                                            SELECT 
                                                                                                                                                SUBSTRING(SalesOrderNumber, 3, LEN(SalesOrderNumber)) AS NewSalesOrderNumber,
                                                                                                                                                    SUBSTRING(PurchaseOrderNumber, 3, LEN(PurchaseOrderNumber)) AS NewPurchaseOrderNumber
                                                                                                                                                    FROM Sales.SalesOrderHeader
                                                                                                                                                    ORDER BY NewSalesOrderNumber ASC;
                                                                                                                                                    GO