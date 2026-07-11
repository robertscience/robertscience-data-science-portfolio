Proyecto 046 - Estadística Inferencial mediante Distribuciones de Probabilidad y Pruebas de Hipótesis

Estadística Inferencial | Distribución de Poisson | ANOVA | Ciencia de Datos | Análisis Estadístico

RobertScience Data Analytics Consulting
Descripción del Proyecto

En este proyecto desarrollé un análisis de Estadística Inferencial enfocado en la aplicación de distribuciones de probabilidad y pruebas de hipótesis para evaluar fenómenos relacionados con el comportamiento de clientes dentro de un contexto de analítica de datos.

El trabajo integra dos aplicaciones fundamentales de la estadística aplicada. En la primera parte implementé una simulación basada en la distribución de Poisson, utilizada para modelar la ocurrencia de eventos discretos dentro de un intervalo determinado. Posteriormente desarrollé un análisis inferencial utilizando una prueba ANOVA de un factor, con el propósito de determinar si existen diferencias estadísticamente significativas entre grupos de clientes definidos por su nivel de interacción digital.

Como parte del flujo analítico realicé la exploración del conjunto de datos, el análisis descriptivo de variables, la validación de supuestos estadísticos mediante pruebas de normalidad y homogeneidad de varianzas, la formulación de hipótesis estadísticas y la interpretación de los resultados desde una perspectiva orientada a la toma de decisiones.

Este proyecto reproduce un escenario común dentro de áreas de Data Analytics, Business Intelligence y Marketing Analytics, donde la estadística inferencial constituye una herramienta esencial para convertir datos en evidencia cuantitativa que apoye decisiones estratégicas.

Objetivo Técnico

El objetivo principal fue aplicar técnicas de estadística inferencial para modelar procesos aleatorios y evaluar si el comportamiento digital de los clientes presenta diferencias significativas respecto al número de compras realizadas.

Durante el desarrollo del proyecto busqué:

Comprender el comportamiento de una distribución de probabilidad discreta mediante simulación.
Modelar eventos utilizando la distribución de Poisson.
Explorar estadísticamente un conjunto de datos de campañas de marketing.
Obtener estadísticas descriptivas de las variables analizadas.
Clasificar clientes según su nivel de interacción digital.
Validar los supuestos necesarios para la aplicación del modelo estadístico.
Aplicar una prueba ANOVA para comparar medias entre grupos.
Interpretar los resultados utilizando criterios estadísticos.
Transformar evidencia estadística en conclusiones útiles para el negocio.
Dataset Utilizado

Para el desarrollo del análisis se utilizó el siguiente conjunto de datos:

marketing_campaign (2).csv

El dataset contiene información relacionada con clientes de campañas de marketing, incluyendo variables demográficas, comportamiento de compra, interacción digital, historial de campañas y actividad comercial.

Durante el proyecto se utilizaron principalmente variables relacionadas con:

Número de compras realizadas mediante el sitio web.
Número de visitas mensuales al sitio web.
Variables de segmentación para comparar grupos de clientes.

Debido a restricciones relacionadas con el tamaño del material académico utilizado durante el desarrollo del proyecto, este conjunto de datos no se incluye dentro de este repositorio.

Sin embargo, toda la metodología empleada, el flujo de análisis y el código fueron documentados para permitir la reproducción completa del proyecto utilizando la misma estructura de archivos.

Tecnologías Utilizadas
Lenguaje
Python 3.11
Entorno de Desarrollo
Visual Studio Code
Jupyter Notebook
Librerías principales
Pandas
NumPy
Matplotlib
Seaborn
SciPy
Estructura del Proyecto
045-estadistica-inferencial-distribuciones-poisson-pruebas-hipotesis-anova-robertscience
│
├── data
│   └── marketing_campaign (2).csv
│
├── notebooks
│   └── Practica_M32_Estadistica_Inferencial.ipynb
│
├── img
│   └── poisson_distribution.png
│
├── requirements.txt
│
└── README.md

Nota: La carpeta img contiene las visualizaciones generadas durante el análisis estadístico. Estas imágenes pueden reproducirse ejecutando nuevamente el notebook incluido en el proyecto.

Flujo de Desarrollo
1. Importación de Librerías

Inicié el proyecto importando las librerías necesarias para el análisis estadístico. Se utilizaron herramientas especializadas para manipulación de datos, generación de distribuciones de probabilidad, visualización de información y aplicación de pruebas estadísticas.

2. Simulación de una Distribución de Poisson

Generé una muestra de 1,000 observaciones utilizando una distribución de Poisson con parámetro λ = 2.5, simulando la ocurrencia de eventos discretos dentro de un intervalo determinado.

Esta simulación permitió comprender el comportamiento probabilístico de procesos donde los eventos ocurren de forma independiente y con una tasa promedio constante.

3. Visualización de la Distribución

Representé gráficamente la distribución simulada mediante un histograma con el objetivo de analizar su forma y comportamiento.

La distribución obtenida mostró la concentración característica alrededor del valor esperado, evidenciando el comportamiento típico de una distribución de Poisson.

4. Carga y Exploración del Dataset

Posteriormente cargué el conjunto de datos de campañas de marketing para realizar un análisis inferencial aplicado a un escenario de negocio.

Exploré la estructura del dataset e identifiqué las variables relacionadas con la actividad digital de los clientes y su comportamiento de compra.

5. Análisis Descriptivo

Realicé un análisis descriptivo de las variables NumWebPurchases y NumWebVisitsMonth, obteniendo medidas de tendencia central, dispersión y distribución.

Este análisis permitió conocer el comportamiento general de las variables antes de aplicar métodos inferenciales.

6. Segmentación de Clientes

Clasifiqué a los clientes en dos grupos de acuerdo con el número de visitas mensuales al sitio web:

Clientes con alto nivel de interacción digital.
Clientes con bajo nivel de interacción digital.

Esta segmentación permitió comparar estadísticamente ambos grupos mediante técnicas de inferencia.

7. Validación de Supuestos Estadísticos

Antes de ejecutar la prueba ANOVA verifiqué los principales supuestos estadísticos del modelo.

Para ello apliqué:

Prueba de normalidad de Shapiro-Wilk.
Prueba de homogeneidad de varianzas de Levene.

Estas pruebas permitieron evaluar las condiciones necesarias para interpretar adecuadamente los resultados obtenidos.

8. Prueba de Hipótesis mediante ANOVA

Implementé una prueba ANOVA de un factor para determinar si existían diferencias significativas en el promedio de compras realizadas entre ambos grupos de clientes.

Durante el análisis formulé las siguientes hipótesis:

Hipótesis nula (H₀):

No existen diferencias significativas entre las medias de compras de ambos grupos.

Hipótesis alternativa (H₁):

Existe al menos una diferencia significativa entre las medias.

El análisis produjo un estadístico F de 8.50 y un valor p de 0.0036, proporcionando evidencia suficiente para rechazar la hipótesis nula.

Resultados Obtenidos

Durante el desarrollo del proyecto fue posible:

Simular correctamente una distribución de Poisson.
Analizar el comportamiento probabilístico de eventos discretos.
Explorar estadísticamente un conjunto de datos de clientes.
Obtener estadísticas descriptivas relevantes.
Segmentar clientes según su nivel de interacción digital.
Validar los supuestos estadísticos del modelo.
Aplicar una prueba ANOVA de forma correcta.
Identificar diferencias estadísticamente significativas entre grupos de clientes.
Interpretar los resultados desde una perspectiva de negocio.
Conclusiones Técnicas

Este proyecto demuestra la importancia de la estadística inferencial como fundamento para el análisis de datos y la toma de decisiones basada en evidencia.

La combinación de simulaciones probabilísticas, análisis descriptivo y pruebas de hipótesis permitió evaluar objetivamente el comportamiento de los datos y establecer conclusiones respaldadas por criterios estadísticos.

Los resultados obtenidos muestran que el nivel de interacción digital de los clientes presenta una relación significativa con la cantidad de compras realizadas, aportando información valiosa para el diseño de estrategias comerciales y campañas de marketing.

Aplicación Profesional

Las metodologías implementadas en este proyecto tienen aplicación directa en áreas como:

Data Analytics.
Business Intelligence.
Marketing Analytics.
Customer Analytics.
Investigación de Mercados.
Ciencia de Datos.
Estadística Aplicada.
Modelado Estadístico.
Toma de Decisiones Basada en Datos.
Conclusión

En este proyecto desarrollé un análisis de estadística inferencial utilizando técnicas de simulación probabilística y pruebas de hipótesis para evaluar el comportamiento de clientes a partir de información de campañas de marketing.

El flujo de trabajo incluyó la simulación de una distribución de Poisson, el análisis descriptivo del conjunto de datos, la segmentación de clientes según su interacción digital, la validación de supuestos estadísticos mediante pruebas de normalidad y homogeneidad de varianzas, así como la aplicación de una prueba ANOVA para comparar grupos.

Los resultados obtenidos evidencian cómo las herramientas de estadística inferencial permiten transformar datos en conocimiento cuantitativo que respalda la toma de decisiones estratégicas dentro de entornos empresariales.

Autor

RobertScience

Data Analytics & Machine Learning Engineering

Transformando datos en sistemas inteligentes para la toma de decisiones.

https://robertscience.online