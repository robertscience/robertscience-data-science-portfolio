# Dashboard Analítico de Ventas en Power BI

## Descripción del Proyecto

En este proyecto desarrollé un dashboard analítico utilizando Power BI, integrando procesos de modelado de datos, relaciones entre tablas y visualización interactiva de información.

El objetivo principal fue transformar un conjunto de datos estructurados en una solución visual que permitiera analizar el comportamiento de las ventas desde diferentes perspectivas del negocio.

Durante el desarrollo trabajé con información relacionada con productos, clientes, tiendas, países y registros históricos de ventas. A partir del modelo dimensional construido previamente, diseñé visualizaciones enfocadas en facilitar la interpretación de indicadores y patrones comerciales.


---

# Objetivos del Proyecto

Los principales objetivos fueron:

- Construir un dashboard interactivo utilizando Power BI.
- Aplicar correctamente relaciones entre tablas dentro del modelo de datos.
- Crear visualizaciones orientadas al análisis empresarial.
- Representar métricas clave mediante indicadores dinámicos.
- Diseñar una interfaz visual clara y profesional.
- Transformar datos estructurados en información útil para la toma de decisiones.


---

# Tecnologías Utilizadas

## Herramientas

- Microsoft Power BI Desktop
- Power Query
- DAX (Data Analysis Expressions)
- Modelo dimensional tipo estrella
- Visualizaciones interactivas


---

# Modelo de Datos Utilizado

El dashboard fue desarrollado utilizando un modelo de datos tipo estrella, donde una tabla central de ventas se conecta con diferentes dimensiones que permiten realizar análisis detallados.

Estructura general del modelo:

                Dim_Productos
                     |
                     |

Dim_Clientes ---- Fact_Ventas ---- Dim_Tiendas
|
|
Dim_Paises



La correcta configuración de relaciones permitió generar análisis cruzados entre diferentes áreas del negocio manteniendo consistencia en los resultados.


---

# Desarrollo del Dashboard

## Preparación y Validación de Datos

Antes de iniciar la construcción de visualizaciones realicé una revisión completa del modelo de datos para validar:

- Relaciones entre tablas.
- Integridad de claves.
- Consistencia de información.
- Correcta propagación de filtros.
- Disponibilidad de campos necesarios para análisis.


Esta validación permitió garantizar que cada visualización mostrara información precisa y confiable.


---

# Creación de Visualizaciones

Dentro del dashboard desarrollé diferentes elementos gráficos enfocados en analizar el comportamiento comercial.

Las principales visualizaciones creadas fueron:

- Análisis de ventas por país.
- Comparación de ventas por producto.
- Distribución por categorías.
- Evolución temporal de ventas.
- Comparativa de desempeño entre tiendas.
- Indicadores generales del negocio.


Cada gráfico fue diseñado considerando claridad visual, facilidad de interpretación y enfoque hacia la generación de insights.


---

# Creación de Métricas con DAX

Para alimentar las visualizaciones desarrollé medidas dinámicas utilizando DAX.

Estas medidas permitieron:

- Consolidar ventas totales.
- Analizar cantidades vendidas.
- Comparar resultados entre dimensiones.
- Obtener indicadores actualizables.
- Mejorar la interacción del usuario con el dashboard.


El uso de medidas dinámicas permitió construir un reporte flexible capaz de responder diferentes preguntas de negocio.


---

# Diseño y Organización Visual

Durante la construcción del dashboard trabajé en la distribución de elementos visuales buscando mantener:

- Organización lógica de la información.
- Lectura rápida de indicadores.
- Consistencia gráfica.
- Separación adecuada entre análisis generales y detallados.

El diseño fue enfocado en crear una experiencia clara para usuarios técnicos y perfiles orientados a negocio.


---

# Resultados Obtenidos

Como resultado final desarrollé un dashboard funcional capaz de integrar diferentes perspectivas del negocio dentro de un mismo entorno analítico.

La solución permite:

- Explorar tendencias de ventas.
- Identificar comportamientos por región.
- Comparar desempeño de productos.
- Analizar resultados históricos.
- Facilitar procesos de toma de decisiones.


---

# Aprendizaje Personal

Durante este proyecto fortalecí mis conocimientos en visualización de datos, creación de dashboards y análisis empresarial utilizando Power BI.

Comprendí la importancia de contar con un modelo de datos correctamente estructurado antes de desarrollar reportes, ya que una arquitectura adecuada permite construir visualizaciones más precisas y escalables.

También reforcé el uso de medidas DAX, diseño de interfaces analíticas y buenas prácticas de comunicación visual de información.


---

# Estructura del Proyecto


dashboard-analitico-ventas-power-bi/
│
├── README.md
│
├── powerbi/
│ └── dashboard_ventas.pbix
│
├── capturas/
│ ├── dashboard_general.png
│ ├── ventas_por_pais.png
│ ├── analisis_productos.png
│ ├── evolucion_temporal.png
│ └── indicadores_principales.png
│
├── data/
│ └── datos_fuente/
│
└── documentacion/
└── reporte_practica_m47.pdf



> Nota: Los archivos originales de datos pueden no estar incluidos dentro del repositorio debido a restricciones de tamaño. Se conserva la documentación, estructura del proyecto y evidencia visual del desarrollo realizado.


---

# Conclusión

Este proyecto representa la aplicación práctica de un flujo completo de Business Intelligence utilizando Power BI.

A través de la integración del modelo de datos, creación de métricas y desarrollo de visualizaciones interactivas, logré transformar información histórica en una herramienta analítica orientada a la interpretación y toma de decisiones.

La construcción de este dashboard fortaleció mi capacidad para desarrollar soluciones de análisis visual siguiendo metodologías utilizadas en entornos profesionales.


---

## RobertsScience Data Analytics Consulting

**Convertimos datos en resultados**

https://robertscience.online