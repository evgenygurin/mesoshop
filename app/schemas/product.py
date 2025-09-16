from datetime import datetime
from typing import Optional, List, Dict, Any
from pydantic import BaseModel, ConfigDict


class CategoryBase(BaseModel):
    name: str
    slug: str
    description: Optional[str] = None
    parent_id: Optional[int] = None
    is_active: bool = True
    image_url: Optional[str] = None


class CategoryCreate(CategoryBase):
    pass


class CategoryUpdate(BaseModel):
    name: Optional[str] = None
    slug: Optional[str] = None
    description: Optional[str] = None
    parent_id: Optional[int] = None
    is_active: Optional[bool] = None
    image_url: Optional[str] = None


class CategoryResponse(CategoryBase):
    id: int
    created_at: datetime
    updated_at: Optional[datetime] = None

    model_config = ConfigDict(from_attributes=True)


class CategoryTree(CategoryResponse):
    children: List["CategoryTree"] = []
    products_count: int = 0


class ProductBase(BaseModel):
    name: str
    slug: str
    description: Optional[str] = None
    short_description: Optional[str] = None
    price: float
    compare_price: Optional[float] = None
    stock_quantity: int = 0
    category_id: Optional[int] = None
    sku: Optional[str] = None
    images: List[str] = []
    attributes: Dict[str, Any] = {}
    is_active: bool = True
    is_featured: bool = False
    weight: Optional[float] = None
    dimensions: Dict[str, float] = {}
    meta_title: Optional[str] = None
    meta_description: Optional[str] = None


class ProductCreate(ProductBase):
    pass


class ProductUpdate(BaseModel):
    name: Optional[str] = None
    slug: Optional[str] = None
    description: Optional[str] = None
    short_description: Optional[str] = None
    price: Optional[float] = None
    compare_price: Optional[float] = None
    stock_quantity: Optional[int] = None
    category_id: Optional[int] = None
    sku: Optional[str] = None
    images: Optional[List[str]] = None
    attributes: Optional[Dict[str, Any]] = None
    is_active: Optional[bool] = None
    is_featured: Optional[bool] = None
    weight: Optional[float] = None
    dimensions: Optional[Dict[str, float]] = None
    meta_title: Optional[str] = None
    meta_description: Optional[str] = None


class ProductResponse(ProductBase):
    id: int
    created_at: datetime
    updated_at: Optional[datetime] = None
    category: Optional[CategoryResponse] = None

    model_config = ConfigDict(from_attributes=True)


class ProductListResponse(BaseModel):
    products: List[ProductResponse]
    total: int
    page: int
    pages: int
    has_next: bool
    has_prev: bool


class ProductSearch(BaseModel):
    q: Optional[str] = None
    category_id: Optional[int] = None
    min_price: Optional[float] = None
    max_price: Optional[float] = None
    is_featured: Optional[bool] = None
    is_active: bool = True
    sort_by: str = "created_at"
    sort_order: str = "desc"