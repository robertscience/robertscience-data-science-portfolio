import pandas as pd

def clean_df(df):
    for col in df.columns:
        df[col] = df[col].astype(str).str.replace("\r", "").str.replace("\n", "").str.strip()
    return df

path = r"D:\Documentos\Ebac\Finales\entregable_4\data\DIM_CATEGORY.csv"

df = pd.read_csv(path)

df = clean_df(df)

print(df.head())
print(df.dtypes)
print(df.isnull().sum())