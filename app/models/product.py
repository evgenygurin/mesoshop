from datetime import datetime
from typing import Optional, List, Dict, Any
from sqlalchemy import String, Float, Boolean, Integer, DateTime, ForeignKey, Text, func
from sqlalchemy.dialects.postgresql import JSONB
from sqlalchemy.orm import Mapped, mapped_column, relationship
from app.core.database import Base


class Category(Base):
    __tablename__ = "categories"

    id: Mapped[int] = mapped_column(primary_key=True, index=True)
    name: Mapped[str] = mapped_column(String(255))
    slug: Mapped[str] = mapped_column(String(255), unique=True, index=True)
    description: Mapped[Optional[str]] = mapped_column(Text)
    parent_id: Mapped[Optional[int]] = mapped_column(ForeignKey("categories.id"))
    is_active: Mapped[bool] = mapped_column(Boolean, default=True)
    image_url: Mapped[Optional[str]] = mapped_column(String(500))
    created_at: Mapped[datetime] = mapped_column(DateTime(timezone=True), server_default=func.now())
    updated_at: Mapped[Optional[datetime]] = mapped_column(DateTime(timezone=True), onupdate=func.now())

    # Self-referential relationship
    parent: Mapped[Optional["Category"]] = relationship(remote_side=[id], back_populates="children")
    children: Mapped[List["Category"]] = relationship(back_populates="parent")
    products: Mapped[List["Product"]] = relationship(back_populates="category")


class Product(Base):
    __tablename__ = "products"

    id: Mapped[int] = mapped_column(primary_key=True, index=True)
    name: Mapped[str] = mapped_column(String(255))
    slug: Mapped[str] = mapped_column(String(255), unique=True, index=True)
    description: Mapped[Optional[str]] = mapped_column(Text)
    short_description: Mapped[Optional[str]] = mapped_column(String(500))
    price: Mapped[float] = mapped_column(Float)
    compare_price: Mapped[Optional[float]] = mapped_column(Float)
    stock_quantity: Mapped[int] = mapped_column(Integer, default=0)
    category_id: Mapped[Optional[int]] = mapped_column(ForeignKey("categories.id"))
    sku: Mapped[Optional[str]] = mapped_column(String(100), unique=True)
    images: Mapped[List[str]] = mapped_column(JSONB, default=[])
    attributes: Mapped[Dict[str, Any]] = mapped_column(JSONB, default={})
    is_active: Mapped[bool] = mapped_column(Boolean, default=True)
    is_featured: Mapped[bool] = mapped_column(Boolean, default=False)
    weight: Mapped[Optional[float]] = mapped_column(Float)
    dimensions: Mapped[Dict[str, float]] = mapped_column(JSONB, default={})
    meta_title: Mapped[Optional[str]] = mapped_column(String(255))
    meta_description: Mapped[Optional[str]] = mapped_column(String(500))
    created_at: Mapped[datetime] = mapped_column(DateTime(timezone=True), server_default=func.now())
    updated_at: Mapped[Optional[datetime]] = mapped_column(DateTime(timezone=True), onupdate=func.now())

    # Relationships
    category: Mapped[Optional["Category"]] = relationship(back_populates="products")
    order_items: Mapped[List["OrderItem"]] = relationship(back_populates="product")
    cart_items: Mapped[List["CartItem"]] = relationship(back_populates="product")