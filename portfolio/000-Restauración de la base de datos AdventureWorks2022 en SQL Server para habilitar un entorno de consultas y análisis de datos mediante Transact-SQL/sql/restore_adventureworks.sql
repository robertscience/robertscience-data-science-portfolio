USE master;
GO

RESTORE DATABASE AdventureWorks2022
FROM DISK = '/var/opt/mssql/AdventureWorks2022.bak'
WITH
    MOVE 'AdventureWorks2022' TO '/var/opt/mssql/data/AdventureWorks2022.mdf',
    MOVE 'AdventureWorks2022_log' TO '/var/opt/mssql/data/AdventureWorks2022_log.ldf',
    REPLACE;
GO 

SELECT name
FROM sys.databases; ALTER

USE AdventureWorks2022;
GO

SELECT COUNT(*) FROM Person.Person;

SELECT name, state_desc 
FROM sys.databases
WHERE name = 'AdventureWorks2022';


