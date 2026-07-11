# Proyecto 035 - Clasificación Binaria con Regresión Logística: Predicción del Origen del Medicamento

## Machine Learning Supervisado | Clasificación Binaria | Modelos Interpretables

**RobertScience Data Analytics Consulting**

---

# Descripción del Proyecto

En este proyecto desarrollé un modelo de Machine Learning supervisado basado en Regresión Logística para resolver un problema de clasificación binaria relacionado con el origen del medicamento recomendado para un paciente.

El objetivo principal fue determinar si el tratamiento adecuado corresponde a un proveedor nacional o extranjero utilizando variables clínicas como:

* Edad.
* Sexo.
* Presión arterial.
* Nivel de colesterol.
* Índice Sodio/Potasio (Na_to_K).

El dataset original contiene cinco medicamentos diferentes:

* Drug A.
* Drug B.
* Drug C.
* Drug X.
* Drug Y.

Para transformar el problema original en una clasificación binaria, agrupé los medicamentos según su origen:

* Proveedor Nacional.
* Proveedor Extranjero.

Este enfoque permitió construir un modelo predictivo interpretable capaz de estimar la probabilidad de pertenencia a cada categoría.

---

# Objetivo Técnico

Mi objetivo en este proyecto fue desarrollar y evaluar un modelo de clasificación binaria utilizando Regresión Logística.

Durante el desarrollo busqué:

* Transformar un problema multiclase en una clasificación binaria.
* Preparar variables clínicas para modelos predictivos.
* Evaluar diferentes métodos de optimización.
* Comparar el desempeño de distintos solvers.
* Medir la capacidad discriminativa mediante ROC y AUC.
* Analizar la interpretabilidad del modelo.

Los métodos de optimización evaluados fueron:

* liblinear.
* lbfgs.
* saga.
* newton-cg.

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
035-clasificacion-binaria-regresion-logistica-proveedor-medicamento-robertscience

│
├── data
│   └── drugs.csv
│
├── notebooks
│   └── Tarea_M25-CD_robertscience.ipynb
│
├── img
│   └── Visualizaciones generadas durante el análisis
│
├── docs
│   ├── Reporte_Regresion_Logistica.html
│   └── Reporte_Regresion_Logistica.pdf
│
├── requirements.txt
│
└── README.md
```

---

# Descripción de Carpetas y Archivos

## data

Esta carpeta contiene la fuente de datos utilizada durante el desarrollo.

Archivo:

```text
drugs.csv
```

El dataset contiene información clínica de pacientes y la respuesta obtenida ante diferentes medicamentos.

Variables principales:

* Age.
* Sex.
* BP.
* Cholesterol.
* Na_to_K.
* Drug.

Por criterios de administración del repositorio, optimización de almacenamiento y buenas prácticas para GitHub, el dataset original no se incluye dentro del repositorio público.

La estructura mantiene documentada la ubicación esperada para reproducir el análisis localmente.

Ruta esperada:

```text
data/drugs.csv
```

---

# notebooks

Contiene el notebook principal donde desarrollé el flujo completo de Machine Learning.

Archivo:

```text
Tarea_M25-CD_robertscience.ipynb
```

Dentro del notebook implementé:

* Importación de librerías.
* Carga del dataset.
* Exploración inicial.
* Transformación de variable objetivo.
* Codificación de variables categóricas.
* División entrenamiento/prueba.
* Estandarización.
* Entrenamiento de modelos.
* Comparación de solvers.
* Evaluación mediante métricas.
* Curva ROC.
* Análisis final del modelo.

---

# img

Contiene las evidencias visuales generadas durante el análisis.

Incluye:

* Matriz de confusión.
* Curva ROC.
* Comparación de desempeño entre solvers.

Estas visualizaciones permiten interpretar el comportamiento del modelo.

---

# docs

Contiene la documentación técnica del proyecto.

Incluye:

* Reporte HTML.
* Reporte PDF generado para presentación profesional.

---

# Flujo de Desarrollo

## 1. Exploración del Dataset

Inicialmente realicé una revisión de la estructura de información.

El dataset contiene:

* 200 registros.
* 6 variables originales.
* Variables numéricas y categóricas.

Realicé validaciones para comprobar:

* Tipos de datos.
* Valores faltantes.
* Distribución general.

---

# 2. Transformación de Variable Objetivo

El problema original contenía cinco medicamentos.

Para construir un modelo binario creé una nueva variable:

```text
Proveedor
```

La transformación aplicada fue:

* 0 = Proveedor Nacional.
* 1 = Proveedor Extranjero.

Esta transformación permitió utilizar Regresión Logística como algoritmo de clasificación.

---

# 3. Codificación de Variables Categóricas

Las variables:

* Sex.
* BP.
* Cholesterol.

fueron transformadas utilizando:

```python
LabelEncoder()
```

Esto permitió convertir información categórica en valores numéricos compatibles con el modelo.

---

# 4. Selección de Variables Predictoras

Definí las variables independientes:

```text
Age
Sex_encoded
BP_encoded
Cholesterol_encoded
Na_to_K
```

La variable objetivo utilizada fue:

```text
Proveedor
```

---

# 5. División del Dataset

Separé la información utilizando:

* 70% entrenamiento.
* 30% prueba.

Además utilicé:

```python
stratify=y
```

para conservar la distribución original de clases.

---

# 6. Estandarización de Variables

Aplicqué:

```python
StandardScaler()
```

para normalizar las variables antes del entrenamiento.

Este proceso permitió mejorar:

* Estabilidad numérica.
* Convergencia del algoritmo.
* Comparabilidad entre coeficientes.

---

# 7. Comparación de Solvers

Evalué diferentes métodos de optimización:

| Solver    | Accuracy |
| --------- | -------: |
| liblinear |   98.33% |
| lbfgs     |   98.33% |
| saga      |   98.33% |
| newton-cg |   98.33% |

Todos los métodos presentaron resultados equivalentes.

Seleccioné:

```text
lbfgs
```

como modelo final debido a su estabilidad y comportamiento recomendado para clasificación binaria.

---

# Evaluación del Modelo Final

El modelo seleccionado obtuvo:

## Accuracy

```text
98%
```

## AUC

```text
0.9945
```

## Matriz de Confusión

El modelo presentó solamente un error de clasificación dentro del conjunto de prueba.

Resultados principales:

* Alta precisión.
* Buen equilibrio Precision/Recall.
* Excelente capacidad discriminativa.

---

# Interpretación del Modelo

Una de las principales ventajas de la Regresión Logística es su interpretabilidad.

El modelo permite analizar cómo las variables clínicas influyen en la probabilidad estimada de clasificación.

Esto representa una ventaja en escenarios donde es importante:

* Explicar decisiones.
* Mantener trazabilidad.
* Interpretar resultados.

---

# Consideraciones del Modelo

Aunque el desempeño obtenido fue elevado, el dataset utilizado contiene un tamaño reducido de observaciones.

Por esta razón, en un entorno productivo sería recomendable complementar el análisis con:

* Validación cruzada.
* Mayor cantidad de datos.
* Validación externa.

Estas acciones permitirían confirmar la capacidad de generalización del modelo.

---

# Aplicación Profesional

Este tipo de solución tiene aplicación dentro de:

* Machine Learning aplicado a salud.
* Sistemas de apoyo a decisiones.
* Clasificación predictiva.
* Análisis clínico basado en datos.
* Modelos interpretables.

La Regresión Logística continúa siendo una herramienta relevante cuando se requiere equilibrio entre rendimiento predictivo y explicación del modelo.

---

# Conclusión

En este proyecto desarrollé un modelo de clasificación binaria utilizando Regresión Logística para determinar el origen del proveedor del medicamento recomendado.

El desarrollo incluyó preparación de datos, transformación de variables, comparación de algoritmos de optimización, evaluación estadística e interpretación del modelo.

Los resultados obtenidos demostraron que la Regresión Logística puede proporcionar predicciones precisas manteniendo un alto nivel de interpretabilidad.

---

# Autor

**RobertScience**

Data Analytics & Engineering Solutions

Transformando datos en decisiones inteligentes.

https://robertscience.online
