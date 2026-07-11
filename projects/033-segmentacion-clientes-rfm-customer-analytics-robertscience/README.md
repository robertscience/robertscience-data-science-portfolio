# Proyecto 033 - Segmentación de Clientes mediante Metodología RFM

## Customer Analytics | Business Intelligence | Data Science Aplicada

**RobertScience Data Consulting**

---

# Descripción del Proyecto

En este proyecto desarrollé un análisis de segmentación de clientes utilizando la metodología RFM (Recency, Frequency, Monetary), una técnica ampliamente utilizada dentro de Customer Analytics para comprender el comportamiento de compra y generar estrategias comerciales basadas en datos.

El objetivo principal fue transformar información transaccional de clientes en perfiles estratégicos que permitan identificar diferentes patrones de comportamiento.

La metodología RFM analiza tres dimensiones fundamentales:

* **Recency:** Tiempo transcurrido desde la última compra del cliente.
* **Frequency:** Cantidad de compras realizadas durante el periodo analizado.
* **Monetary:** Valor económico generado por cada cliente.

A partir de estas métricas construí una segmentación que permitió identificar perfiles como:

* Clientes Premium.
* Clientes Leales.
* Clientes en Riesgo.
* Clientes Ocasionales.

Este análisis permite convertir datos históricos de compra en información estratégica para apoyar decisiones relacionadas con retención, fidelización y crecimiento comercial.

---

# Objetivo Técnico

Mi objetivo en este proyecto fue desarrollar un modelo de segmentación basado en comportamiento transaccional utilizando la metodología RFM.

A través del análisis busqué:

* Preparar y limpiar información comercial proveniente de transacciones reales.
* Construir métricas individuales de comportamiento por cliente.
* Aplicar técnicas de puntuación RFM.
* Clasificar clientes según su valor estratégico.
* Identificar oportunidades de retención y crecimiento.
* Generar información útil para estrategias comerciales.

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

---

# Estructura del Proyecto

```text
033-segmentacion-clientes-rfm-customer-analytics-robertscience

│
├── data
│   └── M30_Online_Retail.csv
│
├── notebooks
│   └── Tarea_M25-CD_robertscience.ipynb
│
├── img
│   └── Visualizaciones generadas durante el análisis
│
├── docs
│   ├── Reporte técnico HTML
│   └── Reporte técnico PDF
│
├── requirements.txt
│
└── README.md
```

---

# Descripción de Carpetas y Archivos

## data

Esta carpeta corresponde al almacenamiento del dataset utilizado durante el análisis.

Archivo utilizado:

```text
M30_Online_Retail.csv
```

El conjunto de datos contiene información transaccional de clientes dentro de un entorno retail.

Las variables principales utilizadas fueron:

* Identificador del cliente.
* Número de factura.
* Fecha de compra.
* Cantidad de productos.
* Precio unitario.
* Región.

El dataset original contiene un volumen considerable de registros transaccionales.

Por criterios de organización del repositorio, administración del almacenamiento y optimización para GitHub, el archivo original no será incluido dentro del repositorio público.

La estructura del proyecto mantiene documentada la ubicación esperada del archivo para permitir la reproducción local del análisis.

Ruta esperada:

```text
data/M30_Online_Retail.csv
```

---

# notebooks

Contiene el notebook principal donde desarrollé todo el flujo de análisis.

Archivo:

```text
Tarea_M25-CD_robertscience.ipynb
```

Dentro del notebook implementé:

* Carga del dataset.
* Exploración inicial.
* Análisis de valores faltantes.
* Limpieza de datos.
* Transformación de variables.
* Construcción de métricas RFM.
* Creación de puntuaciones.
* Segmentación estratégica.
* Visualización de resultados.
* Interpretación de hallazgos.

---

# img

Esta carpeta contiene las evidencias visuales generadas durante el análisis.

Incluye:

* Distribución de segmentos.
* Gráficas de comportamiento de clientes.
* Visualizaciones utilizadas para interpretar resultados.

Su finalidad es mantener evidencia gráfica del proceso analítico.

---

# docs

Contiene documentación complementaria del proyecto.

Incluye el reporte técnico generado durante el análisis:

```text
RFM_Customer_Segmentation_Report.pdf
```

y su versión editable:

```text
RFM_Customer_Segmentation_Report.html
```

---

# Flujo de Desarrollo

## 1. Exploración y preparación de datos

Inicialmente realicé una revisión completa del dataset para comprender su estructura.

Analicé:

* Tipos de datos.
* Valores faltantes.
* Distribución de variables.
* Calidad de registros.

El dataset inicial contenía más de 540 mil transacciones comerciales.

---

# 2. Limpieza de Información

Para garantizar la calidad del análisis realicé diferentes procesos de preparación:

* Eliminación de clientes sin identificador.
* Eliminación de transacciones canceladas.
* Eliminación de cantidades inválidas.
* Eliminación de precios negativos o iguales a cero.

Después de este proceso trabajé únicamente con transacciones válidas.

---

# 3. Construcción de Métrica Monetary

Generé una nueva variable calculando el valor económico de cada transacción:

```text
TOTAL_PRICE = QUANTITY × UNIT_PRICE
```

Esta variable permitió medir la contribución monetaria individual de cada cliente.

---

# 4. Construcción del Modelo RFM

Agrupé la información por cliente para obtener:

## Recency

Calculé los días transcurridos desde la última compra.

## Frequency

Determiné la cantidad de compras realizadas por cada cliente.

## Monetary

Calculé el valor total generado por cada cliente.

Estas tres métricas permitieron construir una representación completa del comportamiento comercial.

---

# 5. Creación de Scores RFM

Transformé cada métrica en una escala de puntuación del 1 al 5.

La lógica aplicada fue:

* Menor Recency representa mejor comportamiento.
* Mayor Frequency representa mayor fidelización.
* Mayor Monetary representa mayor valor económico.

Posteriormente combiné las puntuaciones individuales en un indicador RFM consolidado.

---

# 6. Segmentación Estratégica de Clientes

A partir de los resultados obtenidos clasifiqué los clientes en segmentos estratégicos:

## Cliente Premium

Clientes con alta actividad reciente y elevada frecuencia de compra.

## Cliente Leal

Clientes con comportamiento frecuente dentro de la base comercial.

## Cliente en Riesgo

Clientes con baja actividad reciente que requieren estrategias de reactivación.

## Cliente Ocasional

Clientes con comportamiento intermedio con potencial de crecimiento.

---

# Resultados Obtenidos

La segmentación permitió identificar la composición de la base de clientes:

| Segmento          | Clientes |
| ----------------- | -------: |
| Cliente en Riesgo |     1433 |
| Cliente Ocasional |     1170 |
| Cliente Premium   |     1139 |
| Cliente Leal      |      596 |

Los resultados muestran una base de clientes heterogénea donde cada grupo requiere estrategias comerciales diferentes.

---

# Insights Estratégicos

Durante el análisis identifiqué:

* Los clientes Premium y Leales representan los perfiles de mayor valor comercial.
* Los clientes en riesgo requieren acciones de recuperación y fidelización.
* Los clientes ocasionales representan una oportunidad para incrementar frecuencia de compra.
* La segmentación permite asignar recursos comerciales de manera más eficiente.

---

# Aplicación Profesional

La metodología desarrollada en este proyecto tiene aplicación directa en:

* Customer Analytics.
* CRM.
* Business Intelligence.
* Marketing basado en datos.
* Estrategias de retención.
* Análisis de valor del cliente.

El análisis RFM permite transformar datos históricos de compra en información accionable para mejorar la toma de decisiones empresariales.

---

# Reproducibilidad del Proyecto

Para ejecutar este proyecto localmente:

Crear entorno virtual:

```bash
python -m venv .venv
```

Activar entorno:

Windows:

```bash
.venv\Scripts\activate
```

Instalar dependencias:

```bash
pip install -r requirements.txt
```

Abrir proyecto:

```bash
code .
```

Ejecutar notebook:

```text
notebooks/Tarea_M25-CD_robertscience.ipynb
```

---

# Conclusión

En este proyecto desarrollé una solución de segmentación de clientes basada en la metodología RFM, aplicando técnicas de preparación, transformación y análisis de datos comerciales.

El proceso permitió identificar patrones de comportamiento dentro de una base transaccional y convertirlos en segmentos estratégicos con valor para negocio.

Este análisis demuestra cómo la ciencia de datos puede aplicarse para comprender clientes, optimizar estrategias comerciales y generar decisiones fundamentadas en información cuantificable.

---

# Autor

**RobertScience**

Data Analytics & Engineering Solutions

Transformando datos en decisiones inteligentes.

https://robertscience.online
