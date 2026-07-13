/*========================================================
 Tarea M9 – RobertScience
 SQL para análisis de datos
 Base de datos: AdventureWorks2019
========================================================*/
USE AdventureWorks2019;
GO

/*========================================================
1. Vista: Production.vHistoricoCostosProducto
========================================================*/
IF OBJECT_ID('Production.vHistoricoCostosProducto', 'V') IS NOT NULL
    DROP VIEW Production.vHistoricoCostosProducto;
GO

CREATE VIEW Production.vHistoricoCostosProducto
AS
SELECT
    p.ProductID,
    p.Name AS Producto,
    pch.StandardCost,
    pch.StartDate,
    pch.EndDate
FROM Production.ProductCostHistory pch
JOIN Production.Product p
    ON pch.ProductID = p.ProductID;
GO

/*========================================================
2. Vista: HumanResources.vEmpleadosAsignacionDepartamento
========================================================*/
IF OBJECT_ID('HumanResources.vEmpleadosAsignacionDepartamento', 'V') IS NOT NULL
    DROP VIEW HumanResources.vEmpleadosAsignacionDepartamento;
GO

CREATE VIEW HumanResources.vEmpleadosAsignacionDepartamento
AS
SELECT
    e.BusinessEntityID,
    CONCAT(p.FirstName, ' ', p.LastName) AS Empleado,
    d.Name AS Departamento,
    edh.StartDate AS FechaInicio,
    CASE
        WHEN edh.EndDate IS NULL THEN 'Asignación Actual'
        ELSE CONVERT(VARCHAR(20), edh.EndDate, 120)
    END AS FechaFin
FROM HumanResources.Employee e
JOIN Person.Person p
    ON e.BusinessEntityID = p.BusinessEntityID
JOIN HumanResources.EmployeeDepartmentHistory edh
    ON e.BusinessEntityID = edh.BusinessEntityID
JOIN HumanResources.Department d
    ON edh.DepartmentID = d.DepartmentID;
GO

/*========================================================
3. Función TVF: ufnObtenAsignacionEmpleadosDepartamento
========================================================*/
IF OBJECT_ID('dbo.ufnObtenAsignacionEmpleadosDepartamento') IS NOT NULL
    DROP FUNCTION dbo.ufnObtenAsignacionEmpleadosDepartamento;
GO

CREATE FUNCTION dbo.ufnObtenAsignacionEmpleadosDepartamento()
RETURNS TABLE
AS
RETURN
(
    SELECT
        e.BusinessEntityID,
        CONCAT(p.FirstName, ' ', p.LastName) AS Empleado,
        d.Name AS Departamento,
        edh.StartDate AS FechaInicio,
        CASE
            WHEN edh.EndDate IS NULL THEN 'Asignación Actual'
            ELSE CONVERT(VARCHAR(20), edh.EndDate, 120)
        END AS FechaFin
    FROM HumanResources.Employee e
    JOIN Person.Person p
        ON e.BusinessEntityID = p.BusinessEntityID
    JOIN HumanResources.EmployeeDepartmentHistory edh
        ON e.BusinessEntityID = edh.BusinessEntityID
    JOIN HumanResources.Department d
        ON edh.DepartmentID = d.DepartmentID
);
GO

/*========================================================
4. Función TVF con parámetro
========================================================*/
IF OBJECT_ID('dbo.ufnObtenAsignacionEmpleadoPorID') IS NOT NULL
    DROP FUNCTION dbo.ufnObtenAsignacionEmpleadoPorID;
GO

CREATE FUNCTION dbo.ufnObtenAsignacionEmpleadoPorID
(
    @BusinessEntityID INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT
        e.BusinessEntityID,
        CONCAT(p.FirstName, ' ', p.LastName) AS Empleado,
        d.Name AS Departamento,
        edh.StartDate AS FechaInicio,
        CASE
            WHEN edh.EndDate IS NULL THEN 'Asignación Actual'
            ELSE CONVERT(VARCHAR(20), edh.EndDate, 120)
        END AS FechaFin
    FROM HumanResources.Employee e
    JOIN Person.Person p
        ON e.BusinessEntityID = p.BusinessEntityID
    JOIN HumanResources.EmployeeDepartmentHistory edh
        ON e.BusinessEntityID = edh.BusinessEntityID
    JOIN HumanResources.Department d
        ON edh.DepartmentID = d.DepartmentID
    WHERE e.BusinessEntityID = @BusinessEntityID
);
GO

/*========================================================
5. Función: Limpieza de texto
========================================================*/
IF OBJECT_ID('dbo.ufnLimpiaTexto') IS NOT NULL
    DROP FUNCTION dbo.ufnLimpiaTexto;
GO

CREATE FUNCTION dbo.ufnLimpiaTexto
(
    @Texto NVARCHAR(255)
)
RETURNS NVARCHAR(255)
AS
BEGIN
    DECLARE @Resultado NVARCHAR(255);

    SET @Resultado = UPPER(LTRIM(RTRIM(@Texto)));

    -- Reemplazo de acentos
    SET @Resultado = TRANSLATE(@Resultado,
        'ÁÉÍÓÚÜÑ',
        'AEIOUUN');

    -- Eliminar caracteres no alfanuméricos
    WHILE PATINDEX('%[^A-Z0-9 ]%', @Resultado) > 0
        SET @Resultado = STUFF(
            @Resultado,
            PATINDEX('%[^A-Z0-9 ]%', @Resultado),
            1,
            ''
        );

    RETURN @Resultado;
END;
GO

/*========================================================
6. Función: Formato teléfono (##) ####-####
========================================================*/
IF OBJECT_ID('dbo.ufnFormatoTelefono') IS NOT NULL
    DROP FUNCTION dbo.ufnFormatoTelefono;
GO

CREATE FUNCTION dbo.ufnFormatoTelefono
(
    @Telefono VARCHAR(20)
)
RETURNS VARCHAR(20)
AS
BEGIN
    DECLARE @SoloNumeros VARCHAR(20) = '';
    DECLARE @i INT = 1;

    WHILE @i <= LEN(@Telefono)
    BEGIN
        IF SUBSTRING(@Telefono, @i, 1) LIKE '[0-9]'
            SET @SoloNumeros += SUBSTRING(@Telefono, @i, 1);
        SET @i += 1;
    END

    RETURN
        '(' + SUBSTRING(@SoloNumeros,1,2) + ') ' +
        SUBSTRING(@SoloNumeros,3,4) + '-' +
        SUBSTRING(@SoloNumeros,7,4);
END;
GO

/*========================================================
7. Procedimiento almacenado basado en función #4
========================================================*/
IF OBJECT_ID('dbo.uspObtenAsignacionEmpleadoPorID') IS NOT NULL
    DROP PROCEDURE dbo.uspObtenAsignacionEmpleadoPorID;
GO

CREATE PROCEDURE dbo.uspObtenAsignacionEmpleadoPorID
(
    @BusinessEntityID INT
)
AS
BEGIN
    SELECT *
    FROM dbo.ufnObtenAsignacionEmpleadoPorID(@BusinessEntityID);
END;
GO

/*========================================================
8. Procedimiento: uspObtenTotalesCliente
========================================================*/
IF OBJECT_ID('dbo.uspObtenTotalesCliente') IS NOT NULL
    DROP PROCEDURE dbo.uspObtenTotalesCliente;
GO

CREATE PROCEDURE dbo.uspObtenTotalesCliente
AS
BEGIN
    SELECT
        soh.CustomerID,
        YEAR(soh.OrderDate) AS Anio,
        MONTH(soh.OrderDate) AS Mes,
        SUM(soh.TotalDue) AS MontoTotal
    FROM Sales.SalesOrderHeader soh
    GROUP BY
        soh.CustomerID,
        YEAR(soh.OrderDate),
        MONTH(soh.OrderDate)
    ORDER BY
        soh.CustomerID,
        Anio,
        Mes;
END;
GO

/*========================================================
9. PRUEBAS / VALIDACIÓN DE OBJETOS
========================================================*/

-- Vista de costos históricos
SELECT * 
FROM Production.vHistoricoCostosProducto;
GO

-- Vista de asignaciones de empleados
SELECT * 
FROM HumanResources.vEmpleadosAsignacionDepartamento
ORDER BY BusinessEntityID;
GO

-- Función TVF sin parámetro
SELECT * 
FROM dbo.ufnObtenAsignacionEmpleadosDepartamento();
GO

-- Función TVF con parámetro (ejemplo ID = 1)
SELECT * 
FROM dbo.ufnObtenAsignacionEmpleadoPorID(1);
GO

-- Función limpieza de texto
SELECT dbo.ufnLimpiaTexto('  Árbol@# de   Pruebas 123  ') AS TextoLimpio;
GO

-- Función formato teléfono
SELECT dbo.ufnFormatoTelefono('5512345678') AS TelefonoFormateado;
GO

-- Procedimiento por empleado
EXEC dbo.uspObtenAsignacionEmpleadoPorID @BusinessEntityID = 1;
GO

-- Procedimiento totales por cliente
EXEC dbo.uspObtenTotalesCliente;
GO
