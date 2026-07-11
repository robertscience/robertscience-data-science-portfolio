import pandas as pd
import os

# ruta base donde están los archivos
base_path = r"D:\Documentos\Ebac\Finales\entregable_4\data"

# archivos a convertir
files = [
    "DIM_PRODUCT.xlsx",
    "DIM_SEGMENT.xlsx",
    "DIM_CALENDAR.xlsx"
]

for file in files:
    input_path = os.path.join(base_path, file)
    output_path = input_path.replace(".xlsx", ".csv")

    # leer excel
    df = pd.read_excel(input_path)

    # guardar como csv
    df.to_csv(output_path, index=False, encoding="utf-8")

    print(f"OK -> {file} convertido a CSV")

print("✔ Todos los archivos convertidos correctamente")