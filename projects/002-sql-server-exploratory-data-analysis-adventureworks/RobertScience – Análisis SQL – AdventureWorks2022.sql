/*======================================================================
 RobertScience
 Data Analytics & Engineering

 Proyecto:
 Análisis Exploratorio de Datos con SQL Server
 Base de datos: AdventureWorks2022

 Cliente:
 (Ejercicio demostrativo – Portafolio de Consultoría)

 Fecha:
 2026-01-02

 Contacto:
 https://robertscience.online/

 Descripción:
 Este script contiene un conjunto de consultas SQL diseñadas para
 demostrar capacidades de análisis, filtrado y ordenamiento de datos
 sobre una base de datos empresarial estándar (AdventureWorks2022).

 El objetivo es validar estructura de datos, comprender entidades clave
 del negocio y preparar información para posteriores fases analíticas
 y de visualización.
======================================================================*/

-- Establecer contexto de la base de datos
USE AdventureWorks2022;
GO

/*----------------------------------------------------------------------
 Consulta 1
 Descripción:
 Extracción completa de la entidad Person.Person para análisis
 demográfico y validación de registros maestros.
----------------------------------------------------------------------*/
SELECT *
FROM Person.Person;
GO

/*----------------------------------------------------------------------
 Consulta 2
 Descripción:
 Identificación de empleados con el rol específico de
 'Marketing Specialist', útil para análisis organizacional
 y segmentación de recursos humanos.
----------------------------------------------------------------------*/
SELECT *
FROM HumanResources.Employee
WHERE JobTitle = 'Marketing Specialist';
GO

/*----------------------------------------------------------------------
 Consulta 3
 Descripción:
 Ordenamiento de empleados por fecha de contratación en orden
 descendente, permitiendo analizar tendencias recientes de
 incorporación de talento.
----------------------------------------------------------------------*/
SELECT *
FROM HumanResources.Employee
ORDER BY HireDate DESC;
GO

/*----------------------------------------------------------------------
 Consulta 4
 Descripción:
 Selección de productos cuyo precio de lista se encuentra dentro
 de un rango comercial específico (20 a 100), relevante para
 análisis de portafolio y estrategia de precios.
----------------------------------------------------------------------*/
SELECT *
FROM Production.Product
WHERE ListPrice BETWEEN 20 AND 100;
GO
