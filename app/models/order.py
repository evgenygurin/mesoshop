from __future__ import annotations

from typing import TYPE_CHECKING, Any

from sqlalchemy import DateTime, Float, ForeignKey, Integer, String, Text, func
from sqlalchemy.dialects.postgresql import JSONB
from sqlalchemy.orm import Mapped, mapped_column, relationship

from app.core.database import Base

if TYPE_CHECKING:
    from datetime import datetime

    from app.models.product import Product
    from app.models.user import User


class Order(Base):
    __tablename__ = "orders"

    id: Mapped[int] = mapped_column(primary_key=True, index=True)
    user_id: Mapped[int] = mapped_column(ForeignKey("users.id"))
    status: Mapped[str] = mapped_column(String(50), default="pending", index=True)
    total_amount: Mapped[float] = mapped_column(Float)
    subtotal: Mapped[float] = mapped_column(Float)
    tax_amount: Mapped[float] = mapped_column(Float, default=0)
    shipping_amount: Mapped[float] = mapped_column(Float, default=0)
    discount_amount: Mapped[float] = mapped_column(Float, default=0)

    # Addresses stored as JSON
    shipping_address: Mapped[dict[str, Any] | None] = mapped_column(JSONB)
    billing_address: Mapped[dict[str, Any] | None] = mapped_column(JSONB)

    # Payment information
    payment_status: Mapped[str] = mapped_column(
        String(50), default="pending", index=True
    )
    payment_method: Mapped[str | None] = mapped_column(String(50))
    payment_intent_id: Mapped[str | None] = mapped_column(String(255))

    # Order metadata
    notes: Mapped[str | None] = mapped_column(Text)
    tracking_number: Mapped[str | None] = mapped_column(String(100))

    created_at: Mapped[datetime] = mapped_column(
        DateTime(timezone=True), server_default=func.now()
    )
    updated_at: Mapped[datetime | None] = mapped_column(
        DateTime(timezone=True), onupdate=func.now()
    )

    # Relationships
    user: Mapped[User] = relationship(back_populates="orders")
    order_items: Mapped[list[OrderItem]] = relationship(
        back_populates="order", cascade="all, delete-orphan"
    )


class OrderItem(Base):
    __tablename__ = "order_items"

    id: Mapped[int] = mapped_column(primary_key=True, index=True)
    order_id: Mapped[int] = mapped_column(ForeignKey("orders.id"))
    product_id: Mapped[int] = mapped_column(ForeignKey("products.id"))
    quantity: Mapped[int] = mapped_column(Integer)
    price: Mapped[float] = mapped_column(Float)  # Price at time of order
    total: Mapped[float] = mapped_column(Float)
    product_snapshot: Mapped[dict[str, Any] | None] = mapped_column(
        JSONB
    )  # Store product details at time of order
    created_at: Mapped[datetime] = mapped_column(
        DateTime(timezone=True), server_default=func.now()
    )

    # Relationships
    order: Mapped[Order] = relationship(back_populates="order_items")
    product: Mapped[Product] = relationship(back_populates="order_items")
