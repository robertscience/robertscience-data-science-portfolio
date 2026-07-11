# Análisis de Regresión Logística del PIB de México

## Modelo Predictivo No Lineal aplicado a Datos Económicos Históricos

**Proyecto 027 - Ciencia de Datos**

**RobertsScience Data Analytics Consulting**

---

# 📌 Descripción del Proyecto

En este proyecto desarrollé un análisis de regresión no lineal aplicado al comportamiento histórico del Producto Interno Bruto (PIB) de México.

El objetivo principal fue construir un modelo matemático basado en una función logística capaz de representar la evolución histórica del PIB y generar una estimación futura utilizando técnicas de optimización numérica.

Durante el desarrollo trabajé con un flujo completo de Ciencia de Datos que incluyó exploración de información, preparación de datos, normalización de variables, ajuste de modelos no lineales, evaluación del comportamiento del modelo y generación de pronósticos.

El proyecto fue desarrollado siguiendo una metodología profesional orientada a garantizar orden, reproducibilidad y claridad técnica dentro del proceso analítico.

---

# 🎯 Objetivo del Proyecto

El objetivo principal fue construir un modelo logístico capaz de representar la tendencia histórica del PIB mexicano y evaluar su capacidad predictiva.

Los objetivos específicos fueron:

- Implementar un modelo matemático de crecimiento logístico.
- Analizar el comportamiento del PIB histórico.
- Evaluar el ajuste utilizando datos originales.
- Identificar problemas derivados de escalas numéricas elevadas.
- Aplicar normalización para mejorar la estabilidad del modelo.
- Comparar resultados obtenidos antes y después del escalamiento.
- Generar un pronóstico basado en el modelo final.

---

# 🧠 Contexto Analítico

Los modelos logísticos permiten representar fenómenos donde existe un crecimiento progresivo que posteriormente presenta una desaceleración hasta alcanzar una etapa de estabilización.

En este proyecto utilicé este enfoque matemático para analizar si una función logística podía representar adecuadamente la trayectoria histórica del PIB de México.

Durante el análisis comprobé la importancia que tiene la preparación correcta de los datos cuando se trabaja con modelos no lineales y algoritmos de optimización.

---

# 🏗️ Estructura del Proyecto

La organización utilizada durante el desarrollo fue:

```text
027-modelo-logistico-pib-mexico-regresion-no-lineal/

│
├── Tarea_M20-CD_robertscience.ipynb
│   Notebook principal con todo el desarrollo analítico.
│
├── Reporte_Tecnico_M20_RobertScience.html
│   Reporte técnico final del proyecto.
│
├── Reporte_Tecnico_M20_RobertScience.pdf
│   Versión PDF del reporte.
│
├── resultados_modelo.csv
│   Resultados obtenidos durante la evaluación del modelo.
│
├── graficas/
│   ├── pib_historico.png
│   ├── ajuste_modelo_logistico.png
│   └── pronostico_pib_2022.png
│
├── requirements.txt
│
└── README.md
📂 Nota sobre disponibilidad de datos

El archivo original utilizado durante el desarrollo contiene información de trabajo necesaria para la construcción del modelo.

Debido a criterios de organización, tamaño del repositorio y buenas prácticas de administración de proyectos en GitHub, el dataset original no fue incluido dentro del repositorio público.

La documentación, código y resultados generados permiten comprender completamente la metodología aplicada, el flujo analítico desarrollado y la implementación técnica realizada.

🏗️ Metodología Implementada
1. Exploración Inicial

Realicé la revisión inicial de la información para comprender:

Estructura del dataset.
Variables disponibles.
Orden temporal de los registros.
Características generales del comportamiento económico.
2. Modelo Logístico con Datos Originales

Inicialmente trabajé utilizando los valores originales del PIB.

Durante esta etapa analicé:

Ajuste inicial del modelo.
Comportamiento de los parámetros.
Problemas de convergencia.
Efecto de escalas numéricas elevadas.
3. Normalización de Datos

Posteriormente realicé un proceso de normalización para transformar los valores a una escala comparable.

Este procedimiento permitió:

Mejorar estabilidad numérica.
Facilitar la optimización.
Obtener parámetros más consistentes.
4. Modelo Final y Pronóstico

Después de normalizar la información construí nuevamente el modelo logístico.

Finalmente utilicé el modelo obtenido para generar una estimación futura del comportamiento del PIB.

📐 Modelo Matemático

El modelo utilizado corresponde a:

Ŷ = 1 / (1 + e^(β₁(X − β₂)))

Donde:

X representa el periodo temporal.
Y representa el valor del PIB.
β₁ controla la pendiente.
β₂ representa el punto de transición.

La estimación de parámetros fue realizada mediante métodos de optimización numérica.

🛠️ Tecnologías Utilizadas

Durante el desarrollo utilicé:

Python
Jupyter Notebook
Pandas
NumPy
SciPy
Matplotlib
Visual Studio Code
GitHub
📊 Resultados Obtenidos

El desarrollo permitió:

Construir un modelo predictivo no lineal.
Analizar la influencia de la normalización.
Representar matemáticamente una tendencia económica.
Evaluar diferencias entre modelos.
Generar un pronóstico utilizando técnicas estadísticas.
📚 Aprendizajes Técnicos

Este proyecto fortaleció mis conocimientos en:

Regresión no lineal.
Optimización matemática.
Modelos predictivos.
Preparación de datos.
Escalamiento de variables.
Interpretación estadística.

También reforcé la importancia de preparar correctamente la información antes de aplicar modelos matemáticos.

🚀 Aplicación Profesional

Los modelos de regresión no lineal tienen aplicaciones en:

Análisis económico.
Planeación financiera.
Estudios de crecimiento.
Pronósticos empresariales.
Investigación cuantitativa.

La construcción de modelos interpretables permite generar herramientas analíticas útiles para apoyar procesos de decisión.

🏁 Conclusión del Proyecto

Este proyecto representó una aplicación práctica de técnicas avanzadas de Ciencia de Datos enfocadas en modelado predictivo.

Durante el desarrollo integré programación, matemáticas aplicadas y análisis estadístico para construir una solución capaz de representar un fenómeno económico mediante un modelo no lineal.

El proyecto fortaleció mi capacidad para desarrollar soluciones analíticas completas siguiendo una metodología profesional.

👨‍💻 Autor

Proyecto desarrollado por:

RobertScience

Data Analytics & Engineering Solutions

Transformando información en decisiones inteligentes.

https://robertscience.online