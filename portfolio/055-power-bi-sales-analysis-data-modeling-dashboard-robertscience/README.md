# Análisis de Ventas, Transformación de Datos y Modelado Relacional con Power BI

**Business Intelligence | Power BI | Power Query | Data Modeling | DAX | Data Visualization**

---

# RobertScience Data Analytics Consulting

## Descripción del Proyecto

En este proyecto desarrollé un flujo completo de análisis de datos utilizando **Power BI**, **Power Query** y técnicas de **modelado relacional**, con el objetivo de transformar múltiples fuentes de información comercial en un modelo analítico funcional orientado a la toma de decisiones.

El proyecto se enfocó en integrar información relacionada con ventas, productos y países, aplicando procesos de extracción, transformación y estructuración de datos para construir una solución de Business Intelligence capaz de responder preguntas estratégicas del negocio.

Durante el desarrollo realicé la carga de diferentes fuentes de datos, ejecuté procesos de limpieza y transformación mediante Power Query, diseñé un modelo dimensional tipo estrella, construí medidas utilizando DAX y finalmente desarrollé un dashboard interactivo para visualizar indicadores clave de desempeño.

Este proyecto representa un escenario real de trabajo dentro de áreas de **Business Intelligence, Data Analytics y Reporting Ejecutivo**, donde la calidad del modelo de datos es fundamental para generar información confiable y accionable.

---

# Objetivo Técnico

El objetivo principal fue construir una solución analítica completa en Power BI que permitiera transformar datos comerciales en información visual y estratégica.

Durante el desarrollo busqué:

* Integrar múltiples fuentes de datos.
* Realizar procesos de limpieza y transformación.
* Corregir estructuras inconsistentes dentro de los datos.
* Preparar tablas para análisis relacional.
* Construir un modelo dimensional tipo estrella.
* Crear relaciones entre tablas mediante identificadores únicos.
* Diseñar medidas utilizando lenguaje DAX.
* Generar indicadores comerciales.
* Construir visualizaciones interactivas.
* Crear un dashboard orientado al análisis ejecutivo.

---

# Fuentes de Datos Utilizadas

Para el desarrollo del proyecto se utilizaron diferentes fuentes relacionadas con información comercial.

Los datasets utilizados representan:

## Ventas

Tabla principal del modelo que contiene los registros transaccionales del negocio.

Información utilizada:

* Identificador de venta.
* Producto.
* País.
* Cantidad vendida.
* Valores comerciales.

---

## Productos

Tabla dimensional utilizada para complementar la información comercial.

Permite analizar:

* Categorías.
* Productos.
* Características del portafolio.

---

## Países

Tabla dimensional utilizada para realizar análisis geográfico.

Permite estudiar:

* Distribución de ventas.
* Comportamiento por región.
* Participación por país.

---

Debido a restricciones relacionadas con tamaño de archivos y buenas prácticas de administración de repositorios, los datasets originales **no fueron incluidos dentro de GitHub**.

La estructura del proyecto y flujo de transformación fueron documentados para permitir la reproducción del análisis utilizando las mismas fuentes de información.

---

# Tecnologías Utilizadas

## Herramientas Principales

* Power BI Desktop
* Power Query
* DAX

---

## Entorno

* Windows
* Microsoft Power BI Desktop

---

# Modelo de Datos

Durante el desarrollo implementé un modelo relacional tipo estrella (**Star Schema**), donde la tabla de hechos concentra la información transaccional y las tablas dimensionales proporcionan contexto descriptivo.

Estructura del modelo:

             Productos
                 |
                 |
                 |

Países -------- Ventas


Este diseño permitió:

* Mejorar la organización de la información.
* Crear relaciones eficientes.
* Facilitar cálculos mediante DAX.
* Obtener análisis cruzados entre dimensiones.

---

# Estructura del Proyecto

```text
power-bi-sales-analysis-data-modeling-dashboard-robertscience
│
├── data
│   │
│   ├── raw
│   │   ├── ventas.xlsx
│   │   ├── productos.xlsx
│   │   └── paises.xlsx
│   │
│   └── processed
│       └── modelo_powerbi.pbix
│
├── dashboard
│   └── ventas_dashboard.pbix
│
├── capturas
│   ├── carga_datos_power_query.png
│   ├── transformacion_datos.png
│   ├── modelo_relacional.png
│   ├── medidas_dax.png
│   └── dashboard_final.png
│
├── documentation
│   └── reporte-practica-m45-power-bi.pdf
│
└── README.md

Nota:

Los archivos originales de datos, modelos Power BI y archivos generados durante el análisis no fueron incluidos dentro del repositorio debido a restricciones de tamaño.

Las capturas y documentación del proceso permiten visualizar cada etapa del desarrollo, mientras que la estructura mantiene organizado el flujo necesario para reproducir la solución analítica.

Flujo de Desarrollo
1. Importación de Datos

Inicialmente realicé la conexión de las diferentes fuentes de información dentro de Power BI Desktop.

En esta etapa validé que cada archivo pudiera ser cargado correctamente y que la estructura inicial fuera adecuada para comenzar el proceso de transformación.

2. Limpieza y Transformación con Power Query

Utilicé Power Query para preparar los datos antes de integrarlos dentro del modelo analítico.

Durante esta fase realicé:

Revisión de columnas.
Corrección de tipos de datos.
Eliminación de inconsistencias.
Normalización de nombres.
Organización de estructuras.
Preparación de tablas dimensionales.

Este proceso permitió garantizar una base de información limpia y consistente.

3. Construcción del Modelo Relacional

Posteriormente desarrollé un modelo de datos tipo estrella conectando la tabla principal de ventas con las dimensiones de productos y países.

La correcta definición de relaciones permitió realizar análisis multidimensionales y obtener métricas confiables.

4. Creación de Medidas DAX

Desarrollé medidas utilizando DAX para generar indicadores clave del negocio.

Entre las métricas creadas se incluyen:

Ventas totales.
Cantidad de productos vendidos.
Indicadores comerciales derivados.

Estas medidas permitieron alimentar las visualizaciones del dashboard.

5. Desarrollo del Dashboard

Finalmente construí un dashboard interactivo en Power BI orientado a la interpretación visual de resultados.

Las visualizaciones permitieron analizar:

Tendencias comerciales.
Desempeño por producto.
Distribución geográfica.
Indicadores principales del negocio.
Resultados Obtenidos

Durante el desarrollo del proyecto fue posible:

Integrar múltiples fuentes de información.
Transformar datos utilizando Power Query.
Construir un modelo dimensional funcional.
Crear métricas utilizando DAX.
Diseñar visualizaciones interactivas.
Generar un dashboard orientado a negocio.
Convertir datos operativos en información estratégica.
Conclusiones Técnicas

Este proyecto permitió aplicar un flujo completo de Business Intelligence utilizando Power BI como plataforma principal.

La correcta preparación de los datos, el diseño del modelo relacional y la creación de medidas DAX fueron elementos fundamentales para construir una solución analítica confiable.

El desarrollo demuestra la importancia de combinar conocimientos de transformación de datos, modelado y visualización para generar herramientas que apoyen la toma de decisiones empresariales.

Aplicación Profesional

Las metodologías implementadas en este proyecto tienen aplicación directa en:

Business Intelligence.
Data Analytics.
Reporting Ejecutivo.
Dashboard Development.
Sales Analytics.
Data Visualization.
Business Performance Analysis.
Strategic Decision Making.
Conclusión

En este proyecto desarrollé una solución completa de análisis comercial utilizando Power BI, integrando múltiples fuentes de datos y transformándolas en un modelo relacional preparado para análisis estratégico.

El flujo completo incluyó extracción de información, limpieza mediante Power Query, modelado dimensional, creación de métricas DAX y construcción de un dashboard interactivo.

Este desarrollo fortalece mi experiencia en herramientas de Business Intelligence y demuestra la capacidad de transformar datos estructurados en soluciones visuales orientadas a la toma de decisiones.

Autor

RobertScience

Data Analytics & Machine Learning Engineering

Transformando datos en sistemas inteligentes para la toma de decisiones.

https://robertscience.online