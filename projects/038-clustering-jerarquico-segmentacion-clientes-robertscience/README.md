Proyecto 038 - Clustering Jerárquico: Segmentación de Clientes y Sistema de Recomendación
Machine Learning No Supervisado | Clustering Jerárquico | Segmentación Conductual

RobertScience Data Analytics Consulting

Descripción del Proyecto

En este proyecto desarrollé un análisis de segmentación de clientes utilizando Clustering Jerárquico, con el objetivo de identificar patrones de comportamiento en la evaluación de productos y generar recomendaciones personalizadas basadas en similitud estadística.

El análisis se centra en un conjunto de 100 clientes que han evaluado distintos productos bajo múltiples variables de experiencia de usuario, incluyendo aspectos como:

Velocidad de entrega
Precio
Durabilidad
Imagen del producto
Valor educativo
Servicio
Retorno
Tamaño de paquete

A partir de estas variables se construyó una segmentación conductual que permitió agrupar clientes con patrones de consumo similares.

Objetivo Técnico

El objetivo principal del proyecto fue:

Aplicar técnicas de clustering jerárquico para segmentación de clientes.
Identificar estructuras naturales dentro del comportamiento de consumo.
Determinar el número óptimo de segmentos mediante dendrograma.
Generar recomendaciones personalizadas basadas en pertenencia a clústeres.
Validar la coherencia de los grupos mediante reducción dimensional (PCA).

Durante el desarrollo se aplicaron los siguientes procesos:

Exploración y validación del dataset.
Estandarización de variables numéricas.
Construcción del dendrograma con método Ward.
Aplicación de Agglomerative Clustering.
Análisis estadístico por clúster.
Interpretación de perfiles de consumo.
Recomendación basada en similitud intra-grupo.
Tecnologías Utilizadas
Lenguaje
Python 3.11
Entorno de Desarrollo
Jupyter Notebook
Visual Studio Code
Librerías principales
Pandas
NumPy
Matplotlib
Seaborn
Scikit-Learn
SciPy
Estructura del Proyecto
038-clustering-jerarquico-segmentacion-clientes-robertscience

│
├── data
│   └── Amazon.xlsx   (NO SUBIDO - Restricción de peso)
│
├── notebooks
│   └── Práctica_M26_Clustering_Jerárquico.ipynb
│
├── img
│   └── output.png
│
├── requirements.txt
│
└── README.md
Descripción de Carpetas y Archivos
data

En esta carpeta se encontraba el dataset original utilizado para el análisis:

Amazon.xlsx

Este archivo contiene las evaluaciones de productos realizadas por 100 clientes en múltiples dimensiones de experiencia.

⚠️ Nota importante:
El archivo no fue incluido en el repositorio debido a restricciones de tamaño y buenas prácticas de almacenamiento en GitHub.

La estructura del proyecto está diseñada para permitir su reproducción local mediante la carga del archivo en la ruta:

data/Amazon.xlsx
notebooks

Contiene el desarrollo completo del análisis:

Práctica_M26_Clustering_Jerárquico.ipynb

Dentro del notebook se implementó:

Carga y exploración del dataset.
Renombramiento y estructuración de variables.
Análisis estadístico descriptivo.
Estandarización de datos.
Construcción del dendrograma.
Segmentación mediante Agglomerative Clustering.
Análisis de distribución por clúster.
Identificación de clientes clave.
Generación de recomendaciones.
Reducción dimensional con PCA.
img

Contiene las visualizaciones generadas durante el análisis.

Incluye:

Dendrograma de clustering jerárquico.
Visualización de clusters en 2D mediante PCA.
Matriz visual de separación de segmentos.

Archivo principal:

output.png
Flujo de Desarrollo
1. Exploración del Dataset

Se realizó una exploración inicial para comprender la estructura de los datos:

100 registros de clientes.
10 variables de evaluación.
Variables numéricas con diferentes escalas.

Se identificaron diferencias significativas en magnitud entre variables, lo que justificó la necesidad de estandarización.

2. Preparación de Datos

Se ejecutaron procesos de limpieza estructural:

Renombramiento de la columna de clientes.
Establecimiento del índice por cliente.
Validación de estructura del dataset.

Esto permitió trabajar exclusivamente con variables numéricas.

3. Estandarización

Se aplicó StandardScaler para normalizar las variables:

Media = 0
Desviación estándar = 1

Este paso fue crítico para garantizar que ninguna variable dominara el cálculo de distancias en el clustering.

4. Construcción del Dendrograma

Se utilizó el método Ward para construir el dendrograma.

Este permitió:

Visualizar la estructura jerárquica de los clientes.
Identificar puntos de corte óptimos.
Determinar el número de clusters más coherente.

Se definieron 4 segmentos principales.

5. Aplicación del Modelo

Se implementó el modelo:

AgglomerativeClustering(n_clusters=4, linkage='ward')

Resultado:

Segmentación de los 100 clientes en 4 grupos.
Asignación directa de clúster a cada observación.
6. Análisis de Clusters

Se evaluó la distribución de clientes:

Cluster 2: mayor volumen de clientes
Clusters restantes: distribución equilibrada

Se calcularon promedios por cluster para identificar perfiles conductuales diferenciados.

7. Interpretación de Perfiles

Se identificaron patrones claros:

Un grupo orientado a durabilidad y tamaño de paquete.
Otro con mayor sensibilidad al precio.
Segmentos con balance intermedio entre variables.

Esto permitió definir perfiles de consumo consistentes.

8. Sistema de Recomendación

Se generaron recomendaciones para:

Salome
Stephania
Lydia

La lógica aplicada fue:

Clientes dentro del mismo cluster comparten patrones de comportamiento similares, por lo tanto pueden recibir recomendaciones basadas en productos consumidos por otros miembros del mismo grupo.

9. Validación con PCA

Se aplicó reducción dimensional con PCA a 2 componentes:

Validación visual de separación de clusters.
Confirmación de coherencia estructural.
Evidencia de segmentación bien definida.
Imagen del Proyecto

El análisis generó una visualización final del clustering:

img/output.png

Esta imagen representa la separación de los clusters tras la reducción dimensional.

Conclusión

El análisis de Clustering Jerárquico permitió segmentar clientes en grupos homogéneos basados en patrones de evaluación de productos.

La estructura jerárquica obtenida mediante dendrograma facilitó la identificación del número óptimo de clusters, mientras que la aplicación del modelo permitió asignar cada cliente a un segmento específico con comportamiento consistente.

La segmentación resultante habilitó la construcción de recomendaciones personalizadas basadas en similitud estadística, transformando datos de evaluación en información accionable para toma de decisiones.

Este enfoque demuestra el valor del clustering como herramienta de análisis exploratorio avanzado para segmentación de clientes y estrategias de recomendación.

Reflexión Final

Durante el desarrollo del proyecto se evidenció la importancia de la estandarización de variables para evitar sesgos en el cálculo de distancias.

La interpretación del dendrograma fue clave para comprender la estructura natural del dataset, permitiendo una segmentación coherente sin necesidad de supervisión.

El uso de clustering jerárquico mostró su utilidad no solo como técnica de agrupamiento, sino también como herramienta para generación de estrategias comerciales basadas en comportamiento real de los usuarios.

Recomendación Estratégica Empresarial

A partir de los clusters obtenidos, se recomienda:

Implementar sistemas de recomendación basados en similitud de grupo.
Diseñar campañas de marketing segmentadas por clúster.
Optimizar inventarios según perfil de consumo.
Potenciar estrategias de cross-selling dentro de cada segmento.

La segmentación conductual permite transformar datos históricos en decisiones estratégicas orientadas a la personalización del cliente.

RobertScience
Data Analytics & Engineering Solutions

https://robertscience.online