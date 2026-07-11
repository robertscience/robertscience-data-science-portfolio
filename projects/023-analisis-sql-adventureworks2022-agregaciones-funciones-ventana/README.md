# Análisis SQL AdventureWorks2022 – Agregaciones y Funciones de Ventana

## Proyecto de Análisis Avanzado de Datos con SQL

**RobertScience Data Analytics Consulting**

---

# 📌 Descripción del Proyecto

Desarrollé este proyecto utilizando la base de datos empresarial **AdventureWorks2022**, enfocándome en el análisis de información comercial mediante consultas SQL avanzadas.

El objetivo principal fue aplicar técnicas de agregación y funciones analíticas para obtener métricas relevantes sobre el comportamiento de ventas, productos y órdenes comerciales.

Durante este desarrollo trabajé con herramientas propias de análisis empresarial como:

* Agrupación de información mediante `GROUP BY`.
* Filtrado de resultados agregados mediante `HAVING`.
* Cálculos analíticos utilizando funciones de ventana.
* Clasificación y jerarquización mediante `ROW_NUMBER`, `RANK` y `DENSE_RANK`.

Este proyecto representa una etapa importante dentro de mi formación técnica, ya que permite transformar datos transaccionales en información útil para análisis estratégico.

---

# 🎯 Objetivo

El objetivo principal fue desarrollar consultas SQL capaces de analizar grandes volúmenes de información comercial manteniendo el detalle de los registros originales.

Los objetivos específicos fueron:

* Analizar ventas agrupadas por producto.
* Identificar productos con mayor desempeño comercial.
* Aplicar funciones analíticas sobre órdenes de venta.
* Crear rankings dentro de grupos de información.
* Comprender el comportamiento de las funciones de ventana en escenarios empresariales.

---

# 🏗️ Arquitectura del Proyecto

La estructura utilizada durante el desarrollo fue organizada de la siguiente manera:

```text
023-analisis-sql-adventureworks2022-agregaciones-funciones-ventana/

│
├── sql/
│   └── Tarea_M10-RobertScience.sql
│
├── capturas/
│   ├── evidencia_consultas_sql.png
│   ├── resultados_queries.png
│   └── proceso_desarrollo.png
│
├── docs/
│   └── Reporte_Analisis_SQL_M10.pdf
│
└── README.md
```

---

# 📂 Nota sobre la estructura del repositorio

La estructura anterior representa el entorno completo utilizado durante el desarrollo del proyecto.

En este repositorio de portafolio no necesariamente se replica exactamente toda la estructura original, debido a que algunos archivos pueden depender del entorno local, configuraciones específicas o generar archivos de gran tamaño.

Los elementos pesados o dependientes del motor de base de datos fueron documentados correctamente, manteniendo dentro del repositorio únicamente los archivos necesarios para comprender la metodología, consultas implementadas y resultados obtenidos.

---

# 🛠️ Tecnologías Utilizadas

Durante el desarrollo utilicé:

* SQL Server
* AdventureWorks2022 Database
* Lenguaje SQL
* Visual Studio Code
* Herramientas de administración SQL

---

# 🔎 Desarrollo del Proyecto

## 1. Análisis mediante GROUP BY

Inicié el desarrollo realizando agrupaciones sobre la tabla de detalle de órdenes de venta.

Utilicé `GROUP BY` para consolidar información por producto y calcular indicadores como:

* Cantidad total vendida.
* Valor acumulado de ventas.
* Desempeño comercial por producto.

Este proceso permitió transformar registros individuales de ventas en métricas resumidas orientadas al análisis.

---

# 📊 Filtrado de métricas mediante HAVING

Posteriormente implementé la cláusula `HAVING` para trabajar con resultados agregados.

A diferencia de `WHERE`, esta herramienta permite filtrar información después de realizar cálculos agrupados.

La utilicé para identificar productos que superan determinados niveles de ventas y concentrar el análisis únicamente en elementos relevantes.

---

# 🧮 Implementación de funciones de ventana

Una de las partes principales del proyecto fue la aplicación de funciones analíticas mediante:

```sql
OVER()
```

y

```sql
PARTITION BY
```

Estas funciones me permitieron realizar cálculos dentro de grupos específicos sin perder el detalle original de cada registro.

Esto representa una técnica ampliamente utilizada en análisis empresarial, ya que permite generar métricas comparativas dentro de diferentes segmentos de información.

---

# 🏆 Clasificación y rankings

Implementé diferentes funciones de clasificación:

## ROW_NUMBER()

Utilicé esta función para generar una numeración consecutiva dentro de cada grupo de órdenes.

Aplicación:

* Organización de registros.
* Identificación de posiciones individuales.

---

## RANK()

Implementé `RANK()` para generar posiciones considerando empates entre valores iguales.

Aplicación:

* Comparación de productos dentro de órdenes.
* Identificación de posiciones comerciales.

---

## DENSE_RANK()

Utilicé `DENSE_RANK()` para generar rankings consecutivos sin saltos cuando existen valores repetidos.

Aplicación:

* Clasificaciones más compactas.
* Análisis comparativo de desempeño.

---

# 🧩 Consultas Implementadas

Durante el proyecto desarrollé consultas enfocadas en:

## Ventas totales por producto

Permitió conocer qué productos concentran mayor volumen comercial.

---

## Productos con alto rendimiento

Utilicé filtros sobre agregaciones para identificar productos con ventas superiores a determinados valores.

---

## Valor total por orden

Apliqué funciones de ventana para calcular acumulados dentro de cada orden manteniendo el detalle individual.

---

## Ranking de productos

Construí diferentes niveles de clasificación para comparar productos dentro de sus respectivos grupos.

---

# 📈 Resultados Obtenidos

Como resultado del proyecto logré:

* Obtener métricas comerciales mediante SQL avanzado.
* Analizar comportamiento de productos.
* Construir rankings dentro de grupos de datos.
* Aplicar funciones analíticas sobre información transaccional.
* Transformar datos operativos en información útil para negocio.

---

# 📚 Aprendizajes Técnicos

Este proyecto fortaleció mis conocimientos en:

* Análisis avanzado utilizando SQL.
* Diferencia entre agregaciones tradicionales y funciones analíticas.
* Uso profesional de funciones de ventana.
* Construcción de consultas orientadas a inteligencia de negocio.
* Interpretación de métricas comerciales.

También reforcé la importancia de elegir correctamente cada herramienta SQL dependiendo del tipo de análisis requerido.

---

# 🚀 Aplicación Profesional

Las técnicas utilizadas en este proyecto forman parte de procesos reales dentro de:

* Business Intelligence.
* Data Analytics.
* Reportes comerciales.
* Análisis financiero.
* Preparación de datos para dashboards.

La capacidad de generar métricas avanzadas directamente desde bases de datos permite construir soluciones más eficientes y escalables.

---

# 👨‍💻 Autor

**RobertScience**

Data Analytics & Engineering Solutions

Transformando datos en decisiones inteligentes.

https://robertscience.online
