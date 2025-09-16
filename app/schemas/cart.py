from datetime import datetime
from typing import Optional, List
from pydantic import BaseModel, ConfigDict
from app.schemas.product import ProductResponse


class CartItemBase(BaseModel):
    product_id: int
    quantity: int


class CartItemCreate(CartItemBase):
    pass


class CartItemUpdate(BaseModel):
    quantity: int


class CartItemResponse(CartItemBase):
    id: int
    user_id: int
    created_at: datetime
    updated_at: Optional[datetime] = None
    product: Optional[ProductResponse] = None
    subtotal: float = 0

    model_config = ConfigDict(from_attributes=True)


class CartResponse(BaseModel):
    items: List[CartItemResponse]
    total_items: int
    total_amount: float
    subtotal: float
    tax_amount: float = 0
    shipping_amount: float = 0


class CartSummary(BaseModel):
    total_items: int
    total_amount: float