import pandas as pd
from pathlib import Path

base_path = Path(r"D:\Documentos\Ebac\Finales\entregable_4\data")

files = [
    "DIM_CATEGORY.csv",
    "DIM_SEGMENT.csv",
    "DIM_PRODUCT.csv",
    "DIM_CALENDAR.csv",
    "FACT_SALES.csv"
]

def clean_df(df):
    for col in df.columns:
        df[col] = df[col].astype(str).map(
            lambda x: x.replace("\r", "").replace("\n", "").strip()
        )
    return df

for file in files:
    file_path = base_path / file

    if not file_path.exists():
        print(f"❌ No existe: {file}")
        continue

    df = pd.read_csv(file_path)

    df_clean = clean_df(df)

    out_path = base_path / file.replace(".csv", "_clean.csv")

    df_clean.to_csv(out_path, index=False, encoding="utf-8")

    print(f"✔ Limpio generado: {out_path.name}")

print("=== LIMPIEZA COMPLETA ===")