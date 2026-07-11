# Tarea M22-CD – Clasificación con Máquinas de Soporte Vectorial (SVM)

## RobertsScience – Consultoría en Ciencia de Datos


## 1. Descripción del proyecto

En este proyecto desarrollé un modelo predictivo de clasificación utilizando Máquinas de Soporte Vectorial (SVM) aplicado a un conjunto de datos de Recursos Humanos.

El objetivo principal fue analizar los factores relacionados con la rotación laboral y construir un modelo capaz de identificar patrones asociados a la decisión de un empleado de abandonar una organización.

Durante el desarrollo del análisis implementé diferentes configuraciones del algoritmo SVM utilizando distintos kernels:

- Kernel lineal.
- Kernel polinomial.
- Kernel radial (RBF).
- Kernel sigmoide.


La comparación entre modelos permitió evaluar cuál configuración presentó la mejor capacidad predictiva mediante métricas de clasificación y análisis visual de resultados.


El proyecto fue desarrollado utilizando Python, Jupyter Notebook y VS Code bajo un entorno virtual independiente, siguiendo buenas prácticas de reproducibilidad y organización de proyectos de Ciencia de Datos.


---

# 2. Estructura del proyecto



030-M22-CD-clasificacion-svm-rotacion-empleados-robertscience/

│
├── data/
│ └── recursos_humanos.csv
│ # Dataset original utilizado para el análisis.
│
│
├── notebooks/
│ └── Tarea_M22-CD_robertscience.ipynb
│ # Notebook principal con todo el desarrollo del proyecto.
│
│
├── img/
│ └──
│ # Gráficas generadas durante el análisis.
│ # Incluye matrices de confusión y visualizaciones del modelo.
│
│
├── pdf/
│ └── Tarea_M22-CD_robertscience.pdf
│ # Documento exportado con el resultado final del notebook.
│
│
├── .venv/
│ # Entorno virtual exclusivo del proyecto.
│
│
└── README.md
# Documentación general, estructura y reproducción del proyecto.



## Nota sobre archivos de datos

Por motivos de tamaño y buenas prácticas de almacenamiento en GitHub, el archivo original del dataset no fue incluido dentro del repositorio público.

La estructura del proyecto mantiene documentada la ubicación esperada del archivo:


data/recursos_humanos.csv


Para reproducir completamente el análisis, el usuario debe colocar el dataset correspondiente dentro de esta carpeta antes de ejecutar el notebook.


Esta decisión permite mantener el repositorio ligero, organizado y enfocado en el código, metodología y resultados del análisis.


---

# 3. Objetivo del análisis


El objetivo de este proyecto fue desarrollar un modelo de clasificación supervisada capaz de predecir la posibilidad de abandono laboral utilizando información histórica de empleados.


A través del algoritmo SVM busqué identificar patrones dentro de los datos y evaluar qué tipo de frontera de decisión permitía una mejor separación entre empleados que permanecieron en la empresa y empleados que abandonaron la organización.


---

# 4. Preparación del entorno de trabajo


El desarrollo del proyecto fue realizado utilizando:

- Python 3.11
- Visual Studio Code
- Jupyter Notebook
- Entorno virtual independiente (.venv)


El uso de un entorno virtual permitió mantener aisladas las dependencias del proyecto y garantizar que la ejecución fuera reproducible en diferentes equipos.


---

# 5. Instalación de dependencias


Con el entorno virtual activo instalé las siguientes librerías:



pip install numpy pandas matplotlib seaborn scikit-learn statsmodels openpyxl jupyter ipykernel



Estas herramientas fueron utilizadas para:

- Manipulación y análisis de datos con pandas y numpy.
- Visualización de resultados mediante matplotlib y seaborn.
- Construcción y evaluación de modelos mediante scikit-learn.
- Ejecución de notebooks mediante Jupyter.


---

# 6. Configuración del Kernel de Jupyter


Registré un kernel independiente para este proyecto:



python -m ipykernel install --user --name m22-robertscience --display-name "Python M22 RobertsScience"



Posteriormente seleccioné este kernel desde VS Code para asegurar que el notebook utilizara correctamente el entorno virtual asociado.


---

# 7. Flujo del análisis desarrollado


## 1. Carga y exploración inicial de datos

Realicé la carga del dataset de Recursos Humanos y una revisión inicial de:

- Dimensiones del conjunto de datos.
- Tipos de variables.
- Estadísticas descriptivas.
- Distribución de la variable objetivo.


---

## 2. Análisis de la variable objetivo


La variable objetivo utilizada fue:


left



Esta variable representa:

- 0 → empleado permanece en la empresa.
- 1 → empleado abandona la empresa.


Analicé la distribución de clases para identificar posibles desbalances que pudieran afectar el entrenamiento del modelo.


---

## 3. Preparación de variables


Antes del entrenamiento realicé las siguientes transformaciones:


- Separación de variables predictoras y variable objetivo.
- Conversión de variables categóricas mediante One Hot Encoding.
- División del dataset en entrenamiento y prueba.
- Escalamiento de variables.


El escalamiento fue necesario debido a que los modelos SVM son sensibles a la magnitud de las variables utilizadas.


---

# 8. Desarrollo de modelos SVM


Implementé cuatro modelos diferentes:


## SVM Kernel Lineal

Utilizado como modelo base para evaluar una separación lineal entre clases.


## SVM Kernel Polinomial

Aplicado para capturar relaciones no lineales entre variables.


## SVM Kernel RBF

Evaluado debido a su capacidad para construir fronteras de decisión más complejas y adaptarse mejor a problemas con patrones no lineales.


## SVM Kernel Sigmoide

Incluido para completar la comparación entre diferentes funciones kernel disponibles dentro del algoritmo SVM.


---

# 9. Evaluación de modelos


Los modelos fueron evaluados utilizando:


- Accuracy.
- Precision.
- Recall.
- F1-score.
- Matriz de confusión.


Además generé representaciones gráficas para facilitar la interpretación de los resultados obtenidos.


---

# 10. Selección del modelo final


Después de comparar los resultados obtenidos por cada configuración, seleccioné el modelo con mejor desempeño predictivo.


El modelo elegido presentó una mejor capacidad para identificar correctamente los casos positivos y negativos, logrando un equilibrio adecuado entre precisión y capacidad de generalización.


---

# 11. Resultados del proyecto


El análisis permitió demostrar la aplicación práctica de modelos de Machine Learning supervisado en problemas reales de negocio.


El modelo desarrollado puede utilizarse como herramienta de apoyo para:

- Identificación temprana de empleados con riesgo de abandono.
- Análisis de factores relacionados con rotación laboral.
- Apoyo en estrategias de retención de talento.


---

# 12. Entregables


El proyecto contiene:


- Notebook completo en formato `.ipynb`.
- Documento PDF con resultados finales.
- Imágenes generadas durante el análisis.
- Documentación del entorno de ejecución.


---

# 13. Reproducción del proyecto


Para ejecutar nuevamente el análisis:


1. Clonar o descargar el repositorio.

2. Crear el entorno virtual:



python -m venv .venv



3. Activar el entorno:



..venv\Scripts\Activate.ps1



4. Instalar dependencias:



pip install -r requirements.txt



5. Registrar kernel de Jupyter.

6. Abrir el notebook:



notebooks/Tarea_M22-CD_robertscience.ipynb



7. Seleccionar el kernel:


Python M22 RobertsScience



8. Ejecutar las celdas del análisis.


---

# 14. Consideraciones finales


Este proyecto forma parte de mi portafolio profesional de Ciencia de Datos, donde documento la aplicación progresiva de diferentes algoritmos de Machine Learning.


La estructura utilizada busca mantener buenas prácticas de organización, reproducibilidad y documentación técnica, permitiendo que cada proyecto pueda ser analizado, ejecutado y evaluado de manera independiente.


---

Autor:

**RobertScience**

Consultoría en Ciencia de Datos