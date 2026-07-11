Proyecto - Pipeline de Ingesta de Datos con SQLite y Python para Gestión de Clientes

Data Engineering | ETL | SQLite | SQL | Python | Persistencia de Datos | Data Pipeline

RobertScience Data Analytics Consulting
Descripción del Proyecto

En este proyecto desarrollé un flujo básico de ingeniería de datos utilizando Python y SQLite, implementando un proceso completo de carga, almacenamiento y validación de información estructurada a partir de un archivo CSV.

El objetivo principal consistió en construir un pipeline de datos capaz de extraer información desde un conjunto de datos externo, transformarla para su almacenamiento en una base de datos relacional local y validar posteriormente la integridad de los registros mediante consultas SQL ejecutadas desde Python.

Durante el desarrollo integré el uso de Pandas para la manipulación de datos, SQLite como motor de base de datos embebido y Jupyter Notebook como entorno de desarrollo, reproduciendo un flujo de trabajo representativo de procesos ETL utilizados en proyectos de Data Engineering.

El proyecto demuestra la integración entre herramientas de análisis de datos y bases de datos relacionales, estableciendo una base sólida para procesos posteriores de análisis, visualización o construcción de modelos analíticos.

Objetivo Técnico

El objetivo principal fue desarrollar un pipeline de integración de datos utilizando Python y SQLite que permitiera almacenar información estructurada proveniente de un archivo CSV dentro de una base de datos relacional.

Durante el desarrollo del proyecto me enfoqué en:

Leer información desde archivos CSV utilizando Pandas.
Preparar un conjunto controlado de registros para su carga.
Crear una base de datos SQLite desde Python.
Diseñar la estructura de una tabla relacional.
Insertar registros utilizando sentencias SQL parametrizadas.
Validar la creación correcta de la base de datos.
Consultar la información almacenada mediante SQL.
Integrar consultas SQL con DataFrames de Pandas.
Verificar la integridad de la información almacenada.
Construir un flujo reproducible de carga y validación de datos.
Dataset Utilizado

Para el desarrollo del proyecto se utilizó un archivo de clientes con información comercial estructurada.

El dataset contiene información como:

CustomerID
CustomerName
ContactName
Address
City
PostalCode
Country

Durante esta práctica se utilizó una muestra de cinco registros con fines de validación del proceso completo de carga hacia SQLite.

Por motivos relacionados con el tamaño del material académico utilizado durante el desarrollo del proyecto, el archivo original clientes.csv no se incluye dentro de este repositorio.

No obstante, toda la estructura del proyecto, el flujo de trabajo y el código fueron documentados para permitir la reproducción completa del proceso utilizando un archivo con la misma estructura.

Tecnologías Utilizadas
Lenguaje
Python 3.11
Base de Datos
SQLite
Entorno de Desarrollo
Visual Studio Code
Jupyter Notebook
Librerías principales
Pandas
SQLite3
OS
Estructura del Proyecto
050-pipeline-ingesta-datos-sqlite-python-clientes-robertscience
│
├── data
│   └── clientes.csv
│
├── database
│   └── Base.db
│
├── notebooks
│   └── M40_Analisis_Clientes_SQLite_Python.ipynb
│
├── docs
│   └── Reporte_Tecnico_Base_Datos_SQLite.pdf
│
├── requirements.txt
│
└── README.md

Nota: Los archivos clientes.csv y Base.db no fueron incluidos en este repositorio con el propósito de mantener un repositorio ligero y debido a restricciones relacionadas con el material utilizado durante la práctica. La estructura del proyecto y el notebook documentan completamente el proceso para permitir su reproducción.

Flujo de Desarrollo
1. Exploración e Ingesta de Datos

Inicié el proyecto realizando la lectura del archivo CSV mediante Pandas para conocer la estructura del conjunto de datos, validar los tipos de información disponibles y preparar los registros para su almacenamiento.

2. Selección de Registros

Con el propósito de validar el proceso de integración de datos, seleccioné una muestra controlada correspondiente a los primeros cinco registros del dataset.

Esta estrategia permitió verificar cada etapa del flujo de trabajo antes de escalar el proceso a conjuntos de datos de mayor tamaño.

3. Creación de la Base de Datos

Establecí una conexión con SQLite utilizando Python, generando automáticamente una base de datos local donde posteriormente se almacenó la información procesada.

Este enfoque permite construir soluciones portables sin requerir la instalación de un servidor de base de datos.

4. Diseño del Modelo Relacional

Diseñé la tabla Clientes, definiendo cada uno de los campos necesarios para almacenar la información del dataset.

Durante esta etapa se establecieron los tipos de datos apropiados para cada atributo, siguiendo una estructura relacional sencilla y consistente.

5. Carga de Información

Implementé un proceso de inserción mediante sentencias SQL parametrizadas ejecutadas desde Python.

Los registros fueron recorridos utilizando un ciclo iterativo, garantizando una carga ordenada y controlada dentro de la tabla creada.

Antes de cada ejecución eliminé los registros existentes para evitar duplicidad durante múltiples ejecuciones del notebook.

6. Validación de la Estructura

Posteriormente consulté el catálogo interno de SQLite para verificar que la tabla había sido creada correctamente y que la estructura de la base de datos coincidía con el diseño definido previamente.

7. Consulta de Validación

Finalmente ejecuté consultas SQL para recuperar la totalidad de los registros almacenados dentro de la tabla Clientes.

Los resultados fueron cargados nuevamente en un DataFrame de Pandas para validar visualmente la correcta inserción y consistencia de la información.

8. Cierre de la Conexión

Como parte de las buenas prácticas de administración de bases de datos, cerré correctamente la conexión con SQLite una vez finalizadas todas las operaciones.

Resultados Obtenidos

Durante el desarrollo del proyecto logré:

Construir una base de datos SQLite desde Python.
Diseñar una tabla relacional para almacenamiento de clientes.
Implementar un proceso completo de carga de datos.
Integrar Pandas con SQLite mediante consultas SQL.
Validar correctamente la creación de la estructura de datos.
Recuperar la información almacenada mediante consultas SQL.
Construir un flujo básico de integración de datos completamente funcional.
Conclusiones Técnicas

Este proyecto fortaleció mi comprensión sobre la integración entre herramientas de análisis de datos y motores de bases de datos relacionales.

La implementación del flujo completo permitió comprender cómo un proceso ETL básico puede desarrollarse utilizando Python como lenguaje de integración y SQLite como mecanismo de persistencia, facilitando la creación de soluciones ligeras, portables y fácilmente reproducibles.

Asimismo, la validación mediante consultas SQL permitió garantizar la integridad de la información almacenada y consolidar una metodología organizada para futuros proyectos de ingeniería de datos.

Aplicación Profesional

Las técnicas implementadas durante este proyecto pueden aplicarse directamente en escenarios como:

Data Engineering.
Procesos ETL.
Integración de datos.
Automatización de cargas de información.
Bases de datos relacionales.
Sistemas de gestión de clientes.
Procesamiento de datos estructurados.
Preparación de datos para analítica.
Business Intelligence.
Ciencia de Datos.
Conclusión

En este proyecto desarrollé un pipeline básico de integración de datos utilizando Python y SQLite para construir una base de datos relacional a partir de un archivo CSV.

El flujo de trabajo incluyó la lectura y preparación de datos mediante Pandas, la creación de la base de datos, el diseño de la tabla, la inserción de registros utilizando sentencias SQL, la validación de la estructura y la consulta de la información almacenada para verificar su integridad.

Este proyecto representa una base sólida para procesos de ingeniería de datos, demostrando la integración entre Python, SQL y SQLite dentro de un flujo reproducible orientado al almacenamiento y validación de información estructurada.

Autor

RobertScience

Data Analytics & Data Engineering

Diseñando soluciones de ingeniería y analítica para transformar datos en información de valor.