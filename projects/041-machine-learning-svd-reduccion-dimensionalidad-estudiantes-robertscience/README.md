# Proyecto 041 - Descomposición de Valores Singulares (SVD): Reducción de Dimensionalidad y Análisis de Agrupación en Dataset de Estudiantes

Machine Learning No Supervisado | Análisis Multivariado | Reducción de Dimensionalidad | SVD | PCA Comparativo

RobertScience Data Analytics Consulting


# Descripción del Proyecto

En este proyecto desarrollé un análisis multivariado utilizando la técnica de **Descomposición de Valores Singulares (SVD)** aplicada a un conjunto de datos académicos compuesto por estudiantes y sus calificaciones en diferentes materias.

El objetivo principal fue estudiar la estructura interna del dataset mediante técnicas de reducción de dimensionalidad, transformando las variables originales en nuevas representaciones matemáticas capaces de conservar la mayor cantidad posible de información relevante.

A través de la aplicación de SVD fue posible representar el desempeño académico de los estudiantes en espacios reducidos de dos y tres dimensiones, facilitando la identificación de patrones, similitudes y diferencias entre las observaciones.

Además, se realizó una comparación con el método de **Análisis de Componentes Principales (PCA)** para analizar la consistencia de los resultados obtenidos mediante ambas técnicas.


El conjunto de datos contiene información académica de estudiantes considerando las siguientes variables:

- Matemáticas
- Ciencias
- Español
- Historia
- Educación Física


Cada registro representa el desempeño individual de un estudiante, permitiendo analizar relaciones entre diferentes áreas académicas y observar posibles agrupamientos naturales dentro de la información.


# Objetivo Técnico

El objetivo principal del proyecto fue aplicar la técnica de **Descomposición de Valores Singulares (SVD)** como método de reducción dimensional para transformar un conjunto de variables multivariadas en una representación simplificada conservando la información más importante.

Durante el desarrollo del análisis se realizaron los siguientes procesos:

- Construcción del dataset académico.
- Exploración inicial de estructura y características.
- Validación de tipos de variables.
- Selección de variables numéricas.
- Estandarización mediante StandardScaler.
- Aplicación del algoritmo TruncatedSVD.
- Reducción dimensional a dos componentes.
- Reducción dimensional a tres componentes.
- Cálculo de varianza explicada.
- Visualización de observaciones en espacios reducidos.
- Comparación contra PCA.
- Interpretación de resultados obtenidos.


# Tecnologías Utilizadas


## Lenguaje

Python 3.11


## Entorno de Desarrollo

Jupyter Notebook

Visual Studio Code


## Librerías principales

- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-Learn


# Estructura del Proyecto



041-descomposicion-valores-singulares-svd-estudiantes-robertscience

│
├── notebooks
│ └── Practica M29 – RobertScience.ipynb
│
├── img
│ ├── svd_proyeccion_2d.png
│ ├── svd_proyeccion_3d.png
│ ├── pca_comparacion_2d.png
│ └── varianza_explicada_svd.png
│
├── data
│ └── README.md
│
├── requirements.txt
│
└── README.md



# Descripción de Carpetas y Archivos


## notebooks

Contiene el desarrollo completo del análisis realizado mediante Jupyter Notebook.


Archivo principal:


Practica M29 – RobertScience.ipynb



Dentro del notebook se implementó:

- Creación del dataframe académico.
- Exploración estadística inicial.
- Preparación de variables.
- Normalización de datos.
- Aplicación de SVD.
- Reducción dimensional.
- Visualización 2D.
- Visualización 3D.
- Aplicación de PCA.
- Comparación de resultados.
- Interpretación final.


# data

La carpeta está destinada al almacenamiento de datasets utilizados durante el análisis.


En proyectos profesionales, los archivos de datos pueden excluirse del repositorio cuando representan información pesada, contienen datos sensibles o requieren actualización independiente.


Para este proyecto el dataset fue generado directamente dentro del notebook debido a su reducido tamaño, por lo que no fue necesario incluir archivos externos.


# Flujo de Desarrollo


# 1. Construcción del Dataset

El análisis inició mediante la creación de un conjunto de datos académico compuesto por diez estudiantes y cinco variables numéricas relacionadas con su desempeño escolar.


La estructura permitió trabajar con información multivariada para estudiar relaciones entre diferentes áreas de evaluación.


Variables utilizadas:

- Matemáticas.
- Ciencias.
- Español.
- Historia.
- Educación Física.


La variable correspondiente al nombre del estudiante fue utilizada únicamente como identificador para interpretar posteriormente las visualizaciones.


# 2. Exploración Inicial de Datos

Se realizó una revisión inicial utilizando métodos descriptivos para conocer:

- Número de registros.
- Tipos de variables.
- Valores disponibles.
- Distribución estadística.


La exploración permitió confirmar que el dataset estaba preparado para aplicar técnicas de reducción dimensional.


# 3. Selección de Variables Numéricas

Para aplicar SVD se conservaron únicamente las variables cuantitativas.


La columna de identificación del estudiante fue excluida del cálculo matemático debido a que no representa una característica numérica del modelo.


Las variables utilizadas fueron:



Matemáticas
Ciencias
Español
Historia
EdFisica



# 4. Estandarización de Datos

Antes de aplicar SVD fue necesario transformar las variables mediante:


StandardScaler()



Este proceso permitió que todas las características trabajaran bajo la misma escala estadística.


La transformación generó variables con:

- Media igual a 0.
- Desviación estándar igual a 1.


La estandarización evita que una variable tenga mayor influencia únicamente por diferencias en sus unidades de medición.


# 5. Aplicación de Descomposición de Valores Singulares (SVD)


Se aplicó el algoritmo:



TruncatedSVD()



La técnica permitió descomponer la matriz original del dataset en componentes reducidos capaces de representar la estructura principal de los datos.


La reducción dimensional permitió analizar el comportamiento de los estudiantes en nuevos espacios matemáticos.


# 6. Reducción Dimensional a Dos Componentes


Se realizó una transformación utilizando:



TruncatedSVD(n_components=2)



Esto permitió representar cada estudiante mediante dos nuevas dimensiones.


La proyección facilitó:

- Visualización de similitudes.
- Identificación de patrones.
- Comparación entre observaciones.


# 7. Análisis de Varianza Explicada


Se evaluó la cantidad de información conservada después de aplicar SVD.


Resultados obtenidos:


Primer componente:


57.86%



Segundo componente:


32.57%



Varianza acumulada:



90.43%



Los resultados muestran que dos componentes son capaces de conservar aproximadamente el 90% de la información original del dataset.


# 8. Visualización SVD en Dos Dimensiones


Se generó una representación gráfica donde cada punto corresponde a un estudiante dentro del espacio reducido.


Esta visualización permitió observar:

- Cercanía entre perfiles académicos similares.
- Diferencias entre estudiantes.
- Posibles agrupamientos naturales.


# 9. Visualización SVD en Tres Dimensiones


Posteriormente se aplicó:



TruncatedSVD(n_components=3)



La representación tridimensional permitió incorporar una dimensión adicional para analizar si mejoraba la separación visual entre observaciones.


El análisis mostró una ligera mejora en algunos casos, aunque la representación bidimensional ya conservaba suficiente información para interpretar patrones generales.


# 10. Comparación con PCA


Para validar los resultados obtenidos mediante SVD se aplicó:



PCA(n_components=2)



sobre el mismo conjunto de datos estandarizado.


La comparación permitió observar que ambas técnicas generan estructuras similares debido a que trabajan sobre la variabilidad interna de la matriz de datos.


Aunque presentan diferencias matemáticas:

- SVD realiza una descomposición general de matrices.
- PCA busca maximizar la varianza explicada mediante componentes ortogonales.


Ambos métodos resultaron adecuados para este escenario.


# Resultados del Proyecto


## Reducción efectiva de dimensionalidad

El conjunto original compuesto por cinco variables académicas pudo representarse mediante componentes reducidos conservando aproximadamente el 90% de la información.


## Identificación de patrones

La representación en espacios reducidos permitió analizar relaciones entre estudiantes según sus características académicas.


## Comparación metodológica

SVD y PCA mostraron resultados consistentes, confirmando que la estructura del dataset puede ser representada adecuadamente mediante técnicas de reducción dimensional.


## Visualización avanzada

La transformación matemática permitió convertir información multidimensional en representaciones gráficas más fáciles de interpretar.


# Aplicaciones Profesionales de SVD


La Descomposición de Valores Singulares es utilizada en Ciencia de Datos para:


- Reducción dimensional en grandes volúmenes de información.
- Compresión de datos.
- Sistemas de recomendación.
- Procesamiento de lenguaje natural.
- Análisis de matrices.
- Extracción de características.
- Preparación de datos para Machine Learning.


# Conclusión


La aplicación de SVD permitió transformar un conjunto de datos académico multidimensional en representaciones simplificadas manteniendo una proporción significativa de la información original.


El análisis confirmó que es posible utilizar técnicas matemáticas avanzadas para descubrir estructuras internas dentro de los datos y facilitar su interpretación mediante visualizaciones reducidas.


La comparación realizada con PCA permitió comprender la relación existente entre ambas metodologías y validar que diferentes enfoques de reducción dimensional pueden producir resultados equivalentes cuando trabajan sobre estructuras de datos similares.


Este proyecto demuestra la importancia de las técnicas de álgebra lineal aplicada dentro del flujo profesional de Ciencia de Datos, especialmente en procesos donde la interpretación y simplificación de información compleja son fundamentales.


# Reflexión Final


Durante el desarrollo del proyecto comprendí la importancia de aplicar técnicas adecuadas cuando se trabaja con datasets que contienen múltiples variables relacionadas.


La Descomposición de Valores Singulares permitió observar cómo una matriz compleja puede transformarse en una representación más sencilla sin perder los patrones principales presentes en los datos.


Además, la comparación con PCA ayudó a reforzar la importancia de conocer diferentes herramientas matemáticas y seleccionar la técnica adecuada dependiendo de las características del problema.


Este conocimiento representa una base importante para desarrollar soluciones más avanzadas relacionadas con análisis multivariado, reducción dimensional y preparación de información para modelos predictivos.


# Recomendación Estratégica Empresarial


Desde una perspectiva empresarial, las técnicas de reducción dimensional como SVD permiten:


- Simplificar grandes conjuntos de información.
- Mejorar procesos analíticos.
- Reducir complejidad computacional.
- Facilitar visualizaciones ejecutivas.
- Identificar relaciones ocultas entre variables.
- Preparar datos para modelos avanzados de Machine Learning.


La capacidad de transformar información compleja en estructuras interpretables representa una ventaja importante para organizaciones orientadas al análisis y toma de decisiones basada en datos.


# Gestión de Datos en GitHub


Los datasets utilizados en proyectos profesionales deben gestionarse considerando:

- Tamaño de archivos.
- Privacidad de información.
- Licencias de uso.
- Actualización constante.


Cuando los archivos superan los límites recomendados para repositorios GitHub, se recomienda utilizar almacenamiento externo o herramientas como Git LFS.


En este proyecto el dataset fue construido directamente dentro del notebook debido a su tamaño reducido, manteniendo el repositorio ligero y completamente reproducible.


---


RobertScience

Data Analytics & Engineering Solutions

https://robertscience.online