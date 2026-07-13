# Aplicación de DAX y Dashboard Ejecutivo en Power BI

## Descripción del Proyecto

En este proyecto desarrollé un dashboard ejecutivo utilizando Power BI y el lenguaje DAX (Data Analysis Expressions), aplicando cálculos dinámicos sobre un modelo de datos previamente estructurado.

El objetivo principal fue transformar información empresarial en indicadores analíticos capaces de mostrar tendencias, comparaciones históricas y métricas clave para apoyar procesos de toma de decisiones.

Durante el desarrollo utilicé un modelo dimensional tipo estrella compuesto por tablas relacionadas de ventas, productos, clientes, tiendas y países. Sobre esta arquitectura construí medidas DAX orientadas al análisis comercial y posteriormente integré los resultados dentro de un dashboard interactivo.


---

# Objetivos del Proyecto

Los principales objetivos fueron:

- Aplicar funciones DAX para generar métricas dinámicas.
- Construir indicadores clave de desempeño (KPI).
- Desarrollar análisis temporales mediante cálculos acumulados.
- Comparar resultados entre diferentes periodos.
- Diseñar un dashboard ejecutivo orientado al análisis empresarial.
- Validar la consistencia de los resultados obtenidos.


---

# Tecnologías Utilizadas

## Herramientas

- Microsoft Power BI Desktop
- DAX (Data Analysis Expressions)
- Power Query
- Modelo dimensional tipo estrella
- Visualizaciones KPI
- Análisis temporal


---

# Arquitectura del Modelo de Datos

El proyecto se desarrolló utilizando el modelo estrella creado previamente, donde la tabla de hechos concentra las transacciones comerciales y las tablas dimensionales proporcionan contexto para el análisis.

Estructura general:

                Dim_Productos
                     |
                     |

Dim_Clientes ---- Fact_Ventas ---- Dim_Tiendas
|
|
Dim_Paises



Esta estructura permitió crear medidas DAX eficientes y mantener una correcta relación entre las diferentes entidades del negocio.


---

# Desarrollo de Medidas DAX

La parte principal del proyecto consistió en la creación de medidas personalizadas utilizando DAX para ampliar la capacidad analítica del modelo.

Las principales métricas desarrolladas fueron:

- Ventas totales.
- Cantidad de productos vendidos.
- Promedio de precios.
- Ventas acumuladas.
- Cálculos Year To Date (YTD).
- Comparaciones contra periodos anteriores.
- Porcentaje de crecimiento.


Estas medidas permitieron generar análisis dinámicos capaces de responder diferentes preguntas de negocio directamente dentro del dashboard.


---

# Validación de Cálculos

Antes de integrar completamente las métricas dentro del reporte final, realicé validaciones mediante tablas auxiliares y visualizaciones de comprobación.

Este proceso permitió verificar:

- Exactitud de los cálculos.
- Correcta aplicación de filtros.
- Integridad de relaciones.
- Comportamiento de las medidas ante diferentes escenarios.


La validación previa garantizó que los indicadores mostrados en el dashboard fueran consistentes y confiables.


---

# Construcción del Dashboard Ejecutivo

Después de desarrollar las medidas DAX, diseñé un dashboard enfocado en presentar información estratégica mediante elementos visuales claros.

Los principales componentes fueron:

- Tarjetas KPI para indicadores principales.
- Gráficos comparativos de ventas.
- Tendencias históricas.
- Análisis por producto.
- Distribución geográfica.
- Comparativas temporales.


La organización visual fue diseñada para facilitar una lectura rápida de los resultados y permitir una interpretación eficiente de la información.


---

# Resultados Obtenidos

El resultado final fue un dashboard ejecutivo funcional capaz de analizar el desempeño comercial mediante métricas dinámicas.

La solución desarrollada permite:

- Evaluar el comportamiento de ventas.
- Detectar tendencias históricas.
- Comparar resultados entre periodos.
- Analizar indicadores clave.
- Obtener información relevante para decisiones estratégicas.


---

# Aprendizaje Personal

Durante este proyecto consolidé mis conocimientos en Power BI, especialmente en la creación de medidas avanzadas utilizando DAX.

Comprendí la importancia de construir cálculos dinámicos sobre modelos correctamente estructurados, ya que la calidad del análisis depende directamente de la arquitectura de datos utilizada.

También fortalecí mis habilidades en análisis temporal, construcción de indicadores KPI y diseño de dashboards ejecutivos orientados a entornos empresariales.


---

# Estructura del Proyecto


dax-dashboard-ejecutivo-power-bi/
│
├── README.md
│
├── powerbi/
│ └── dashboard_dax_ejecutivo.pbix
│
├── dax/
│ └── medidas_dax_documentadas.txt
│
├── capturas/
│ ├── modelo_datos.png
│ ├── medidas_dax.png
│ ├── validacion_calculos.png
│ └── dashboard_final.png
│
├── data/
│ └── datos_fuente/
│
└── documentacion/
└── reporte_practica_m48.pdf



> Nota: Los archivos originales de datos pueden no estar incluidos dentro del repositorio debido a restricciones de tamaño. Se conserva la documentación, estructura del proyecto y evidencia visual del desarrollo realizado.


---

# Conclusión

Este proyecto representa la aplicación práctica de análisis avanzado dentro de Power BI mediante el uso combinado de modelado dimensional, medidas DAX y visualización empresarial.

La integración de cálculos dinámicos permitió convertir datos históricos en indicadores estratégicos, creando una herramienta analítica preparada para apoyar procesos reales de toma de decisiones.

A través de este desarrollo fortalecí mi capacidad para construir soluciones completas de Business Intelligence, desde la estructura de datos hasta la presentación final de resultados.


---

## RobertsScience Data Analytics Consulting

**Convertimos datos en resultados**

https://robertscience.online