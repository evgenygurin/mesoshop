from datetime import datetime
from typing import Any

from pydantic import BaseModel, ConfigDict

from app.schemas.product import ProductResponse
from app.schemas.user import UserResponse


class OrderItemBase(BaseModel):
    product_id: int
    quantity: int
    price: float
    total: float


class OrderItemCreate(BaseModel):
    product_id: int
    quantity: int


class OrderItemResponse(OrderItemBase):
    id: int
    product_snapshot: dict[str, Any] | None = None
    created_at: datetime
    product: ProductResponse | None = None

    model_config = ConfigDict(from_attributes=True)


class OrderBase(BaseModel):
    status: str = "pending"
    total_amount: float
    subtotal: float
    tax_amount: float = 0
    shipping_amount: float = 0
    discount_amount: float = 0
    shipping_address: dict[str, Any] | None = None
    billing_address: dict[str, Any] | None = None
    payment_method: str | None = None
    notes: str | None = None


class OrderCreate(BaseModel):
    items: list[OrderItemCreate]
    shipping_address: dict[str, Any]
    billing_address: dict[str, Any] | None = None
    payment_method: str = "stripe"
    notes: str | None = None


class OrderUpdate(BaseModel):
    status: str | None = None
    tracking_number: str | None = None
    notes: str | None = None


class OrderResponse(OrderBase):
    id: int
    user_id: int
    payment_status: str
    payment_intent_id: str | None = None
    tracking_number: str | None = None
    created_at: datetime
    updated_at: datetime | None = None
    user: UserResponse | None = None
    order_items: list[OrderItemResponse] = []

    model_config = ConfigDict(from_attributes=True)


class OrderListResponse(BaseModel):
    orders: list[OrderResponse]
    total: int
    page: int
    pages: int
    has_next: bool
    has_prev: bool


class OrderStatusUpdate(BaseModel):
    status: str
    tracking_number: str | None = None


class OrderSummary(BaseModel):
    total_orders: int
    pending_orders: int
    completed_orders: int
    total_revenue: float
