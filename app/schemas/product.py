from datetime import datetime
from typing import Any

from pydantic import BaseModel, ConfigDict


class CategoryBase(BaseModel):
    name: str
    slug: str
    description: str | None = None
    parent_id: int | None = None
    is_active: bool = True
    image_url: str | None = None


class CategoryCreate(CategoryBase):
    pass


class CategoryUpdate(BaseModel):
    name: str | None = None
    slug: str | None = None
    description: str | None = None
    parent_id: int | None = None
    is_active: bool | None = None
    image_url: str | None = None


class CategoryResponse(CategoryBase):
    id: int
    created_at: datetime
    updated_at: datetime | None = None

    model_config = ConfigDict(from_attributes=True)


class CategoryTree(CategoryResponse):
    children: list["CategoryTree"] = []
    products_count: int = 0


class ProductBase(BaseModel):
    name: str
    slug: str
    description: str | None = None
    short_description: str | None = None
    price: float
    compare_price: float | None = None
    stock_quantity: int = 0
    category_id: int | None = None
    sku: str | None = None
    images: list[str] = []
    attributes: dict[str, Any] = {}
    is_active: bool = True
    is_featured: bool = False
    weight: float | None = None
    dimensions: dict[str, float] = {}
    meta_title: str | None = None
    meta_description: str | None = None


class ProductCreate(ProductBase):
    pass


class ProductUpdate(BaseModel):
    name: str | None = None
    slug: str | None = None
    description: str | None = None
    short_description: str | None = None
    price: float | None = None
    compare_price: float | None = None
    stock_quantity: int | None = None
    category_id: int | None = None
    sku: str | None = None
    images: list[str] | None = None
    attributes: dict[str, Any] | None = None
    is_active: bool | None = None
    is_featured: bool | None = None
    weight: float | None = None
    dimensions: dict[str, float] | None = None
    meta_title: str | None = None
    meta_description: str | None = None


class ProductResponse(ProductBase):
    id: int
    created_at: datetime
    updated_at: datetime | None = None
    category: CategoryResponse | None = None

    model_config = ConfigDict(from_attributes=True)


class ProductListResponse(BaseModel):
    products: list[ProductResponse]
    total: int
    page: int
    pages: int
    has_next: bool
    has_prev: bool


class ProductSearch(BaseModel):
    q: str | None = None
    category_id: int | None = None
    min_price: float | None = None
    max_price: float | None = None
    is_featured: bool | None = None
    is_active: bool = True
    sort_by: str = "created_at"
    sort_order: str = "desc"
