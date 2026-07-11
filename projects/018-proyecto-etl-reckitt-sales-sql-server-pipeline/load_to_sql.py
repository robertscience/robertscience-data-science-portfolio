import pandas as pd
import pyodbc
import os
from sqlalchemy import create_engine

print("=== Cargando datos a SQL Server - Robertscience Data Analytics Consulting ===\n")

# Configuración de conexión a SQL Express
server = 'localhost\\SQLEXPRESS'
database = 'Reckitt_Sales_Analysis'
conn_str = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server};DATABASE={database};Trusted_Connection=yes;'

# Crear base de datos si no existe
conn = pyodbc.connect(f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server};Trusted_Connection=yes;', autocommit=True)
cursor = conn.cursor()
cursor.execute("IF DB_ID('Reckitt_Sales_Analysis') IS NULL CREATE DATABASE Reckitt_Sales_Analysis")
conn.close()

print("Base de datos lista.")

# Conexión con SQLAlchemy (mejor para insert masivo)
engine = create_engine(f"mssql+pyodbc:///?odbc_connect={conn_str.replace(';', '%3B')}")

data_path = 'data/cleaned'

# Orden de carga (dimensiones primero)
tables = {
    'DIM_CATEGORY': 'DIM_CATEGORY.csv',
    'DIM_SEGMENT': 'DIM_SEGMENT.csv',
    'DIM_PRODUCT': 'DIM_PRODUCT.csv',
    'DIM_CALENDAR': 'DIM_CALENDAR.csv',
    'FACT_SALES': 'FACT_SALES.csv'
}

for table_name, filename in tables.items():
    filepath = os.path.join(data_path, filename)
    print(f"Cargando {filename} en tabla {table_name}...")
    
    df = pd.read_csv(filepath, encoding='utf-8', low_memory=False)
    
    # Limpiar columnas por si acaso
    df.columns = [col.upper() for col in df.columns]
    
    # Cargar a SQL (reemplaza si existe)
    df.to_sql(table_name, engine, if_exists='replace', index=False, chunksize=5000)
    
    count = pd.read_sql(f"SELECT COUNT(*) as cnt FROM {table_name}", engine).iloc[0]['cnt']
    print(f"✓ {table_name}: {count:,} registros cargados")

print("\n=== Carga de datos completada exitosamente! ===")