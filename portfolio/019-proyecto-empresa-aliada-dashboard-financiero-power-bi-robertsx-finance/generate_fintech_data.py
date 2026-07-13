from faker import Faker
import pandas as pd
import numpy as np
import random
from datetime import datetime, timedelta

fake = Faker()

# =========================
# CONFIGURACIÓN
# =========================

NUM_CUSTOMERS = 5000
NUM_TRANSACTIONS = 25000

# =========================
# COUNTRIES
# =========================

countries_data = [
    ["Mexico", "North America"],
    ["United States", "North America"],
    ["Canada", "North America"],
    ["Brazil", "South America"],
    ["Argentina", "South America"],
    ["Colombia", "South America"],
    ["Chile", "South America"],
    ["Spain", "Europe"],
    ["Germany", "Europe"],
    ["France", "Europe"]
]

countries_df = pd.DataFrame(
    countries_data,
    columns=["country", "region"]
)

countries_df["country_id"] = range(1, len(countries_df) + 1)

# =========================
# PRODUCTS
# =========================

products_data = [
    [1, "Credit Card", "Banking"],
    [2, "Investment Account", "Investments"],
    [3, "Crypto Wallet", "Crypto"],
    [4, "Personal Loan", "Loans"],
    [5, "Premium Account", "Subscriptions"],
    [6, "Online Payments", "Payments"]
]

products_df = pd.DataFrame(
    products_data,
    columns=["product_id", "product_name", "category"]
)

# =========================
# CUSTOMERS
# =========================

customers = []

segments = ["Standard", "Premium", "Business"]

for customer_id in range(1, NUM_CUSTOMERS + 1):

    country = random.choice(countries_data)

    customers.append({
        "customer_id": customer_id,
        "customer_name": fake.name(),
        "age": random.randint(18, 70),
        "segment": random.choice(segments),
        "country": country[0],
        "region": country[1],
        "registration_date": fake.date_between(
            start_date="-4y",
            end_date="today"
        )
    })

customers_df = pd.DataFrame(customers)

# =========================
# TRANSACTIONS
# =========================

transactions = []

transaction_types = [
    "Purchase",
    "Investment",
    "Transfer",
    "Crypto Purchase",
    "Loan Payment"
]

channels = [
    "Mobile App",
    "Website",
    "Physical Card"
]

statuses = [
    "Completed",
    "Pending",
    "Failed"
]

start_date = datetime(2022, 1, 1)

for transaction_id in range(1, NUM_TRANSACTIONS + 1):

    customer = customers_df.sample(1).iloc[0]

    product = products_df.sample(1).iloc[0]

    transaction_date = start_date + timedelta(
        days=random.randint(0, 1200)
    )

    amount = round(
        np.random.normal(350, 150),
        2
    )

    amount = abs(amount)

    fee = round(amount * random.uniform(0.01, 0.08), 2)

    revenue = round(amount * random.uniform(0.03, 0.15), 2)

    transactions.append({
        "transaction_id": transaction_id,
        "customer_id": customer["customer_id"],
        "product_id": product["product_id"],
        "transaction_date": transaction_date,
        "transaction_type": random.choice(transaction_types),
        "channel": random.choice(channels),
        "status": random.choice(statuses),
        "amount_usd": amount,
        "transaction_fee": fee,
        "revenue_usd": revenue
    })

transactions_df = pd.DataFrame(transactions)

# =========================
# EXPORTAR CSV
# =========================

customers_df.to_csv(
    "customers.csv",
    index=False
)

transactions_df.to_csv(
    "transactions.csv",
    index=False
)

products_df.to_csv(
    "products.csv",
    index=False
)

countries_df.to_csv(
    "countries.csv",
    index=False
)

# =========================
# MENSAJE FINAL
# =========================

print("\n==============================")
print("ROBERTSX FINANCE DATA CREATED")
print("==============================")

print("\nFiles generated successfully:")
print("- customers.csv")
print("- transactions.csv")
print("- products.csv")
print("- countries.csv")

print("\nCustomers:", len(customers_df))
print("Transactions:", len(transactions_df))