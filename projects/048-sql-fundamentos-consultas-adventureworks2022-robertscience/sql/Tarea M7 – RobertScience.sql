USE AdventureWorks2022;
GO

/* 
============================================================
RobertScience Data Analytics Consulting
SQL Practice – Data Querying Fundamentals
============================================================
*/

-- =========================
-- SELECT
-- =========================
SELECT TOP 10 *
FROM Person.Person;
GO

-- =========================
-- WHERE
-- =========================
SELECT FirstName, LastName
FROM Person.Person
WHERE FirstName = 'John';
GO

-- =========================
-- ORDER BY
-- =========================
SELECT FirstName, LastName
FROM Person.Person
ORDER BY LastName ASC;
GO

-- =========================
-- BETWEEN
-- =========================
SELECT *
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '2013-01-01' AND '2013-12-31';
GO