from fastapi import HTTPException, status
from sqlalchemy import func, or_, select
from sqlalchemy.orm import Session, selectinload

from app.models.product import Category, Product
from app.schemas.product import (
    CategoryCreate,
    ProductCreate,
    ProductListResponse,
    ProductResponse,
    ProductSearch,
    ProductUpdate,
)


class ProductService:
    def __init__(self, db: Session):
        self.db = db

    async def create_product(self, product_create: ProductCreate) -> Product:
        """Create new product"""
        # Check if SKU already exists
        if product_create.sku:
            stmt = select(Product).where(Product.sku == product_create.sku)
            result = self.db.execute(stmt)
            if result.scalar_one_or_none():
                raise HTTPException(
                    status_code=status.HTTP_400_BAD_REQUEST, detail="SKU already exists"
                )

        # Check if slug already exists
        stmt = select(Product).where(Product.slug == product_create.slug)
        result = self.db.execute(stmt)
        if result.scalar_one_or_none():
            raise HTTPException(
                status_code=status.HTTP_400_BAD_REQUEST, detail="Slug already exists"
            )

        # Verify category exists if provided
        if product_create.category_id:
            category = await self.get_category_by_id(product_create.category_id)
            if not category:
                raise HTTPException(
                    status_code=status.HTTP_404_NOT_FOUND, detail="Category not found"
                )

        db_product = Product(**product_create.model_dump())
        self.db.add(db_product)
        self.db.commit()
        self.db.refresh(db_product)
        return db_product

    async def get_product_by_id(self, product_id: int) -> Product | None:
        """Get product by ID with category loaded"""
        stmt = (
            select(Product)
            .options(selectinload(Product.category))
            .where(Product.id == product_id)
        )
        result = self.db.execute(stmt)
        return result.scalar_one_or_none()

    async def get_product_by_slug(self, slug: str) -> Product | None:
        """Get product by slug with category loaded"""
        stmt = (
            select(Product)
            .options(selectinload(Product.category))
            .where(Product.slug == slug)
        )
        result = self.db.execute(stmt)
        return result.scalar_one_or_none()

    async def update_product(
        self, product_id: int, product_update: ProductUpdate
    ) -> Product | None:
        """Update product"""
        product = await self.get_product_by_id(product_id)
        if not product:
            return None

        # Check slug uniqueness if being updated
        if product_update.slug and product_update.slug != product.slug:
            stmt = select(Product).where(Product.slug == product_update.slug)
            result = self.db.execute(stmt)
            if result.scalar_one_or_none():
                raise HTTPException(
                    status_code=status.HTTP_400_BAD_REQUEST,
                    detail="Slug already exists",
                )

        # Check SKU uniqueness if being updated
        if product_update.sku and product_update.sku != product.sku:
            stmt = select(Product).where(Product.sku == product_update.sku)
            result = self.db.execute(stmt)
            if result.scalar_one_or_none():
                raise HTTPException(
                    status_code=status.HTTP_400_BAD_REQUEST, detail="SKU already exists"
                )

        update_data = product_update.model_dump(exclude_unset=True)
        for field, value in update_data.items():
            setattr(product, field, value)

        self.db.commit()
        self.db.refresh(product)
        return product

    async def delete_product(self, product_id: int) -> bool:
        """Delete product"""
        product = await self.get_product_by_id(product_id)
        if not product:
            return False

        self.db.delete(product)
        self.db.commit()
        return True

    async def search_products(
        self, search: ProductSearch, page: int = 1, limit: int = 20
    ) -> ProductListResponse:
        """Search products with filters and pagination"""
        stmt = select(Product).options(selectinload(Product.category))

        # Apply filters
        if search.q:
            stmt = stmt.where(
                or_(
                    Product.name.ilike(f"%{search.q}%"),
                    Product.description.ilike(f"%{search.q}%"),
                    Product.short_description.ilike(f"%{search.q}%"),
                )
            )

        if search.category_id:
            stmt = stmt.where(Product.category_id == search.category_id)

        if search.min_price is not None:
            stmt = stmt.where(Product.price >= search.min_price)

        if search.max_price is not None:
            stmt = stmt.where(Product.price <= search.max_price)

        if search.is_featured is not None:
            stmt = stmt.where(Product.is_featured == search.is_featured)

        stmt = stmt.where(Product.is_active == search.is_active)

        # Apply sorting
        if search.sort_by == "price":
            if search.sort_order == "asc":
                stmt = stmt.order_by(Product.price.asc())
            else:
                stmt = stmt.order_by(Product.price.desc())
        elif search.sort_by == "name":
            if search.sort_order == "asc":
                stmt = stmt.order_by(Product.name.asc())
            else:
                stmt = stmt.order_by(Product.name.desc())
        elif search.sort_order == "asc":
            stmt = stmt.order_by(Product.created_at.asc())
        else:
            stmt = stmt.order_by(Product.created_at.desc())

        # Get total count
        count_stmt = select(func.count()).select_from(stmt.subquery())
        total = self.db.execute(count_stmt).scalar() or 0

        # Apply pagination
        offset = (page - 1) * limit
        stmt = stmt.offset(offset).limit(limit)

        result = self.db.execute(stmt)
        products_data = result.scalars().all()

        # Convert to ProductResponse objects
        products = [
            ProductResponse.model_validate(product) for product in products_data
        ]

        # Calculate pagination info
        pages = (total + limit - 1) // limit
        has_next = page < pages
        has_prev = page > 1

        return ProductListResponse(
            products=products,
            total=total,
            page=page,
            pages=pages,
            has_next=has_next,
            has_prev=has_prev,
        )

    # Category methods
    async def create_category(self, category_create: CategoryCreate) -> Category:
        """Create new category"""
        # Check if slug already exists
        stmt = select(Category).where(Category.slug == category_create.slug)
        result = self.db.execute(stmt)
        if result.scalar_one_or_none():
            raise HTTPException(
                status_code=status.HTTP_400_BAD_REQUEST, detail="Slug already exists"
            )

        # Verify parent category exists if provided
        if category_create.parent_id:
            parent = await self.get_category_by_id(category_create.parent_id)
            if not parent:
                raise HTTPException(
                    status_code=status.HTTP_404_NOT_FOUND,
                    detail="Parent category not found",
                )

        db_category = Category(**category_create.model_dump())
        self.db.add(db_category)
        self.db.commit()
        self.db.refresh(db_category)
        return db_category

    async def get_category_by_id(self, category_id: int) -> Category | None:
        """Get category by ID"""
        stmt = select(Category).where(Category.id == category_id)
        result = self.db.execute(stmt)
        return result.scalar_one_or_none()

    async def get_categories(self, include_inactive: bool = False) -> list[Category]:
        """Get all categories"""
        stmt = select(Category)
        if not include_inactive:
            stmt = stmt.where(Category.is_active)

        result = self.db.execute(stmt)
        return list(result.scalars().all())

    async def update_stock(
        self, product_id: int, quantity_change: int
    ) -> Product | None:
        """Update product stock"""
        product = await self.get_product_by_id(product_id)
        if not product:
            return None

        new_quantity = product.stock_quantity + quantity_change
        if new_quantity < 0:
            raise HTTPException(
                status_code=status.HTTP_400_BAD_REQUEST, detail="Insufficient stock"
            )

        product.stock_quantity = new_quantity
        self.db.commit()
        self.db.refresh(product)
        return product
