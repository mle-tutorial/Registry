from dataclasses import asdict

import pandas as pd
from config import Config
from sqlalchemy import create_engine

config = asdict(Config())
engine = create_engine(config["DB_URL"])

types = {
    "Ticker": str,
    "Date": str,
    "Open": int,
    "High": int,
    "Low": int,
    "Close": int,
    "Volume": int,
    "Value": int,
    "Change": float,
}

df = pd.read_csv("stock_data.csv", dtype=types)
df["Date"] = pd.to_datetime(df["Date"])
df.to_sql("stock", engine, if_exists="append", index=False)
