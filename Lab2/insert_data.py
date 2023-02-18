from dataclasses import asdict
from datetime import datetime, timedelta

import pandas as pd
from config import Config
from pykrx import stock
from sqlalchemy import create_engine

config = asdict(Config())
engine = create_engine(config["DB_URL"])

cols = ["Date", "Open", "High", "Low", "Close", "Volume", "Value", "Change"]

today = datetime.utcnow() + timedelta(hours=9)
t1 = (today - timedelta(days=365)).strftime("%Y%m%d")
t2 = (today - timedelta(days=2)).strftime("%Y%m%d")

df = stock.get_market_ohlcv_by_date(t1, t2, "005930")
df = df.reset_index()
df.columns = cols
df["Ticker"] = "005930"

types = {
    "Date": str,
    "Open": int,
    "High": int,
    "Low": int,
    "Close": int,
    "Volume": int,
    "Value": int,
    "Change": float,
    "Ticker": str,
}
df = df.astype(types)

df["Date"] = pd.to_datetime(df["Date"])
df.to_sql("stock", engine, if_exists="append", index=False)
