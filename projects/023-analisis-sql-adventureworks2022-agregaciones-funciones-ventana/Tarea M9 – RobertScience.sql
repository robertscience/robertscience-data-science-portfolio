USE AdventureWorks2022;
GO

/* =========================================
1) GROUP BY – Total de ventas por producto
========================================= */

SELECT 
    ProductID,
    SUM(OrderQty) AS TotalQuantity,
    SUM(LineTotal) AS TotalSales
FROM Sales.SalesOrderDetail
GROUP BY ProductID;


/* =========================================
2) GROUP BY + HAVING – Productos con más de 50 ventas
========================================= */

SELECT 
    ProductID,
    SUM(OrderQty) AS TotalQuantity
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(OrderQty) > 50;


/* =========================================
3) OVER PARTITION BY – Total por orden
========================================= */

SELECT 
    SalesOrderID,
    ProductID,
    LineTotal,
    SUM(LineTotal) OVER (PARTITION BY SalesOrderID) AS TotalOrderValue
FROM Sales.SalesOrderDetail;


/* =========================================
4) ROW_NUMBER – Numeración por orden
========================================= */

SELECT 
    SalesOrderID,
    SalesOrderDetailID,
    ProductID,
    LineTotal,
    ROW_NUMBER() OVER (
        PARTITION BY SalesOrderID 
        ORDER BY SalesOrderDetailID
    ) AS RowNum
FROM Sales.SalesOrderDetail;


/* =========================================
5) RANK – Ranking por orden (con empates)
========================================= */

SELECT 
    SalesOrderID,
    ProductID,
    LineTotal,
    RANK() OVER (
        PARTITION BY SalesOrderID 
        ORDER BY LineTotal DESC
    ) AS RankPosition
FROM Sales.SalesOrderDetail;


/* =========================================
6) DENSE_RANK – Ranking denso
========================================= */

SELECT 
    SalesOrderID,
    ProductID,
    LineTotal,
    DENSE_RANK() OVER (
        PARTITION BY SalesOrderID 
        ORDER BY LineTotal DESC
    ) AS DenseRankPosition
FROM Sales.SalesOrderDetail;


/* =========================================
7) HAVING + ORDER BY – Ventas > 5000
========================================= */

SELECT 
    ProductID,
    SUM(LineTotal) AS TotalSales
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) > 5000
ORDER BY TotalSales DESC;