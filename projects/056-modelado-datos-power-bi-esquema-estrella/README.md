# Modelado de Datos en Power BI - Diseño de Modelo Dimensional

## Descripción del Proyecto

En este proyecto desarrollé un proceso completo de preparación, limpieza y modelado de datos utilizando Power BI, con el objetivo de transformar información sin estructura inicial en un modelo analítico organizado, eficiente y preparado para la generación de reportes empresariales.

El proyecto se enfocó en aplicar buenas prácticas de análisis de datos mediante la construcción de un modelo dimensional basado en un esquema estrella, permitiendo establecer relaciones eficientes entre diferentes fuentes de información y facilitando futuros procesos de análisis y visualización.

Durante el desarrollo trabajé con diferentes conjuntos de datos correspondientes a distintos periodos, realizando procesos de transformación, homologación y preparación de la información para garantizar consistencia y calidad dentro del modelo final.


---

# Objetivos del Proyecto

Los principales objetivos fueron:

- Preparar y limpiar múltiples fuentes de datos dentro de Power BI.
- Estandarizar estructuras y formatos para facilitar el análisis.
- Consolidar información transaccional en una tabla central.
- Diseñar un modelo relacional basado en esquema estrella.
- Crear relaciones eficientes entre tablas de hechos y dimensiones.
- Preparar una estructura escalable para futuros dashboards y reportes.


---

# Tecnologías Utilizadas

## Herramientas

- Microsoft Power BI Desktop
- Power Query
- Lenguaje M para transformación de datos
- Modelado dimensional
- Relaciones entre tablas


---

# Flujo de Trabajo del Proyecto

## 1. Preparación y Carga de Datos

Inicialmente realicé la importación de las diferentes fuentes de información dentro de Power BI, verificando que cada archivo pudiera ser integrado correctamente dentro del entorno de análisis.

Durante esta etapa revisé la estructura inicial de los datos, identificando diferencias entre periodos, formatos inconsistentes y elementos que requerían transformación antes de incorporarlos al modelo.


---

## 2. Limpieza y Transformación de Datos con Power Query

Utilicé Power Query para realizar el proceso de preparación de información.

Las principales transformaciones aplicadas fueron:

- Normalización de nombres de columnas.
- Corrección de tipos de datos.
- Eliminación de inconsistencias.
- Revisión de valores duplicados.
- Organización de estructuras tabulares.
- Consolidación de información histórica.

Este proceso permitió obtener datos más confiables y preparados para su integración dentro del modelo analítico.


---

# 3. Construcción del Modelo de Datos

Después de completar la limpieza, diseñé un modelo dimensional utilizando una arquitectura tipo estrella.

La estructura principal quedó conformada por:

             Dim_Productos
                  |
                  |

Dim_Clientes ---- Fact_Ventas ---- Dim_Tiendas
|
|
Dim_Paises


La tabla de hechos central concentra la información transaccional de ventas, mientras que las tablas dimensionales proporcionan contexto adicional para realizar análisis detallados.

Este enfoque permite:

- Mejor rendimiento del modelo.
- Mayor facilidad de análisis.
- Relaciones más claras entre entidades.
- Escalabilidad para nuevos reportes.


---

# Integridad y Validación del Modelo

Durante la construcción del modelo validé cada relación establecida entre tablas, asegurando:

- Claves únicas correctamente definidas.
- Ausencia de relaciones ambiguas.
- Integridad referencial.
- Flujo correcto de filtros entre dimensiones y hechos.

La correcta configuración del modelo permite realizar análisis cruzados de manera eficiente y confiable.


---

# Resultados Obtenidos

Como resultado final obtuve un modelo de datos estructurado y optimizado para trabajar dentro de Power BI.

La solución desarrollada permite:

- Analizar información histórica de ventas.
- Integrar diferentes dimensiones del negocio.
- Crear dashboards interactivos.
- Facilitar la interpretación de indicadores clave.
- Servir como base para futuros modelos analíticos.


---

# Aprendizaje Personal

Durante este proyecto reforcé mis conocimientos en modelado dimensional, preparación de datos y arquitectura analítica dentro de Power BI.

Comprendí la importancia de construir modelos correctamente estructurados antes de desarrollar visualizaciones, ya que la calidad del análisis depende directamente de la organización y consistencia de los datos.

También fortalecí mis habilidades en procesos ETL utilizando Power Query y en la aplicación de buenas prácticas utilizadas dentro de ambientes profesionales de Business Intelligence.


---

# Estructura del Proyecto


modelado-datos-power-bi/
│
├── README.md
│
├── data/
│ ├── archivos_fuente/
│ └── datos_transformados/
│
├── powerbi/
│ └── modelo_datos_powerbi.pbix
│
├── capturas/
│ ├── carga_datos.png
│ ├── power_query.png
│ ├── modelo_relacional.png
│ └── relaciones_tablas.png
│
└── documentacion/
└── reporte_practica_m46.pdf


> Nota: Los archivos originales de datos no se incluyen dentro del repositorio debido a restricciones de tamaño y manejo de información. El proyecto contiene la estructura, documentación y evidencia del proceso desarrollado.


---

# Conclusión

Este proyecto representa una implementación práctica de un flujo completo de preparación y modelado de datos dentro de Power BI.

A través de la integración de diferentes fuentes, transformación de información y construcción de un modelo dimensional, logré crear una base analítica preparada para la generación de reportes profesionales y toma de decisiones basada en datos.


---

## RobertScience Data Analytics Consulting

**Transformando datos en resultados**

https://robertscience.online