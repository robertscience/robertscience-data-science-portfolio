/* ============================================================
   EMPRESA:     RobertScience Analytics
   PROYECTO:    Implementación de Consultas SQL Analíticas
   CLIENTE:     Dirección de Operaciones
   AUTOR:       RobertScience
   FECHA:       16-Ene-2026

   DESCRIPCIÓN:
   Desarrollo de consultas analíticas sobre la base de datos
   AdventureWorks2019 para soporte a procesos de toma de
   decisiones en áreas de Recursos Humanos y Ventas.

   CLASIFICACIÓN:
   Documento interno de trabajo – Uso corporativo.
   ============================================================ */

/* ============================================================
   REQUERIMIENTO 01
   TEMA: Distribución de empleados por puesto

   OBJETIVO DE NEGOCIO:
   Identificar la concentración de colaboradores por rol
   organizacional para optimizar la asignación de recursos
   humanos.
   ============================================================ */

SELECT 
    JobTitle AS Puesto,
    COUNT(*) AS CantidadEmpleados
FROM HumanResources.Employee
GROUP BY JobTitle
ORDER BY CantidadEmpleados DESC;
GO

/* ============================================================
   REQUERIMIENTO 02
   TEMA: Productos con mayor volumen de compra

   OBJETIVO DE NEGOCIO:
   Determinar los productos con mayor rotación comercial
   para optimizar la gestión de inventarios y la estrategia
   de abastecimiento.
   ============================================================ */

SELECT TOP 10
    p.Name AS Producto,
    SUM(sod.OrderQty) AS CantidadTotalVendida
FROM Sales.SalesOrderDetail sod
JOIN Production.Product p
    ON sod.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY CantidadTotalVendida DESC;
GO

/* ============================================================
   REQUERIMIENTO 03
   TEMA: Órdenes con alta diversidad de productos

   OBJETIVO DE NEGOCIO:
   Identificar órdenes que concentran una amplia variedad
   de productos, con fines de análisis de comportamiento
   de compra y planificación logística.
   ============================================================ */

SELECT
    SalesOrderID AS OrdenID,
    COUNT(DISTINCT ProductID) AS ProductosDistintos
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING COUNT(DISTINCT ProductID) > 60
ORDER BY ProductosDistintos DESC;
GO

/* ============================================================
   REQUERIMIENTO 04
   TEMA: Recurrencia de órdenes por cliente y año

   OBJETIVO DE NEGOCIO:
   Detectar clientes con alta frecuencia de compra anual
   para fortalecer estrategias de retención y gestión
   de cuentas clave.
   ============================================================ */

SELECT
    YEAR(soh.OrderDate) AS Anio,
    c.CustomerID,
    p.FirstName + ' ' + p.LastName AS Cliente,
    COUNT(soh.SalesOrderID) AS CantidadOrdenes
FROM Sales.SalesOrderHeader soh
JOIN Sales.Customer c
    ON soh.CustomerID = c.CustomerID
JOIN Person.Person p
    ON c.PersonID = p.BusinessEntityID
GROUP BY
    YEAR(soh.OrderDate),
    c.CustomerID,
    p.FirstName,
    p.LastName
HAVING COUNT(soh.SalesOrderID) > 10
ORDER BY
    Anio DESC,
    Cliente ASC;
GO

/* ============================================================
   REQUERIMIENTO 05
   TEMA: Clientes en países de habla inglesa

   OBJETIVO DE NEGOCIO:
   Analizar la distribución geográfica de clientes en
   mercados de habla inglesa para apoyar decisiones
   de expansión y enfoque comercial.
   ============================================================ */

SELECT
    cr.Name AS Pais,
    COUNT(DISTINCT c.CustomerID) AS CantidadClientes
FROM Sales.Customer c
JOIN Person.Person p
    ON c.PersonID = p.BusinessEntityID
JOIN Person.BusinessEntityAddress bea
    ON p.BusinessEntityID = bea.BusinessEntityID
JOIN Person.Address a
    ON bea.AddressID = a.AddressID
JOIN Person.StateProvince sp
    ON a.StateProvinceID = sp.StateProvinceID
JOIN Person.CountryRegion cr
    ON sp.CountryRegionCode = cr.CountryRegionCode
WHERE cr.Name IN ('United States', 'Canada', 'United Kingdom', 'Australia')
GROUP BY cr.Name
ORDER BY cr.Name;
GO

/* ============================================================
   REQUERIMIENTO 06
   TEMA: Distribución de empleados por puesto

   OBJETIVO DE NEGOCIO:
   Proporcionar visibilidad de la estructura organizacional,
   mostrando cada colaborador junto con el total de empleados
   que comparten su mismo puesto.
   ============================================================ */

SELECT
    p.FirstName + ' ' + p.LastName AS Empleado,
    e.JobTitle AS Puesto,
    COUNT(*) OVER (PARTITION BY e.JobTitle) AS CantidadEnElPuesto
FROM HumanResources.Employee e
JOIN Person.Person p
    ON e.BusinessEntityID = p.BusinessEntityID
ORDER BY Puesto ASC;
GO

/* ============================================================
   REQUERIMIENTO 07
   TEMA: Participación porcentual de órdenes por cliente

   OBJETIVO DE NEGOCIO:
   Analizar la contribución de cada orden al total de
   facturación por cliente, facilitando la evaluación
   de concentración de ingresos y comportamiento de compra.
   ============================================================ */

WITH Ordenes AS (
    SELECT
        c.CustomerID,
        p.FirstName + ' ' + p.LastName AS Cliente,
        soh.SalesOrderID,
        soh.OrderDate,
        SUM(sod.LineTotal) AS MontoOrden
    FROM Sales.SalesOrderHeader soh
    JOIN Sales.SalesOrderDetail sod
        ON soh.SalesOrderID = sod.SalesOrderID
    JOIN Sales.Customer c
        ON soh.CustomerID = c.CustomerID
    JOIN Person.Person p
        ON c.PersonID = p.BusinessEntityID
    GROUP BY
        c.CustomerID,
        p.FirstName,
        p.LastName,
        soh.SalesOrderID,
        soh.OrderDate
),
Totales AS (
    SELECT *,
           SUM(MontoOrden) OVER (PARTITION BY CustomerID) AS TotalCliente
    FROM Ordenes
)
SELECT
    Cliente,
    SalesOrderID AS OrdenID,
    OrderDate AS FechaOrden,
    MontoOrden,
    TotalCliente,
    ROUND((MontoOrden / TotalCliente) * 100.0, 3) AS PorcentajeSobreTotal
FROM Totales
ORDER BY
    Cliente ASC,
    FechaOrden DESC;
GO

/* ============================================================
   REQUERIMIENTO 08
   TEMA: Ranking de órdenes por monto

   OBJETIVO DE NEGOCIO:
   Priorizar las órdenes de cada cliente en función de su
   impacto financiero, para apoyar la gestión comercial
   y el análisis de valor por transacción.
   ============================================================ */

WITH Ordenes AS (
    SELECT
        c.CustomerID,
        p.FirstName + ' ' + p.LastName AS Cliente,
        soh.SalesOrderID,
        SUM(sod.LineTotal) AS MontoOrden
    FROM Sales.SalesOrderHeader soh
    JOIN Sales.SalesOrderDetail sod
        ON soh.SalesOrderID = sod.SalesOrderID
    JOIN Sales.Customer c
        ON soh.CustomerID = c.CustomerID
    JOIN Person.Person p
        ON c.PersonID = p.BusinessEntityID
    GROUP BY
        c.CustomerID,
        p.FirstName,
        p.LastName,
        soh.SalesOrderID
)
SELECT
    Cliente,
    SalesOrderID AS OrdenID,
    MontoOrden,
    RANK() OVER (PARTITION BY CustomerID ORDER BY MontoOrden DESC) AS RankingOrden
FROM Ordenes
ORDER BY
    Cliente ASC,
    RankingOrden ASC;
GO

