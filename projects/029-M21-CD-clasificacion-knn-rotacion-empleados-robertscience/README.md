Tarea M21-CD – Clasificación con K Vecinos más Cercanos (KNN)

RobertsScience – Consultoría en Ciencia de Datos

1. Descripción del proyecto

En este proyecto desarrollé un modelo predictivo de clasificación utilizando el algoritmo K Vecinos más Cercanos (KNN) aplicado a un conjunto de datos de Recursos Humanos.

El objetivo principal fue construir un modelo de Machine Learning supervisado capaz de analizar patrones relacionados con la rotación laboral y predecir la posibilidad de abandono de empleados dentro de una organización.

Durante el desarrollo del análisis realicé las etapas completas de un flujo profesional de Ciencia de Datos:

Exploración inicial del conjunto de datos.
Limpieza y preparación de variables.
Transformación de variables categóricas.
Normalización de características.
Separación de datos de entrenamiento y prueba.
Optimización del parámetro K.
Evaluación mediante métricas de clasificación.
Interpretación de resultados mediante matrices de confusión y curvas ROC.

El proyecto fue desarrollado utilizando Python, Jupyter Notebook y Visual Studio Code, manteniendo un entorno virtual independiente para garantizar reproducibilidad y consistencia en la ejecución.

2. Estructura del proyecto

La estructura del proyecto fue organizada siguiendo buenas prácticas de desarrollo para proyectos de Ciencia de Datos.

029_Tarea_M21-CD_robertscience/

│
├── data/
│   └── recursos_humanos.csv

│
├── notebooks/
│   └── Tarea_M21-CD_robertscience.ipynb

│
├── img/
│   └── Gráficas generadas durante el análisis

│
├── pdf/
│   └── Tarea_M21-CD_robertscience.pdf

│
└── README.md
3. Descripción de carpetas y archivos
Carpeta data/

Esta carpeta corresponde al almacenamiento de los datos utilizados durante el análisis.

El proyecto utiliza el archivo:

recursos_humanos.csv

El dataset contiene información histórica de empleados con variables relacionadas con características laborales y una variable objetivo denominada:

left

donde:

0 representa empleados que permanecieron en la empresa.
1 representa empleados que abandonaron la organización.
Nota sobre datasets

Por políticas de organización del repositorio y debido al peso de algunos archivos de datos, los datasets originales no fueron incluidos directamente dentro del repositorio público de GitHub.

La estructura mantiene documentada la ubicación esperada del archivo dentro de la carpeta:

data/

Esto permite reproducir correctamente el proyecto colocando el dataset correspondiente en dicha ubicación antes de ejecutar el notebook.

La documentación del proyecto conserva la referencia del archivo utilizado, su propósito y la forma esperada de integración.

4. Notebook principal

El desarrollo completo del análisis se encuentra en:

notebooks/Tarea_M21-CD_robertscience.ipynb

Dentro del notebook documenté cada etapa del proceso:

Importación de librerías.
Verificación del entorno de ejecución.
Carga e inspección del dataset.
Análisis exploratorio inicial.
Preparación de variables.
Codificación de variables categóricas.
Escalamiento de características.
División Train/Test.
Entrenamiento del modelo KNN.
Evaluación de diferentes valores de K.
Selección del mejor modelo.
Evaluación final.
Interpretación de resultados.

Cada sección contiene explicaciones técnicas junto con el código correspondiente para facilitar la comprensión y reproducibilidad del análisis.

5. Preparación del entorno de trabajo

El proyecto fue desarrollado utilizando un entorno virtual independiente de Python.

La configuración utilizada fue:

Python 3.11
Visual Studio Code
Jupyter Notebook
Scikit-Learn
Pandas
NumPy
Matplotlib
Seaborn
Statsmodels

El entorno virtual permite mantener las dependencias aisladas y evitar conflictos con instalaciones globales del sistema.

6. Creación del entorno virtual

Desde la carpeta principal del proyecto:

python -m venv .venv

Activación del entorno:

.\.venv\Scripts\Activate.ps1

La terminal debe mostrar:

(.venv)

confirmando que el entorno se encuentra activo.

7. Instalación de dependencias

Con el entorno virtual activado instalé las librerías necesarias:

python -m pip install --upgrade pip
pip install numpy pandas matplotlib seaborn scikit-learn statsmodels openpyxl jupyter ipykernel

Estas herramientas permiten:

Librería	Uso
NumPy	Operaciones matemáticas y manejo de arreglos
Pandas	Manipulación y análisis de datos
Matplotlib	Visualización de resultados
Seaborn	Gráficas estadísticas
Scikit-Learn	Modelos Machine Learning
Statsmodels	Análisis estadístico complementario
Openpyxl	Lectura de archivos Excel
Jupyter	Ejecución interactiva de notebooks
8. Configuración del Kernel de Jupyter

Para asegurar que el notebook utiliza correctamente el entorno virtual registré un kernel exclusivo:

python -m ipykernel install --user --name m21-robertscience --display-name "Python M21 RobertsScience"

La ejecución del notebook debe realizarse utilizando:

Python M21 RobertsScience

como kernel seleccionado dentro de VS Code.

9. Flujo del análisis desarrollado

El proyecto siguió el siguiente flujo metodológico:

1. Carga y exploración inicial

Realicé una inspección inicial del conjunto de datos para conocer:

Número de registros.
Tipos de variables.
Distribución de información.
Posibles inconsistencias.
2. Preparación de datos

Realicé las transformaciones necesarias para adaptar los datos al modelo KNN:

Separación de variables predictoras y variable objetivo.
Conversión de variables categóricas mediante codificación.
Revisión del balance de clases.
Normalización de variables numéricas.

El escalamiento fue necesario debido a que KNN calcula distancias entre observaciones y requiere que las variables tengan una escala comparable.

3. Entrenamiento del modelo KNN

Implementé diferentes configuraciones del parámetro:

K = 1 hasta K = 20

para identificar el valor que proporcionara el mejor desempeño predictivo.

La selección del modelo se realizó comparando:

Accuracy.
Matriz de confusión.
Capacidad de clasificación.
Generalización sobre datos no utilizados durante el entrenamiento.
4. Evaluación del modelo seleccionado

El modelo final fue evaluado mediante:

Matriz de confusión.
Curva ROC.
Área bajo la curva (AUC).
Interpretación de errores de clasificación.

Estos elementos permitieron analizar no solamente el desempeño global del modelo, sino también su comportamiento al identificar empleados con riesgo de abandono.

10. Evidencias visuales

La carpeta:

img/

contiene las gráficas generadas durante el análisis.

Entre ellas:

Distribuciones de variables.
Comparaciones de valores K.
Matrices de confusión.
Curvas ROC.
Visualizaciones utilizadas para interpretar resultados.

Estas evidencias permiten conservar un registro visual del proceso analítico.

11. Documento PDF

El reporte final del proyecto se encuentra en:

pdf/Tarea_M21-CD_robertscience.pdf

Este documento contiene la versión exportada del notebook con:

Código ejecutado.
Resultados obtenidos.
Gráficas.
Interpretaciones.
Conclusiones finales.
12. Reproducción del proyecto

Para reproducir este análisis se deben seguir los siguientes pasos:

Descargar el repositorio.
Crear el entorno virtual.
Instalar las dependencias.
Registrar el kernel de Jupyter.
Colocar el dataset correspondiente dentro de:
data/
Abrir VS Code.
Seleccionar el kernel:
Python M21 RobertsScience
Ejecutar el notebook:
Tarea_M21-CD_robertscience.ipynb
13. Buenas prácticas aplicadas

Durante el desarrollo del proyecto mantuve las siguientes prácticas:

Uso exclusivo de entorno virtual por proyecto.
Separación de datos, notebooks y resultados.
Documentación completa del flujo de trabajo.
Organización reproducible del repositorio.
Separación entre código fuente y evidencias.
Control de versiones mediante GitHub.
14. Conclusiones

Este proyecto permitió aplicar un modelo de clasificación supervisada utilizando K Vecinos más Cercanos para analizar un problema real relacionado con la rotación de empleados.

A través del proceso completo de preparación, entrenamiento y evaluación fue posible construir un modelo capaz de identificar patrones asociados al abandono laboral.

El análisis permitió comprender la importancia de la preparación adecuada de los datos, la selección del parámetro óptimo del modelo y la interpretación correcta de las métricas obtenidas.

El resultado final representa una implementación reproducible de un flujo profesional de Machine Learning aplicado a un escenario empresarial.

Autor:
RobertScience

Proyecto:
Tarea M21-CD – Clasificación con KNN

Área:
Ciencia de Datos y Machine Learning Aplicado