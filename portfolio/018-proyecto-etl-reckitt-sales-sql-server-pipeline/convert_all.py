import pandas as pd
import os

base_path = r"D:\Documentos\Ebac\Finales\entregable_4\data"

files = [
    "DIM_PRODUCT.xlsx",
    "DIM_SEGMENT.xlsx",
    "DIM_CALENDAR.xlsx"
]

for file in files:
    input_path = os.path.join(base_path, file)
    output_path = os.path.join(base_path, file.replace(".xlsx", ".csv"))

    df = pd.read_excel(input_path)

    # limpieza básica real (sin applymap deprecated)
    df.columns = df.columns.str.strip()
    df = df.apply(lambda col: col.astype(str).str.strip())

    df.to_csv(output_path, index=False, encoding="utf-8")

    print(f"OK -> {file} convertido a CSV")