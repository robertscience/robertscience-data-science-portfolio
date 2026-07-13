USE master;
GO

IF DB_ID('dvdrental') IS NOT NULL
BEGIN
    ALTER DATABASE dvdrental SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE dvdrental;
END
GO

RESTORE DATABASE dvdrental
FROM DISK = 'D:\Documentos\Ebac\Finales\Avance de Proyecto parte 4\dvdrental.bak'
WITH 
    MOVE 'dvdrental' TO 'D:\Documentos\Ebac\Finales\Avance de Proyecto parte 4\dvdrental.mdf',
    MOVE 'dvdrental_log' TO 'D:\Documentos\Ebac\Finales\Avance de Proyecto parte 4\dvdrental_log.ldf',
    RECOVERY;
GO