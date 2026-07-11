-- ============================================================
-- Proyecto: Modelado de Base de Datos Relacional FinTech
-- Empresa: RobertScience Data Analytics Consulting
--
-- Descripción:
-- Script SQL para creación de una base de datos financiera
-- relacional con clientes, cuentas y transacciones.
--
-- Motor compatible:
-- SQLite
--
-- ============================================================


-- ============================================================
-- CREACIÓN DE TABLAS
-- ============================================================


-- Tabla de clientes
CREATE TABLE IF NOT EXISTS clientes (

    id_cliente INTEGER PRIMARY KEY,

    nombre TEXT NOT NULL,

    edad INTEGER,

    ciudad TEXT,

    fecha_registro DATE

);



-- Tabla de cuentas financieras
CREATE TABLE IF NOT EXISTS cuentas (

    id_cuenta INTEGER PRIMARY KEY,

    id_cliente INTEGER NOT NULL,

    tipo_cuenta TEXT NOT NULL,

    saldo INTEGER,

    FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente)

);



-- Tabla de transacciones financieras
CREATE TABLE IF NOT EXISTS transacciones (

    id_transaccion INTEGER PRIMARY KEY,

    id_cuenta INTEGER NOT NULL,

    fecha DATE,

    monto INTEGER,

    tipo TEXT,

    FOREIGN KEY (id_cuenta)
        REFERENCES cuentas(id_cuenta)

);



-- ============================================================
-- INSERCIÓN DE DATOS DE EJEMPLO
-- ============================================================


INSERT INTO clientes
(
id_cliente,
nombre,
edad,
ciudad,
fecha_registro
)
VALUES

(1,'Ana Lopez',29,'CDMX','2022-01-15'),

(2,'Carlos Perez',40,'Guadalajara','2021-11-20'),

(3,'Luisa Martinez',35,'Monterrey','2023-02-10'),

(4,'Juan Torres',50,'Puebla','2020-07-05'),

(5,'Sofia Ramirez',27,'CDMX','2023-06-01');




INSERT INTO cuentas
(
id_cuenta,
id_cliente,
tipo_cuenta,
saldo
)
VALUES


(101,1,'ahorro',15000),

(102,2,'credito',-5000),

(103,3,'ahorro',22000),

(104,4,'credito',-12000),

(105,5,'ahorro',8000);




INSERT INTO transacciones
(
id_transaccion,
id_cuenta,
fecha,
monto,
tipo
)
VALUES


(1001,101,'2024-01-10',5000,'deposito'),

(1002,101,'2024-02-15',2000,'retiro'),

(1003,102,'2024-01-05',3000,'pago'),

(1004,103,'2024-03-12',7000,'deposito'),

(1005,104,'2024-02-20',4000,'pago'),

(1006,105,'2024-03-01',1000,'retiro');



-- ============================================================
-- CONSULTAS DE VALIDACIÓN
-- ============================================================


-- Visualizar clientes

SELECT *

FROM clientes;



-- Visualizar cuentas

SELECT *

FROM cuentas;



-- Visualizar transacciones

SELECT *

FROM transacciones;



-- ============================================================
-- CONSULTAS ANALÍTICAS
-- ============================================================



-- ============================================================
-- 1. INNER JOIN
-- Obtener clientes con sus movimientos financieros
-- ============================================================


SELECT

    c.nombre,

    cu.tipo_cuenta,

    t.monto,

    t.tipo,

    t.fecha


FROM clientes c


INNER JOIN cuentas cu

ON c.id_cliente = cu.id_cliente


INNER JOIN transacciones t

ON cu.id_cuenta = t.id_cuenta;



-- ============================================================
-- 2. LEFT JOIN
-- Mostrar todos los clientes con actividad financiera
-- ============================================================


SELECT

    c.nombre,

    cu.tipo_cuenta,

    t.monto,

    t.tipo


FROM clientes c


LEFT JOIN cuentas cu

ON c.id_cliente = cu.id_cliente


LEFT JOIN transacciones t

ON cu.id_cuenta = t.id_cuenta;



-- ============================================================
-- 3. Clasificación de cuentas mediante CASE WHEN
-- ============================================================


SELECT


    id_cuenta,

    saldo,


    CASE

        WHEN saldo > 10000 
            THEN 'Saldo alto'


        WHEN saldo BETWEEN 0 AND 10000
            THEN 'Saldo medio'


        WHEN saldo < 0
            THEN 'Saldo negativo'


    END AS clasificacion_saldo


FROM cuentas;



-- ============================================================
-- 4. Clientes con transacciones registradas
-- Semi Join mediante subconsulta
-- ============================================================


SELECT

    nombre


FROM clientes


WHERE id_cliente IN

(

    SELECT id_cliente

    FROM cuentas

    WHERE id_cuenta IN

    (

        SELECT id_cuenta

        FROM transacciones

    )

);



-- ============================================================
-- 5. Clientes sin transacciones
-- Anti Join mediante subconsulta
-- ============================================================


SELECT

    nombre


FROM clientes


WHERE id_cliente NOT IN

(

    SELECT id_cliente

    FROM cuentas

    WHERE id_cuenta IN

    (

        SELECT id_cuenta

        FROM transacciones

    )

);



-- ============================================================
-- 6. Cuentas superiores al saldo promedio
-- ============================================================


SELECT

    id_cuenta,

    saldo


FROM cuentas


WHERE saldo >

(

    SELECT AVG(saldo)

    FROM cuentas

);



-- ============================================================
-- FIN DEL SCRIPT
--
-- RobertScience
-- Data Analytics & Machine Learning Engineering
--
-- Transformando datos en sistemas inteligentes
-- para la toma de decisiones.
--
-- https://robertscience.online
-- ============================================================