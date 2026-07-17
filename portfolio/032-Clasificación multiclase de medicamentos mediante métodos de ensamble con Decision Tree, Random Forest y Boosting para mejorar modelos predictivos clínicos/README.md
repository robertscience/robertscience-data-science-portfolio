# Proyecto 024 - Clasificación Multiclase con Métodos de Ensamble: Predicción de Medicamento

## Machine Learning Supervisado con Árboles de Decisión, Random Forest y Boosting

**RobertScience Data Analytics Consulting**

---

# Descripción del Proyecto

En este proyecto desarrollé un sistema de Machine Learning supervisado orientado a clasificación multiclase utilizando diferentes métodos de ensamble.

El objetivo principal fue construir un modelo predictivo capaz de identificar el medicamento más adecuado para un paciente a partir de sus características clínicas.

El análisis fue realizado utilizando un conjunto de datos clínicos donde cada registro representa un paciente que respondió favorablemente a uno de cinco medicamentos diferentes:

* Drug A
* Drug B
* Drug C
* Drug X
* Drug Y

Las variables utilizadas para la predicción fueron:

* Edad del paciente.
* Sexo.
* Presión arterial.
* Nivel de colesterol.
* Relación Sodio/Potasio (Na_to_K).

Durante el desarrollo implementé un flujo completo de Machine Learning que incluye exploración de datos, transformación de variables, entrenamiento de modelos, evaluación mediante métricas de clasificación y comparación del desempeño entre diferentes algoritmos.

---

# Objetivo Técnico

Mi objetivo en este proyecto fue desarrollar y comparar modelos de clasificación multiclase utilizando algoritmos basados en árboles y métodos de ensamble.

A través del análisis busqué:

* Construir un modelo base utilizando Árbol de Decisión.
* Evaluar técnicas de ensamble para mejorar estabilidad predictiva.
* Comparar diferentes algoritmos de clasificación.
* Analizar métricas de desempeño por clase.
* Identificar la importancia de variables predictoras.
* Determinar el modelo con mejor comportamiento para este conjunto de datos.

Los modelos evaluados fueron:

* Decision Tree Classifier.
* Random Forest Classifier.
* AdaBoost Classifier.
* Gradient Boosting Classifier.

---

# Tecnologías Utilizadas

## Lenguaje

* Python 3.11

## Entorno de Desarrollo

* Visual Studio Code.
* Jupyter Notebook.

## Librerías principales

* Pandas.
* NumPy.
* Matplotlib.
* Seaborn.
* Scikit-Learn.

---

# Estructura del Proyecto

```text
024-clasificacion-multiclase-metodos-ensamble-prediccion-medicamento-robertscience

│
├── data
│   └── drugs.csv
│
├── notebooks
│   └── Tarea_M24-CD_robertscience.ipynb
│
├── img
│   └── Evidencias visuales del análisis
│
├── docs
│   └── Reporte técnico del proyecto
│
├── requirements.txt
│
└── README.md
```

---

# Descripción de Carpetas y Archivos

## data

Esta carpeta contiene el conjunto de datos utilizado durante el análisis.

Archivo utilizado:

```text
drugs.csv
```

El dataset contiene información clínica de pacientes y la variable objetivo correspondiente al medicamento asignado.

Por criterios de organización del repositorio, administración del almacenamiento y tamaño de archivos, los datos originales no se incluyen dentro del repositorio público.

La estructura mantiene documentada la ubicación esperada para permitir la reproducción local del proyecto.

Ruta esperada:

```text
data/drugs.csv
```

---

## notebooks

Contiene el notebook principal donde desarrollé todo el flujo analítico y predictivo.

Archivo:

```text
Tarea_M24-CD_robertscience.ipynb
```

Dentro del notebook implementé:

* Carga e inspección del dataset.
* Análisis exploratorio inicial.
* Validación de estructura de datos.
* Transformación de variables categóricas.
* División entrenamiento/prueba.
* Construcción de modelos.
* Evaluación mediante métricas.
* Comparación de algoritmos.
* Interpretación de resultados.

---

## img

Esta carpeta contiene las evidencias visuales generadas durante el análisis.

Incluye:

* Matrices de confusión.
* Visualizaciones comparativas.
* Resultados gráficos del modelo.

Su finalidad es documentar visualmente el comportamiento de los algoritmos evaluados.

---

## docs

Contiene documentación técnica adicional del proyecto.

Incluye el reporte generado en formato HTML preparado para conversión a PDF.

---

# Flujo de Desarrollo

## 1. Exploración inicial de datos

Inicié el proyecto realizando una inspección general del conjunto de datos.

Analicé:

* Dimensiones del dataset.
* Tipos de variables.
* Existencia de valores nulos.
* Distribución de la variable objetivo.

El conjunto contiene 200 registros con variables numéricas y categóricas.

---

# 2. Preparación de Datos

Debido a que los modelos de Machine Learning requieren valores numéricos, transformé las variables categóricas utilizando Label Encoding.

Las variables transformadas fueron:

* Sex.
* BP.
* Cholesterol.
* Drug.

Posteriormente separé:

Variable predictora:

```text
X
```

Variable objetivo:

```text
y
```

---

# 3. División del Dataset

Realicé la separación del conjunto de datos utilizando:

* 70% entrenamiento.
* 30% prueba.

Implementé el parámetro:

```python
stratify=y
```

para conservar la distribución original de las clases dentro de ambos subconjuntos.

---

# 4. Modelo Base: Árbol de Decisión

Inicialmente desarrollé un modelo individual basado en Decision Tree Classifier.

El modelo obtuvo:

```text
Accuracy: 98.33%
```

Este resultado permitió establecer una línea base para comparar posteriormente los métodos de ensamble.

---

# 5. Implementación de Métodos de Ensamble

## Random Forest

Implementé Random Forest utilizando múltiples árboles de decisión combinados mediante la técnica de Bagging.

Resultado obtenido:

```text
Accuracy: 98.33%
```

Además realicé validación cruzada para analizar la estabilidad del modelo.

---

## AdaBoost

Evalué AdaBoost como método basado en Boosting.

Resultado obtenido:

```text
Accuracy: 83.33%
```

El modelo presentó menor desempeño debido a una menor capacidad para capturar la estructura del conjunto de datos.

---

## Gradient Boosting

Implementé Gradient Boosting como otro método basado en Boosting secuencial.

Resultado obtenido:

```text
Accuracy: 96.67%
```

El modelo mostró un comportamiento estable y métricas equilibradas entre clases.

---

# Comparación de Modelos

| Modelo            | Accuracy |
| ----------------- | -------: |
| Árbol de Decisión |   98.33% |
| Random Forest     |   98.33% |
| Gradient Boosting |   96.67% |
| AdaBoost          |   83.33% |

---

# Resultados Obtenidos

Después de evaluar los diferentes algoritmos identifiqué que:

* El Árbol de Decisión logró capturar correctamente las relaciones principales del problema.
* Random Forest mantuvo el mismo nivel predictivo aportando mayor estabilidad mediante múltiples árboles.
* Gradient Boosting presentó un rendimiento alto y consistente.
* AdaBoost tuvo menor desempeño para este conjunto específico.

El análisis confirmó que para este problema la complejidad adicional de algunos métodos de ensamble no generó una mejora significativa sobre el modelo base.

---

# Importancia de Variables

El análisis de importancia generado por Random Forest permitió identificar las variables con mayor influencia en la clasificación.

Las variables más relevantes fueron:

* Na_to_K.
* BP.
* Age.
* Cholesterol.
* Sex.

Esto permitió interpretar qué características clínicas tuvieron mayor peso dentro de las decisiones del modelo.

---

# Reproducibilidad del Proyecto

Para ejecutar este proyecto:

```bash
python -m venv .venv
```

Activar entorno virtual:

Windows:

```bash
.venv\Scripts\activate
```

Instalar dependencias:

```bash
pip install -r requirements.txt
```

Abrir el proyecto:

```bash
code .
```

Ejecutar:

```text
notebooks/Tarea_M24-CD_robertscience.ipynb
```

---

# Aplicación Profesional

Los métodos utilizados en este proyecto forman parte de soluciones reales dentro de:

* Machine Learning aplicado.
* Sistemas de recomendación.
* Clasificación automática.
* Análisis predictivo.
* Inteligencia artificial aplicada a datos clínicos.

La combinación entre capacidad predictiva e interpretación del modelo permite construir soluciones orientadas a la toma de decisiones.

---

# Autor

**RobertScience**

Data Analytics & Engineering Solutions

Transformando datos en decisiones inteligentes.

https://robertscience.online
