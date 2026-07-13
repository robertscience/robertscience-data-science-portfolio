# Análisis SQL de Ventas con Funciones de Agregación y Ventana

## Evolución del Análisis de Datos Empresariales con AdventureWorks2022

**RobertScience Data Analytics Consulting**

---

# 📌 Descripción del Proyecto

En este proyecto continué el análisis de datos empresariales utilizando la base de datos AdventureWorks2022, enfocándome en la generación de métricas comerciales mediante consultas SQL avanzadas.

Después de trabajar previamente con la integración de información, relaciones entre tablas y diferentes tipos de JOIN, en esta etapa profundicé en técnicas analíticas orientadas a la interpretación de datos de ventas.

El objetivo principal fue analizar el comportamiento comercial de los productos mediante funciones de agregación y funciones de ventana, obteniendo indicadores que permiten evaluar volumen de ventas, desempeño por producto y distribución de valores dentro de las órdenes.

Durante el desarrollo trabajé principalmente con la tabla:

```text
Sales.SalesOrderDetail

la cual contiene información detallada de productos vendidos dentro de las órdenes comerciales.

🎯 Objetivo del Proyecto

El objetivo fue construir consultas SQL capaces de transformar registros transaccionales en métricas analíticas utilizando:

Agrupación de información comercial.
Cálculo de totales de unidades vendidas.
Análisis del valor económico generado.
Clasificación de productos dentro de órdenes.
Generación de rankings comerciales.
Identificación de productos con mayor desempeño.

Este proceso representa una etapa fundamental dentro del análisis de datos, ya que permite convertir información operativa en indicadores útiles para la toma de decisiones.

🏗️ Estructura del Proyecto

La estructura original utilizada durante el desarrollo fue:

024-analisis-sql-ventas-adventureworks-funciones-ventana-agregaciones/

│
├── sql/
│   └── Tarea_M10_RobertScience.sql
│
├── capturas/
│   └── Evidencias de ejecución y resultados SQL
│
├── docs/
│   └── Reporte del análisis
│
└── README.md

Nota:

La estructura representa la organización completa del proyecto durante su desarrollo.

En este repositorio de portafolio algunos archivos originales no fueron incluidos debido a su tamaño o características de ejecución local. Los elementos principales permanecen documentados para conservar la trazabilidad técnica del proyecto y facilitar su comprensión.

🛠️ Tecnologías Utilizadas

Durante el desarrollo utilicé:

SQL Server
AdventureWorks2022 Database
SQL Server Management Studio
Visual Studio Code
Git & GitHub
🔎 Desarrollo del Análisis
1. Consolidación de métricas mediante GROUP BY

Implementé consultas utilizando GROUP BY para resumir información de ventas por producto.

Los principales indicadores calculados fueron:

Total de unidades vendidas.
Valor total generado por producto.

Esta técnica permitió transformar registros individuales en métricas comerciales más fáciles de interpretar.

2. Filtrado analítico utilizando HAVING

Posteriormente utilicé la cláusula HAVING para aplicar filtros después de realizar agregaciones.

Esto permitió identificar productos que superaban determinados niveles de desempeño comercial.

Ejemplos analizados:

Productos con más de 50 unidades vendidas.
Productos con ventas superiores a determinados valores económicos.
3. Implementación de funciones de ventana

Una de las partes principales del proyecto fue la aplicación de funciones analíticas mediante:

OVER()
PARTITION BY

Estas funciones permitieron realizar cálculos dentro de grupos específicos sin perder el detalle original de cada registro.

Con esto pude analizar:

Valor acumulado por orden.
Comportamiento individual dentro de grupos.
Comparaciones internas entre productos.
📊 Funciones Analíticas Implementadas
ROW_NUMBER()

Utilicé esta función para asignar una numeración consecutiva dentro de cada orden de venta.

Su aplicación permite organizar registros y establecer posiciones dentro de grupos específicos.

RANK()

Implementé RANK() para generar clasificaciones considerando empates entre valores.

Esta técnica es útil para identificar posiciones relativas dentro de análisis comerciales.

DENSE_RANK()

Apliqué DENSE_RANK() para generar rankings continuos evitando saltos cuando existen valores repetidos.

Esto permite realizar comparaciones más precisas entre productos.

📈 Consultas Desarrolladas

Durante el proyecto desarrollé consultas orientadas a:

Análisis de ventas totales por producto.
Identificación de productos con mayor movimiento comercial.
Cálculo de valores acumulados por orden.
Clasificación de productos según desempeño.
Filtrado de resultados relevantes para análisis.
📊 Resultados Obtenidos

Como resultado del proyecto logré:

Aplicar técnicas avanzadas de análisis SQL.
Generar métricas comerciales utilizando agregaciones.
Trabajar con funciones analíticas de ventana.
Obtener información estructurada desde datos transaccionales.
Preparar resultados útiles para procesos posteriores de Business Intelligence.
🧠 Aprendizajes Técnicos

Durante este proyecto fortalecí mi capacidad para utilizar SQL como herramienta de análisis y no solamente como lenguaje de consulta.

Comprendí cómo las funciones de agregación permiten resumir grandes volúmenes de información, mientras que las funciones de ventana permiten realizar análisis más detallados conservando el contexto original de los datos.

También reforcé la importancia de estructurar consultas claras, eficientes y orientadas a responder preguntas de negocio.

🚀 Aplicación Profesional

Las técnicas implementadas en este proyecto tienen aplicación directa en:

Análisis comercial.
Reportes ejecutivos.
Business Intelligence.
Dashboards empresariales.
Evaluación de desempeño de productos.
Modelos analíticos basados en datos históricos.
👨‍💻 Autor

RobertScience
Data Analytics & Engineering Solutions

https://robertscience.online

Convertimos información en decisiones inteligentes.