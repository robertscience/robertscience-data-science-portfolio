# Proyecto 031 - M23-CD Clasificación con Árboles de Decisión: Predicción de Medicamento

## Autor

RobertScience

## Programa

Profesión Científico de Datos v2


---

# Descripción del Proyecto

En este proyecto desarrollé un modelo de Machine Learning supervisado orientado a clasificación multiclase utilizando Árboles de Decisión.

El objetivo principal fue construir un sistema predictivo capaz de identificar el medicamento más adecuado para un paciente a partir de sus características clínicas.

El análisis se realizó utilizando información simulada de pacientes que recibieron diferentes medicamentos:

- Drug A
- Drug B
- Drug C
- Drug X
- Drug Y


El proyecto aplica técnicas de preparación de datos, transformación de variables categóricas, entrenamiento de modelos, evaluación mediante métricas de clasificación e interpretación de reglas generadas por el árbol de decisión.


---

# Objetivo Técnico

Mi objetivo en este proyecto fue desarrollar y evaluar modelos de clasificación basados en Árboles de Decisión utilizando dos criterios diferentes de división:

- Índice de impureza Gini.
- Entropía.


A través de este análisis busqué:

- Identificar la relación entre variables clínicas y medicamento asignado.
- Evaluar el desempeño predictivo del modelo.
- Comparar diferentes configuraciones del algoritmo.
- Seleccionar una estructura interpretable.
- Extraer reglas de decisión generadas por el modelo.


---

# Tecnologías Utilizadas

## Lenguaje

- Python 3.11


## Entorno de desarrollo

- Visual Studio Code
- Jupyter Notebook


## Librerías principales

- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-Learn


---

# Estructura del Proyecto



031-M23-CD-clasificacion-arboles-decision-prediccion-medicamento-robertscience

│
├── data
│ └── drugs.csv
│
├── notebooks
│ └── Tarea_M23-CD_robertscience.ipynb
│
├── img
│ └── Visualizaciones generadas durante el análisis
│
├── .venv
│ └── Entorno virtual independiente del proyecto
│
└── README.md



---

# Descripción de Carpetas y Archivos


## data

Esta carpeta contiene los archivos utilizados como fuente de información para el análisis.

El archivo utilizado fue:


drugs.csv



Por políticas de organización del repositorio, los datasets originales no se incluyen dentro de GitHub cuando su tamaño puede afectar la estructura del proyecto o la correcta gestión del repositorio.

La existencia, nombre y ubicación esperada del archivo quedan documentados para permitir la reproducción local del análisis.


Ruta esperada:


data/drugs.csv



---

## notebooks

Contiene el notebook principal donde desarrollé todo el flujo de Machine Learning.


Archivo:


Tarea_M23-CD_robertscience.ipynb



Dentro del notebook documenté:

- Carga e inspección inicial de datos.
- Análisis exploratorio.
- Transformación de variables categóricas.
- Separación de variables predictoras y objetivo.
- División entrenamiento/prueba.
- Construcción de modelos.
- Evaluación de resultados.
- Interpretación del árbol generado.
- Predicción sobre un nuevo paciente.


---

## img

Esta carpeta está destinada al almacenamiento de resultados visuales generados durante el análisis.


Incluye elementos como:

- Matrices de confusión.
- Visualizaciones del árbol de decisión.
- Gráficas comparativas.
- Resultados exportados del modelo.


Su finalidad es mantener evidencia visual del proceso analítico.


---

## .venv

Contiene el entorno virtual exclusivo utilizado para este proyecto.


El objetivo de mantener un entorno independiente es garantizar:

- Reproducibilidad.
- Control de versiones de librerías.
- Separación entre proyectos.
- Evitar conflictos con instalaciones globales de Python.


---

# Flujo del Desarrollo


## 1. Preparación del entorno

Configuré un entorno virtual independiente para ejecutar el proyecto.


Dependencias principales:



numpy
pandas
matplotlib
seaborn
scikit-learn
jupyter
ipykernel



---

# 2. Carga y Exploración de Datos

Realicé una revisión inicial del dataset para conocer:

- Número de registros.
- Variables disponibles.
- Tipos de datos.
- Distribución de medicamentos.


El conjunto contiene información clínica como:

- Edad.
- Sexo.
- Presión arterial.
- Colesterol.
- Índice Na_to_K.


La variable objetivo corresponde al medicamento asignado.


---

# 3. Preparación de Datos

Debido a que los modelos de Machine Learning requieren información numérica, realicé una transformación de variables categóricas mediante LabelEncoder.


Las variables transformadas fueron:

- Sex.
- BP.
- Cholesterol.
- Drug.


Posteriormente separé:

Variable predictora:


X



Variable objetivo:


y



---

# 4. Entrenamiento del Modelo


Construí dos modelos basados en Árboles de Decisión:


## Modelo Gini

Configuración utilizada:

- criterion = gini
- max_depth = 4


## Modelo Entropía

Configuración utilizada:

- criterion = entropy
- max_depth = 4


La profundidad máxima fue seleccionada buscando mantener un equilibrio entre capacidad predictiva e interpretación del modelo.


---

# 5. Evaluación del Modelo


Para medir el desempeño utilicé:


- Accuracy.
- Precision.
- Recall.
- F1-score.
- Matriz de confusión.


También realicé pruebas variando la profundidad del árbol desde:


max_depth 2 hasta 6



Esto permitió analizar el comportamiento del modelo conforme aumentaba su complejidad.


---

# 6. Interpretación del Modelo


Una de las ventajas principales del Árbol de Decisión es su capacidad de interpretación.


El modelo permitió identificar reglas de decisión relacionadas principalmente con:

- Índice Na_to_K.
- Presión arterial.
- Edad.
- Colesterol.


La variable con mayor influencia en la clasificación fue:


Na_to_K



Esta variable permitió establecer una separación clara entre diferentes categorías de medicamento.


---

# Resultados Principales


Los modelos evaluados alcanzaron:



Accuracy = 1.00



Ambos criterios:

- Gini.
- Entropía.


presentaron resultados equivalentes para este conjunto de datos.


Para la interpretación final seleccioné el modelo basado en Gini debido a su representación clara mediante reglas de decisión.


---

# Predicción de Nuevo Paciente


Finalmente probé el modelo con un nuevo registro clínico.


El sistema fue capaz de procesar las características del paciente y generar una predicción del medicamento recomendado.


Resultado obtenido:


drugY



La clasificación fue explicada mediante las reglas generadas por el árbol.


---

# Reproducibilidad del Proyecto


Para ejecutar este proyecto:


1. Crear un entorno virtual.



python -m venv .venv



2. Activar entorno.


Windows:



.venv\Scripts\activate



3. Instalar dependencias.



pip install numpy pandas matplotlib seaborn scikit-learn jupyter ipykernel



4. Abrir VS Code desde la carpeta raíz.



code .



5. Seleccionar el kernel correspondiente al entorno virtual.


6. Ejecutar el notebook:



notebooks/Tarea_M23-CD_robertscience.ipynb



---

# Consideraciones del Repositorio


Los archivos de datos originales no fueron incluidos dentro del repositorio público debido a criterios de tamaño y administración del almacenamiento.


La estructura del proyecto mantiene documentada la ubicación esperada de los datasets para que cualquier usuario pueda reproducir el análisis colocando los archivos correspondientes dentro de la carpeta:



data/



---

# Conclusión


Este proyecto representa la aplicación práctica de técnicas de Machine Learning supervisado mediante Árboles de Decisión.

Durante el desarrollo realicé un flujo completo de análisis que incluye preparación de datos, construcción de modelos, evaluación estadística e interpretación de resultados.

El modelo obtenido demuestra la utilidad de los algoritmos basados en árboles cuando se requiere no solamente capacidad predictiva, sino también explicabilidad sobre las decisiones generadas.