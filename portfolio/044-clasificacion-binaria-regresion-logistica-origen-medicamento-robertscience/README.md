# Proyecto 044 - Clasificación Binaria mediante Regresión Logística para Determinación del Origen del Medicamento

**Machine Learning Supervisado | Clasificación Binaria | Regresión Logística | Evaluación ROC-AUC | Analítica Predictiva Clínica**

---

# RobertScience Data Analytics Consulting

## Descripción del Proyecto

En este proyecto desarrollé un modelo de **Machine Learning Supervisado** utilizando **Regresión Logística** para resolver un problema de clasificación binaria aplicado a un escenario de análisis clínico.

El objetivo principal fue determinar si un medicamento pertenece a un proveedor de origen **Nacional** o **Extranjero**, utilizando información asociada a pacientes que respondieron favorablemente a diferentes tratamientos farmacológicos.

El dataset original contiene cinco medicamentos:

* drugA
* drugB
* drugC
* drugX
* drugY

Sin embargo, el enfoque del análisis no consiste en predecir el medicamento específico, sino transformar el problema original en una clasificación binaria estratégica:

* **0 = Proveedor Nacional**
* **1 = Proveedor Extranjero**

Para construir el modelo utilicé variables clínicas como:

* Edad.
* Sexo.
* Presión arterial.
* Nivel de colesterol.
* Índice Sodio/Potasio (Na_to_K).

Durante el desarrollo del proyecto implementé un flujo completo de Ciencia de Datos incluyendo exploración inicial, transformación de variables, codificación categórica, división entrenamiento/prueba, estandarización, comparación de métodos de optimización, entrenamiento del modelo final y evaluación mediante métricas de clasificación.

---

# Objetivo Técnico

El objetivo principal fue construir un modelo predictivo basado en **Regresión Logística** capaz de identificar el origen del proveedor del medicamento a partir de variables clínicas del paciente.

Durante el desarrollo del análisis busqué:

* Explorar la estructura y calidad del dataset.
* Analizar las variables disponibles.
* Transformar un problema multiclase en clasificación binaria.
* Preparar variables categóricas para modelos matemáticos.
* Construir un pipeline reproducible de Machine Learning.
* Evaluar diferentes algoritmos de optimización de Regresión Logística.
* Seleccionar el solver con mejor estabilidad computacional.
* Medir el desempeño mediante métricas de clasificación.
* Evaluar capacidad discriminativa mediante curva ROC y AUC.
* Analizar interpretabilidad, posibles riesgos de sobreajuste e implicaciones clínicas.

---

# Dataset Utilizado

Para este proyecto se utilizó el dataset:

```text
drugs.csv

El conjunto de datos contiene información clínica de:

200 pacientes.
6 variables originales.

Variables disponibles:

Variable	Descripción
Age	Edad del paciente
Sex	Sexo del paciente
BP	Presión arterial
Cholesterol	Nivel de colesterol
Na_to_K	Relación sodio/potasio
Drug	Medicamento asignado

El dataset no presenta valores nulos y contiene variables numéricas y categóricas que fueron procesadas antes del entrenamiento del modelo.

Debido a restricciones relacionadas con tamaño y distribución de datos académicos, el archivo original no se incluye dentro del repositorio.

La estructura del proyecto, notebook y flujo analítico fueron documentados para permitir la reproducción completa del análisis.

Tecnologías Utilizadas
Lenguaje
Python 3.10
Entorno de Desarrollo
Visual Studio Code
Jupyter Notebook
Librerías principales
Pandas
NumPy
Matplotlib
Seaborn
Scikit-Learn
Estructura del Proyecto
044-clasificacion-binaria-regresion-logistica-origen-medicamento-robertscience
│
├── data
│   └── drugs.csv
│
├── notebooks
│   └── Tarea_M25_CD_Regresion_Logistica.ipynb
│
├── img
│   ├── confusion_matrix.png
│   └── roc_curve.png
│
├── results
│   └── model_metrics.csv
│
├── requirements.txt
│
└── README.md

Nota: Los archivos generados por el modelo pueden reproducirse ejecutando nuevamente el notebook. Por esta razón, los resultados derivados pueden mantenerse fuera del repositorio para conservar una estructura ligera y reproducible.

Flujo de Desarrollo
1. Exploración Inicial del Dataset

Realicé una exploración inicial para comprender la estructura de los datos, validar dimensiones, revisar tipos de variables y verificar la calidad de la información disponible.

Durante esta etapa confirmé:

Número de registros.
Variables disponibles.
Tipos de datos.
Ausencia de valores nulos.

El dataset contiene 200 registros completos sin valores faltantes.

2. Transformación del Problema a Clasificación Binaria

El dataset original estaba planteado como un problema multiclase debido a los diferentes medicamentos disponibles.

Para adaptarlo al objetivo estratégico del análisis transformé la variable:

Drug → Proveedor

La nueva variable objetivo quedó definida como:

0 = Nacional
1 = Extranjero

Esta transformación permitió aplicar un modelo de clasificación binaria mediante Regresión Logística.

3. Codificación de Variables Categóricas

Debido a que los modelos matemáticos requieren valores numéricos, realicé la transformación de variables categóricas utilizando Label Encoding.

Variables transformadas:

Sex.
BP.
Cholesterol.

Estas variables fueron convertidas a representaciones numéricas compatibles con el algoritmo.

4. Selección de Variables Predictoras

Definí las variables independientes utilizadas para entrenar el modelo:

Age
Sex_encoded
BP_encoded
Cholesterol_encoded
Na_to_K

La variable objetivo utilizada fue:

Proveedor

El problema quedó estructurado como un modelo supervisado de clasificación binaria.

5. División del Dataset

Para evaluar correctamente el desempeño del modelo realicé una separación:

70% datos de entrenamiento.
30% datos de prueba.

Además, utilicé:

stratify=y

para conservar la proporción original entre clases Nacional y Extranjero en ambos conjuntos.

6. Estandarización de Variables

Debido a que la Regresión Logística utiliza procesos iterativos de optimización, apliqué StandardScaler para transformar las variables y obtener:

Media cercana a 0.
Desviación estándar igual a 1.

Esta transformación permitió mejorar la estabilidad numérica y facilitar la convergencia del modelo.

7. Comparación de Solvers de Regresión Logística

Evalué diferentes métodos de optimización:

liblinear.
lbfgs.
saga.
newton-cg.

Todos los modelos obtuvieron un desempeño equivalente:

Accuracy: 0.9833

Debido a que no existieron diferencias significativas, seleccioné:

lbfgs

como solver final debido a su estabilidad, eficiencia y comportamiento recomendado para problemas de clasificación binaria.

8. Entrenamiento del Modelo Final

El modelo definitivo fue construido utilizando:

Regresión Logística
Solver: lbfgs
max_iter: 5000

El entrenamiento fue realizado utilizando las variables escaladas obtenidas durante la fase de preparación.

9. Evaluación del Modelo

El desempeño fue evaluado utilizando métricas estándar de clasificación:

Accuracy.
Precision.
Recall.
F1-Score.
Matriz de Confusión.
Curva ROC.
Área bajo la curva (AUC).

Resultados obtenidos:

Accuracy: 98%

AUC: 0.9945

La matriz de confusión mostró únicamente:

1 error de clasificación sobre 60 observaciones evaluadas

Estos resultados indican una alta capacidad discriminativa del modelo dentro del conjunto analizado.

Resultados Obtenidos

Durante el desarrollo del proyecto logré:

Construir un modelo completo de clasificación binaria.
Transformar un problema multiclase en una solución estratégica.
Implementar preparación profesional de datos.
Evaluar diferentes métodos de optimización.
Seleccionar el modelo con mejor estabilidad.
Obtener una precisión superior al 98%.
Analizar la capacidad predictiva mediante ROC-AUC.
Generar una solución interpretable para un contexto clínico.
Análisis Técnico y Consideraciones Profesionales
Posible Sobreajuste

Aunque el modelo obtuvo un desempeño elevado, el dataset contiene únicamente 200 observaciones.

Por esta razón, en un entorno productivo sería recomendable:

Aplicar validación cruzada.
Evaluar con nuevos conjuntos independientes.
Incrementar la cantidad de datos disponibles.

Esto permitiría confirmar la capacidad de generalización del modelo.

Interpretabilidad del Modelo

Una de las principales ventajas de la Regresión Logística es su interpretabilidad.

A diferencia de modelos más complejos, permite analizar la influencia de cada variable sobre la probabilidad estimada de pertenecer a una categoría determinada.

Esta característica resulta especialmente importante en escenarios clínicos donde:

La trazabilidad es fundamental.
Las decisiones requieren justificación.
La transparencia del modelo es prioritaria.
Aplicación Profesional

Las metodologías implementadas en este proyecto tienen aplicación directa en:

Healthcare Analytics.
Clinical Data Science.
Predictive Analytics.
Business Intelligence.
Modelos de clasificación supervisada.
Sistemas de apoyo a decisiones basadas en datos.
Conclusiones Técnicas

En este proyecto desarrollé un modelo de clasificación binaria utilizando Regresión Logística para determinar el origen del proveedor de medicamentos a partir de variables clínicas.

El flujo completo incluyó exploración de datos, transformación del problema, codificación de variables, estandarización, comparación de solvers, entrenamiento del modelo final y evaluación mediante métricas avanzadas.

La solución obtenida demostró:

Alta precisión predictiva.
Excelente capacidad discriminativa.
Buena estabilidad numérica.
Alta interpretabilidad.

El solver lbfgs fue seleccionado como modelo final debido a su desempeño consistente y comportamiento adecuado para problemas binarios con variables escaladas.

Este proyecto demuestra cómo las técnicas de Machine Learning Supervisado pueden transformar datos clínicos en herramientas analíticas capaces de apoyar procesos de toma de decisiones basados en evidencia.

Autor

RobertScience

Data Analytics & Machine Learning Engineering

Transformando datos en sistemas inteligentes para la toma de decisiones.

https://robertscience.online