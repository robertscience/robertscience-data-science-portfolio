Proyecto Analítico – Google Play Store: Factores que Influyen en la Calificación de Aplicaciones
Machine Learning Exploratorio | Análisis de Datos | Insight de Negocio Digital

RobertScience Data Analytics Consulting

Descripción del Proyecto

En este proyecto desarrollé un análisis exploratorio integral del mercado de aplicaciones en Google Play Store con el objetivo de identificar los factores que influyen en la calificación (Rating) de una aplicación.

El análisis se centró en entender cómo variables estructurales del producto digital y la percepción del usuario impactan en el desempeño de una app dentro del ecosistema de distribución de Android.

Se evaluaron más de 10,000 aplicaciones considerando características como:

Categoría de la aplicación
Número de instalaciones
Tamaño del archivo
Precio
Tipo de aplicación (Free vs Paid)
Sentimiento de usuarios a partir de reseñas

El objetivo fue generar conclusiones accionables orientadas a estrategias de posicionamiento, monetización y optimización de producto digital.

Objetivo Técnico

El objetivo principal fue realizar un análisis exploratorio de datos (EDA) para identificar relaciones entre variables estructurales y la calificación de las aplicaciones.

Durante el desarrollo del proyecto se buscó:

Analizar la distribución del rating en el mercado.
Identificar categorías con mayor y menor saturación.
Evaluar la relación entre tamaño, precio e instalaciones con el rating.
Comparar el comportamiento entre apps gratuitas y de pago.
Integrar análisis de sentimiento como variable de percepción del usuario.
Medir correlaciones entre variables cuantitativas relevantes.
Tecnologías Utilizadas
Lenguaje
Python 3.11
Entorno
Jupyter Notebook
Visual Studio Code
Librerías
Pandas
NumPy
Matplotlib
Seaborn
Estructura del Proyecto
google-play-store-rating-analysis

│
├── data
│   ├── apps.csv
│   └── user_reviews.csv
│
├── notebooks
│   └── analisis_google_play_store.ipynb
│
├── img
│   └── visualizaciones_generadas
│
├── docs
│   ├── reporte.html
│   └── reporte.pdf
│
├── requirements.txt
│
└── README.md
Descripción de Datos
apps.csv

Contiene información estructural de las aplicaciones:

App
Category
Rating
Reviews
Installs
Type
Price
Size
user_reviews.csv

Contiene información de reseñas procesadas:

Sentiment (positivo, negativo, neutral)
Sentiment_Polarity
Sentiment_Subjectivity
Review
Flujo de Análisis
1. Carga y limpieza de datos

Realicé la importación del dataset y ejecuté procesos de limpieza inicial:

Eliminación de duplicados
Conversión de tipos de datos
Tratamiento de valores nulos
Normalización de variables numéricas
2. Estandarización de variables clave

Transformé variables para análisis cuantitativo:

Installs → conversión a entero
Price → conversión a float
Size → tratamiento de valores mixtos y conversión numérica
Rating → conversión a tipo numérico
3. Análisis de categorías

Analicé la distribución de aplicaciones por categoría para identificar:

Saturación del mercado
Nichos con menor competencia
Concentración de aplicaciones en sectores específicos
4. Análisis de ratings

Evalué la distribución del rating global:

Media del mercado
Distribución de calificaciones
Rating por categoría

Se observó un sesgo hacia calificaciones altas en el ecosistema.

5. Análisis de tamaño y precio

Exploré la relación entre:

Tamaño de la aplicación vs rating
Precio vs rating

Se evaluó si variables estructurales influyen directamente en la percepción del usuario.

6. Correlación entre variables

Construí una matriz de correlación entre:

Rating
Size
Installs (log-transformado)
Price

Esto permitió medir relaciones lineales entre variables clave del producto digital.

7. Comparación Free vs Paid

Analicé diferencias entre aplicaciones gratuitas y de pago en términos de:

Rating promedio
Número de instalaciones
Estrategia de monetización
8. Análisis de sentimiento

Integré datos de reseñas para evaluar percepción del usuario mediante:

Polaridad del sentimiento
Distribución de sentimientos positivos, negativos y neutros
Resultados Clave
El mercado presenta alta concentración en categorías como Game y Family.
El rating promedio global se mantiene por encima de 4.0.
No existe una relación fuerte entre tamaño de la app y su calificación.
El precio no impacta negativamente el rating de forma significativa.
Las aplicaciones gratuitas dominan el mercado en volumen.
Las apps de pago muestran ligeramente mejor percepción de calidad.
El sentimiento del usuario complementa el análisis del rating tradicional.
Interpretación del Análisis

Los resultados indican que el desempeño de una aplicación no depende principalmente de variables técnicas como tamaño o precio.

La calificación está más influenciada por factores como:

Experiencia de usuario
Valor percibido
Calidad funcional del producto
Gestión de expectativas del usuario
Consideraciones del Estudio

Este análisis representa una fotografía estática del mercado y presenta las siguientes limitaciones:

No incorpora evolución temporal del mercado
No incluye causalidad entre variables
Depende de procesamiento previo del texto en análisis de sentimiento
Puede existir sesgo en la distribución de ratings
Aplicación Profesional

Este tipo de análisis es aplicable en:

Estrategia de producto digital
Optimización de apps móviles
Growth analytics
Data-driven product management
Evaluación de mercado en plataformas digitales
Conclusión

Desarrollé un análisis exploratorio del mercado de aplicaciones en Google Play Store para identificar los factores que influyen en la calificación de las apps.

El estudio demuestra que el éxito de una aplicación depende más de la experiencia de usuario y percepción del valor que de variables estructurales como tamaño o precio.

El modelo analítico permite apoyar decisiones estratégicas en desarrollo, posicionamiento y monetización de productos digitales.