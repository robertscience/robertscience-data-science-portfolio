-- ====================================================
-- Tarea M7 – RobertScience [Robert Science S.A. de C.V.]
-- Proyecto de Consultoría: Análisis de Datos con AdventureWorks2022
-- Descripción: Consultas prácticas para extraer información
--              relevante de la base de datos AdventureWorks2022
-- Autor: RobertScience, Data Scientist
-- Fecha: 02/01/2026
-- Contacto: robertscience.ia@gmail.com
-- Web: https://robertscience.online
-- Alcance: Script de consultas SQL para exploración y análisis
--          básico de datos en AdventureWorks2022.

-- ====================================================

-- Se establece la base de datos a utilizar
USE AdventureWorks2022;
GO

-- ====================================================
-- Consulta 1: Selección completa de la tabla Person.Person
-- Objetivo: Mostrar todos los registros de personas
--           para análisis demográfico y de contacto.
-- ====================================================
SELECT *
FROM Person.Person;
GO

-- ====================================================
-- Consulta 2: Empleados con puesto 'Marketing Specialist'
-- Objetivo: Identificar empleados cuyo cargo sea
--           específicamente 'Marketing Specialist'.
-- ====================================================
SELECT *
FROM HumanResources.Employee
WHERE JobTitle = 'Marketing Specialist';
GO

-- ====================================================
-- Consulta 3: Ordenamiento de empleados por fecha de contratación
-- Objetivo: Ordenar los empleados por la fecha de contratación
--           (HireDate) en orden descendente.
-- ====================================================
SELECT *
FROM HumanResources.Employee
ORDER BY HireDate DESC;
GO

-- ====================================================
-- Consulta 4: Productos con precio dentro de un rango específico
-- Objetivo: Identificar productos cuyo precio de lista
--           esté entre 20 y 100 para análisis comercial.
-- ====================================================
SELECT
    ProductID,
    Name,
    ListPrice
FROM Production.Product
WHERE ListPrice BETWEEN 20 AND 100
ORDER BY ListPrice;
GO

-- ====================================================
-- Este documento presenta un conjunto de consultas SQL
-- orientadas a la exploración y extracción de información
-- relevante de la base de datos AdventureWorks2022.
--
-- A lo largo del script se realizaron análisis enfocados en:
-- 1) Revisión completa de la información de personas
--    para análisis demográfico y organizacional.
-- 2) Identificación de empleados con roles específicos
--    dentro de la organización.
-- 3) Ordenamiento de información clave para facilitar
--    análisis comparativos basados en fechas.
-- 4) Identificación de productos dentro de rangos de
--    precios definidos para análisis comercial.
--
-- Las consultas utilizan comandos fundamentales de SQL
-- (SELECT, WHERE, ORDER BY, BETWEEN) aplicados sobre
-- la base de datos AdventureWorks2022 para la
-- exploración y filtrado de información.
--
-- RobertScience
-- Data Science & Analytics Consulting
-- https://robertscience.online
-- ====================================================
