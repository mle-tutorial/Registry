from datetime import date

from pydantic import BaseModel


class StockData(BaseModel):
    Ticker: str
    Date: date
    Open: int
    High: int
    Low: int
    Close: int
    Volume: int
    Value: int
    Change: float
