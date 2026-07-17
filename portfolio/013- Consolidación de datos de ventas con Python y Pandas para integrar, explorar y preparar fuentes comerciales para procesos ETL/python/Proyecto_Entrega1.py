"""
============================================================
PROYECTO:
Consolidación y Preparación de Datos de Ventas

EMPRESA:
RobertScience Data Analytics

ENTREGABLE:
Proyecto Integración de Datos - Entrega 1

AUTOR:
RobertScience

DESCRIPCIÓN:

Desarrollé este proyecto para integrar y preparar información
comercial mediante Python y Pandas.

Durante esta primera etapa trabajé con la carga, exploración
y validación inicial de diferentes fuentes de información
estructuradas bajo un modelo dimensional compuesto por tablas
de referencia y una tabla principal de hechos de ventas.

El objetivo fue establecer una base técnica confiable para
posteriores procesos de limpieza, transformación, integración
y análisis avanzado de datos.

============================================================
"""


import pandas as pd
from pathlib import Path



# ============================================================
# CONFIGURACIÓN DEL PROYECTO
# ============================================================


BASE_DIR = Path(__file__).resolve().parents[1]

DATA_PATH = BASE_DIR / "data" / "raw"



# ============================================================
# CARGA DE FUENTES
# ============================================================


def cargar_fuentes():

    """
    Realicé la carga de las fuentes originales utilizadas
    dentro del proceso de integración de datos.

    Las fuentes corresponden a dimensiones comerciales y una
    tabla de hechos de ventas.
    """

    print("\nIniciando carga de fuentes...\n")


    fuentes = {

        "DIM_CALENDAR":
        pd.read_excel(DATA_PATH / "DIM_CALENDAR.xlsx"),


        "DIM_CATEGORY":
        pd.read_csv(DATA_PATH / "DIM_CATEGORY.csv"),


        "DIM_PRODUCT":
        pd.read_excel(DATA_PATH / "DIM_PRODUCT.xlsx"),


        "DIM_SEGMENT":
        pd.read_excel(DATA_PATH / "DIM_SEGMENT.xlsx"),


        "FACT_SALES":
        pd.read_csv(DATA_PATH / "FACT_SALES.csv")

    }


    print("Fuentes cargadas correctamente.\n")


    return fuentes




# ============================================================
# EXPLORACIÓN ESTRUCTURAL
# ============================================================


def analizar_dataset(nombre, dataframe):

    """
    Ejecuté una revisión estructural inicial para identificar
    dimensiones, columnas disponibles y tipos de información.
    """


    print("\n" + "=" * 70)

    print(f"DATASET ANALIZADO: {nombre}")

    print("=" * 70)



    print("\nDimensiones:")

    print(dataframe.shape)



    print("\nColumnas:")

    print(dataframe.columns.tolist())



    print("\nTipos de datos:")

    print(dataframe.dtypes)



    print("\nPrimeros registros:")

    print(dataframe.head())





# ============================================================
# CONTROL DE CALIDAD
# ============================================================


def validar_nulos(nombre, dataframe):

    """
    Revisé la calidad inicial de cada fuente mediante la
    identificación de valores faltantes.
    """


    print("\n" + "=" * 70)

    print(f"VALIDACIÓN DE NULOS: {nombre}")

    print("=" * 70)



    print(dataframe.isnull().sum())





# ============================================================
# EJECUCIÓN PRINCIPAL
# ============================================================


if __name__ == "__main__":


    datasets = cargar_fuentes()



    for nombre, dataframe in datasets.items():

        analizar_dataset(
            nombre,
            dataframe
        )



    for nombre, dataframe in datasets.items():

        validar_nulos(
            nombre,
            dataframe
        )



    print(
        "\nFinalicé la etapa inicial de exploración y validación."
    )


    print(
        "La información quedó preparada para continuar con procesos ETL."
    )