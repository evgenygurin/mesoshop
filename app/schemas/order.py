from datetime import datetime
from typing import Optional, List, Dict, Any
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
    product_snapshot: Optional[Dict[str, Any]] = None
    created_at: datetime
    product: Optional[ProductResponse] = None

    model_config = ConfigDict(from_attributes=True)


class OrderBase(BaseModel):
    status: str = "pending"
    total_amount: float
    subtotal: float
    tax_amount: float = 0
    shipping_amount: float = 0
    discount_amount: float = 0
    shipping_address: Optional[Dict[str, Any]] = None
    billing_address: Optional[Dict[str, Any]] = None
    payment_method: Optional[str] = None
    notes: Optional[str] = None


class OrderCreate(BaseModel):
    items: List[OrderItemCreate]
    shipping_address: Dict[str, Any]
    billing_address: Optional[Dict[str, Any]] = None
    payment_method: str = "stripe"
    notes: Optional[str] = None


class OrderUpdate(BaseModel):
    status: Optional[str] = None
    tracking_number: Optional[str] = None
    notes: Optional[str] = None


class OrderResponse(OrderBase):
    id: int
    user_id: int
    payment_status: str
    payment_intent_id: Optional[str] = None
    tracking_number: Optional[str] = None
    created_at: datetime
    updated_at: Optional[datetime] = None
    user: Optional[UserResponse] = None
    order_items: List[OrderItemResponse] = []

    model_config = ConfigDict(from_attributes=True)


class OrderListResponse(BaseModel):
    orders: List[OrderResponse]
    total: int
    page: int
    pages: int
    has_next: bool
    has_prev: bool


class OrderStatusUpdate(BaseModel):
    status: str
    tracking_number: Optional[str] = None


class OrderSummary(BaseModel):
    total_orders: int
    pending_orders: int
    completed_orders: int
    total_revenue: float