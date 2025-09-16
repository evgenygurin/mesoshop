# 🛒 Comprehensive FastAPI E-commerce Development Guide

## 🎯 Project Overview

This guide provides a complete blueprint for building a modern e-commerce application using FastAPI with Vercel deployment, focusing on best practices, security, and scalability.

## 🏗️ Architectural Patterns

### 1. Modular Architecture (Recommended for Start)

```text
src/
├── main.py                    # FastAPI app initialization
├── core/
│   ├── config.py             # Settings, environment variables
│   ├── security.py           # JWT, OAuth2 helpers
│   ├── database.py           # Database connection & session
│   └── middleware.py         # CORS, authentication middleware
├── api/
│   ├── deps.py               # Global dependencies
│   └── v1/
│       ├── endpoints/
│       │   ├── auth.py       # Authentication endpoints
│       │   ├── products.py   # Product management
│       │   ├── orders.py     # Order processing
│       │   ├── payments.py   # Payment integration
│       │   └── users.py      # User management
│       └── __init__.py
├── services/                 # Business logic layer
│   ├── auth_service.py
│   ├── product_service.py
│   ├── order_service.py
│   ├── payment_service.py
│   └── inventory_service.py
├── repositories/             # Data access layer
│   ├── base.py
│   ├── auth_repository.py
│   ├── product_repository.py
│   └── order_repository.py
├── models/                   # SQLAlchemy models
│   ├── __init__.py
│   ├── user.py
│   ├── product.py
│   ├── order.py
│   └── category.py
├── schemas/                  # Pydantic schemas
│   ├── __init__.py
│   ├── user.py
│   ├── product.py
│   ├── order.py
│   └── auth.py
└── workers/                  # Background tasks (Celery)
    ├── __init__.py
    ├── email_tasks.py
    └── inventory_tasks.py
```

### 2. Microservices Architecture (For Scale)

For larger applications, consider splitting into services:

- **User Service**: Authentication, registration, profiles
- **Product Catalog Service**: Product management, categories, search
- **Inventory Service**: Stock management, availability tracking
- **Order Processing Service**: Order creation, validation, status updates
- **Payment Service**: Payment processing, refunds
- **Notification Service**: Email, SMS, push notifications

## ⚡ Vercel Integration Setup

### Core Files for Vercel Deployment

**vercel.json**:
```json
{
  "functions": {
    "src/main.py": {
      "runtime": "python3.9",
      "maxDuration": 300
    }
  },
  "routes": [
    {
      "src": "/(.*)",
      "dest": "src/main.py"
    }
  ],
  "env": {
    "PORT": "8000"
  },
  "headers": [
    {
      "source": "/api/(.*)",
      "headers": [
        {
          "key": "Access-Control-Allow-Origin",
          "value": "*"
        }
      ]
    }
  ]
}
```

**main.py (Vercel-optimized)**:
```python
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from mangum import Mangum
import os

from core.config import settings
from api.v1.endpoints import auth, products, orders, payments

app = FastAPI(
    title="E-commerce API",
    description="Modern e-commerce backend with FastAPI",
    version="1.0.0"
)

# CORS configuration
app.add_middleware(
    CORSMiddleware,
    allow_origins=settings.BACKEND_CORS_ORIGINS,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Include routers
app.include_router(auth.router, prefix="/api/v1/auth", tags=["auth"])
app.include_router(products.router, prefix="/api/v1/products", tags=["products"])
app.include_router(orders.router, prefix="/api/v1/orders", tags=["orders"])
app.include_router(payments.router, prefix="/api/v1/payments", tags=["payments"])

@app.get("/")
def read_root():
    return {"message": "FastAPI E-commerce API", "version": "1.0.0"}

@app.get("/health")
def health_check():
    return {"status": "healthy"}

# Vercel serverless handler
handler = Mangum(app)
```

**requirements.txt**:
```text
fastapi==0.110.0
mangum==0.17.0
uvicorn[standard]==0.24.0
pydantic[email]==2.5.0
sqlalchemy==2.0.23
alembic==1.13.0
asyncpg==0.29.0
python-jose[cryptography]==3.3.0
passlib[bcrypt]==1.7.4
python-multipart==0.0.6
redis==5.0.1
celery==5.3.4
stripe==7.8.0
sentry-sdk[fastapi]==1.38.0
loguru==0.7.2
pytest==7.4.3
pytest-asyncio==0.21.1
httpx==0.25.2
```

## 🔐 Security Implementation

### JWT Authentication System

**core/security.py**:
```python
from datetime import datetime, timedelta
from typing import Union, Any
from jose import jwt, JWTError
from passlib.context import CryptContext
from fastapi import HTTPException, status
from core.config import settings

pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")

def create_access_token(
    subject: Union[str, Any], 
    expires_delta: timedelta = None
) -> str:
    if expires_delta:
        expire = datetime.utcnow() + expires_delta
    else:
        expire = datetime.utcnow() + timedelta(
            minutes=settings.ACCESS_TOKEN_EXPIRE_MINUTES
        )
    
    to_encode = {"exp": expire, "sub": str(subject)}
    encoded_jwt = jwt.encode(
        to_encode, 
        settings.SECRET_KEY, 
        algorithm=settings.ALGORITHM
    )
    return encoded_jwt

def verify_password(plain_password: str, hashed_password: str) -> bool:
    return pwd_context.verify(plain_password, hashed_password)

def get_password_hash(password: str) -> str:
    return pwd_context.hash(password)

def decode_access_token(token: str):
    try:
        payload = jwt.decode(
            token, 
            settings.SECRET_KEY, 
            algorithms=[settings.ALGORITHM]
        )
        return payload.get("sub")
    except JWTError:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Could not validate credentials"
        )
```

### Authentication Dependencies

**api/deps.py**:
```python
from fastapi import Depends, HTTPException, status
from fastapi.security import HTTPBearer, HTTPAuthorizationCredentials
from sqlalchemy.orm import Session
from core.database import get_db
from core.security import decode_access_token
from services.auth_service import AuthService

security = HTTPBearer()

def get_current_user(
    credentials: HTTPAuthorizationCredentials = Depends(security),
    db: Session = Depends(get_db)
):
    token = credentials.credentials
    user_id = decode_access_token(token)
    
    if user_id is None:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Invalid authentication credentials"
        )
    
    auth_service = AuthService(db)
    user = auth_service.get_user_by_id(user_id)
    
    if user is None:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="User not found"
        )
    
    return user

def get_current_active_user(current_user = Depends(get_current_user)):
    if not current_user.is_active:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="Inactive user"
        )
    return current_user
```

## 💾 Database Schema & Models

### Core Database Schema

```sql
-- Users table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    hashed_password VARCHAR(255) NOT NULL,
    full_name VARCHAR(255),
    is_active BOOLEAN DEFAULT TRUE,
    is_superuser BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Categories table
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    slug VARCHAR(255) UNIQUE NOT NULL,
    description TEXT,
    parent_id INTEGER REFERENCES categories(id),
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Products table
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INTEGER DEFAULT 0,
    category_id INTEGER REFERENCES categories(id),
    sku VARCHAR(100) UNIQUE,
    images JSONB DEFAULT '[]',
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Orders table
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    status VARCHAR(50) DEFAULT 'pending',
    total_amount DECIMAL(10,2) NOT NULL,
    shipping_address JSONB,
    billing_address JSONB,
    payment_status VARCHAR(50) DEFAULT 'pending',
    payment_intent_id VARCHAR(255),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Order items table
CREATE TABLE order_items (
    id SERIAL PRIMARY KEY,
    order_id INTEGER REFERENCES orders(id) ON DELETE CASCADE,
    product_id INTEGER REFERENCES products(id),
    quantity INTEGER NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Shopping cart table
CREATE TABLE cart_items (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    product_id INTEGER REFERENCES products(id),
    quantity INTEGER NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(user_id, product_id)
);
```

### SQLAlchemy Models

**models/user.py**:
```python
from sqlalchemy import Column, Integer, String, Boolean, DateTime
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship
from core.database import Base

class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, index=True)
    email = Column(String, unique=True, index=True, nullable=False)
    hashed_password = Column(String, nullable=False)
    full_name = Column(String)
    is_active = Column(Boolean, default=True)
    is_superuser = Column(Boolean, default=False)
    created_at = Column(DateTime(timezone=True), server_default=func.now())
    updated_at = Column(DateTime(timezone=True), onupdate=func.now())

    # Relationships
    orders = relationship("Order", back_populates="user")
    cart_items = relationship("CartItem", back_populates="user")
```

**models/product.py**:
```python
from sqlalchemy import Column, Integer, String, Float, Boolean, DateTime, ForeignKey, Text
from sqlalchemy.dialects.postgresql import JSONB
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship
from core.database import Base

class Category(Base):
    __tablename__ = "categories"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, nullable=False)
    slug = Column(String, unique=True, nullable=False)
    description = Column(Text)
    parent_id = Column(Integer, ForeignKey("categories.id"))
    is_active = Column(Boolean, default=True)
    created_at = Column(DateTime(timezone=True), server_default=func.now())

    # Self-referential relationship
    parent = relationship("Category", remote_side=[id])
    children = relationship("Category")
    products = relationship("Product", back_populates="category")

class Product(Base):
    __tablename__ = "products"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, nullable=False)
    description = Column(Text)
    price = Column(Float, nullable=False)
    stock_quantity = Column(Integer, default=0)
    category_id = Column(Integer, ForeignKey("categories.id"))
    sku = Column(String, unique=True)
    images = Column(JSONB, default=[])
    is_active = Column(Boolean, default=True)
    created_at = Column(DateTime(timezone=True), server_default=func.now())
    updated_at = Column(DateTime(timezone=True), onupdate=func.now())

    # Relationships
    category = relationship("Category", back_populates="products")
    order_items = relationship("OrderItem", back_populates="product")
    cart_items = relationship("CartItem", back_populates="product")
```

## 💳 Payment Integration

### Stripe Integration

**services/payment_service.py**:
```python
import stripe
from typing import Dict, Any
from fastapi import HTTPException, status
from core.config import settings

stripe.api_key = settings.STRIPE_SECRET_KEY

class PaymentService:
    
    @staticmethod
    async def create_payment_intent(
        amount: int, 
        currency: str = "usd",
        metadata: Dict[str, Any] = None
    ) -> Dict[str, Any]:
        try:
            intent = stripe.PaymentIntent.create(
                amount=amount,  # Amount in cents
                currency=currency,
                automatic_payment_methods={"enabled": True},
                metadata=metadata or {}
            )
            return {
                "client_secret": intent.client_secret,
                "payment_intent_id": intent.id
            }
        except stripe.error.StripeError as e:
            raise HTTPException(
                status_code=status.HTTP_400_BAD_REQUEST,
                detail=f"Payment error: {str(e)}"
            )

    @staticmethod
    async def confirm_payment(payment_intent_id: str) -> bool:
        try:
            intent = stripe.PaymentIntent.retrieve(payment_intent_id)
            return intent.status == "succeeded"
        except stripe.error.StripeError as e:
            raise HTTPException(
                status_code=status.HTTP_400_BAD_REQUEST,
                detail=f"Payment confirmation error: {str(e)}"
            )

    @staticmethod
    async def create_refund(payment_intent_id: str, amount: int = None) -> Dict[str, Any]:
        try:
            refund_data = {"payment_intent": payment_intent_id}
            if amount:
                refund_data["amount"] = amount
                
            refund = stripe.Refund.create(**refund_data)
            return {
                "refund_id": refund.id,
                "status": refund.status,
                "amount": refund.amount
            }
        except stripe.error.StripeError as e:
            raise HTTPException(
                status_code=status.HTTP_400_BAD_REQUEST,
                detail=f"Refund error: {str(e)}"
            )
```

### Payment Endpoints

**api/v1/endpoints/payments.py**:
```python
from fastapi import APIRouter, Depends, HTTPException, status
from sqlalchemy.orm import Session
from core.database import get_db
from api.deps import get_current_active_user
from services.payment_service import PaymentService
from services.order_service import OrderService
from schemas.payment import PaymentIntentCreate, PaymentIntentResponse

router = APIRouter()

@router.post("/create-payment-intent", response_model=PaymentIntentResponse)
async def create_payment_intent(
    payment_data: PaymentIntentCreate,
    current_user = Depends(get_current_active_user),
    db: Session = Depends(get_db)
):
    # Verify order belongs to user
    order_service = OrderService(db)
    order = order_service.get_order_by_id(payment_data.order_id)
    
    if not order or order.user_id != current_user.id:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Order not found"
        )
    
    # Create payment intent
    payment_result = await PaymentService.create_payment_intent(
        amount=int(order.total_amount * 100),  # Convert to cents
        metadata={"order_id": order.id, "user_id": current_user.id}
    )
    
    # Update order with payment intent ID
    order_service.update_order_payment_intent(
        order.id, 
        payment_result["payment_intent_id"]
    )
    
    return PaymentIntentResponse(**payment_result)

@router.post("/confirm-payment/{order_id}")
async def confirm_payment(
    order_id: int,
    current_user = Depends(get_current_active_user),
    db: Session = Depends(get_db)
):
    order_service = OrderService(db)
    order = order_service.get_order_by_id(order_id)
    
    if not order or order.user_id != current_user.id:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Order not found"
        )
    
    if not order.payment_intent_id:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="No payment intent found for this order"
        )
    
    # Confirm payment with Stripe
    payment_confirmed = await PaymentService.confirm_payment(
        order.payment_intent_id
    )
    
    if payment_confirmed:
        order_service.update_order_status(order_id, "paid")
        return {"message": "Payment confirmed successfully"}
    else:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="Payment confirmation failed"
        )
```

## 🔄 Background Tasks & Caching

### Celery Configuration

**workers/celery_app.py**:
```python
from celery import Celery
from core.config import settings

celery_app = Celery(
    "ecommerce",
    broker=settings.REDIS_URL,
    backend=settings.REDIS_URL
)

celery_app.conf.update(
    task_serializer="json",
    accept_content=["json"],
    result_serializer="json",
    timezone="UTC",
    enable_utc=True,
    task_track_started=True,
    task_time_limit=300,
    task_soft_time_limit=240,
)

# Auto-discover tasks
celery_app.autodiscover_tasks([
    "workers.email_tasks",
    "workers.inventory_tasks"
])
```

**workers/email_tasks.py**:
```python
from celery import Celery
from typing import Dict, Any
import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from core.config import settings
from .celery_app import celery_app

@celery_app.task
def send_order_confirmation_email(user_email: str, order_data: Dict[str, Any]):
    """Send order confirmation email to customer"""
    try:
        msg = MIMEMultipart()
        msg['From'] = settings.EMAIL_FROM
        msg['To'] = user_email
        msg['Subject'] = f"Order Confirmation #{order_data['id']}"

        body = f"""
        Dear Customer,

        Thank you for your order! Your order #{order_data['id']} has been confirmed.

        Order Details:
        - Total Amount: ${order_data['total_amount']}
        - Status: {order_data['status']}
        
        We'll send you another email when your order ships.

        Best regards,
        Your E-commerce Team
        """

        msg.attach(MIMEText(body, 'plain'))

        server = smtplib.SMTP(settings.SMTP_HOST, settings.SMTP_PORT)
        server.starttls()
        server.login(settings.EMAIL_USERNAME, settings.EMAIL_PASSWORD)
        text = msg.as_string()
        server.sendmail(settings.EMAIL_FROM, user_email, text)
        server.quit()

        return {"status": "success", "message": "Email sent successfully"}
    except Exception as e:
        return {"status": "error", "message": str(e)}

@celery_app.task
def send_low_stock_alert(product_id: int, current_stock: int):
    """Send low stock alert to admin"""
    # Implementation for low stock alerts
    pass
```

### Redis Caching

**core/cache.py**:
```python
import redis
import json
from typing import Any, Optional
from functools import wraps
from core.config import settings

redis_client = redis.Redis.from_url(settings.REDIS_URL)

def cache_result(expiration: int = 3600, key_prefix: str = ""):
    """Decorator to cache function results"""
    def decorator(func):
        @wraps(func)
        async def wrapper(*args, **kwargs):
            # Create cache key
            cache_key = f"{key_prefix}:{func.__name__}:{hash(str(args) + str(kwargs))}"
            
            # Try to get from cache
            try:
                cached_result = redis_client.get(cache_key)
                if cached_result:
                    return json.loads(cached_result)
            except Exception:
                pass  # Continue if cache fails
            
            # Execute function and cache result
            result = await func(*args, **kwargs)
            
            try:
                redis_client.setex(
                    cache_key,
                    expiration,
                    json.dumps(result, default=str)
                )
            except Exception:
                pass  # Continue if cache fails
            
            return result
        return wrapper
    return decorator

class CacheManager:
    @staticmethod
    def set(key: str, value: Any, expiration: int = 3600) -> bool:
        try:
            redis_client.setex(key, expiration, json.dumps(value, default=str))
            return True
        except Exception:
            return False

    @staticmethod
    def get(key: str) -> Optional[Any]:
        try:
            cached_value = redis_client.get(key)
            if cached_value:
                return json.loads(cached_value)
        except Exception:
            pass
        return None

    @staticmethod
    def delete(key: str) -> bool:
        try:
            redis_client.delete(key)
            return True
        except Exception:
            return False

    @staticmethod
    def clear_pattern(pattern: str) -> int:
        """Clear all keys matching pattern"""
        try:
            keys = redis_client.keys(pattern)
            if keys:
                return redis_client.delete(*keys)
        except Exception:
            pass
        return 0
```

## 📊 Performance & Monitoring

### Logging Configuration

**core/logging.py**:
```python
from loguru import logger
import sys
from core.config import settings

def configure_logging():
    # Remove default handler
    logger.remove()
    
    # Add custom handlers
    logger.add(
        sys.stdout,
        format="<green>{time:YYYY-MM-DD HH:mm:ss}</green> | <level>{level: <8}</level> | <cyan>{name}</cyan>:<cyan>{function}</cyan>:<cyan>{line}</cyan> - <level>{message}</level>",
        level=settings.LOG_LEVEL
    )
    
    # Add file handler for production
    if settings.ENVIRONMENT == "production":
        logger.add(
            "logs/app.log",
            rotation="500 MB",
            retention="10 days",
            level="INFO"
        )

# Request logging middleware
from fastapi import Request, Response
import time

async def log_requests(request: Request, call_next):
    start_time = time.time()
    
    logger.info(f"Request: {request.method} {request.url}")
    
    response = await call_next(request)
    
    process_time = time.time() - start_time
    logger.info(
        f"Response: {response.status_code} - {process_time:.3f}s"
    )
    
    return response
```

### Sentry Integration

**core/monitoring.py**:
```python
import sentry_sdk
from sentry_sdk.integrations.fastapi import FastApiIntegration
from sentry_sdk.integrations.sqlalchemy import SqlalchemyIntegration
from core.config import settings

def configure_sentry():
    if settings.SENTRY_DSN:
        sentry_sdk.init(
            dsn=settings.SENTRY_DSN,
            integrations=[
                FastApiIntegration(auto_enabling_integrations=False),
                SqlalchemyIntegration(),
            ],
            traces_sample_rate=0.1,
            environment=settings.ENVIRONMENT,
        )
```

## 🚀 Deployment Strategies

### Environment Variables for Vercel

```bash
# Database
DATABASE_URL=postgresql://user:password@host:port/dbname

# Security
SECRET_KEY=your-super-secret-key-here
ALGORITHM=HS256
ACCESS_TOKEN_EXPIRE_MINUTES=30

# CORS
BACKEND_CORS_ORIGINS=["http://localhost:3000", "https://yourdomain.com"]

# Redis
REDIS_URL=redis://username:password@host:port/0

# Stripe
STRIPE_SECRET_KEY=sk_test_...
STRIPE_PUBLISHABLE_KEY=pk_test_...

# Email (optional)
SMTP_HOST=smtp.gmail.com
SMTP_PORT=587
EMAIL_USERNAME=your-email@gmail.com
EMAIL_PASSWORD=your-app-password

# Monitoring
SENTRY_DSN=https://your-sentry-dsn

# Environment
ENVIRONMENT=production
LOG_LEVEL=INFO
```

### Production Deployment Checklist

- [ ] Environment variables configured in Vercel
- [ ] Database migrations applied
- [ ] Redis instance configured
- [ ] Stripe webhooks configured
- [ ] Error monitoring (Sentry) setup
- [ ] CORS origins properly configured
- [ ] Rate limiting implemented
- [ ] API documentation deployed
- [ ] Health checks configured
- [ ] Backup strategy implemented

### Alternative Deployment Options

1. **Railway**: Better for stateful applications
   - Persistent storage
   - Built-in PostgreSQL
   - Docker support

2. **Render**: Good PostgreSQL support
   - Auto-deploy from Git
   - Managed databases
   - Static site hosting

3. **DigitalOcean App Platform**: More control
   - Container support
   - Multiple environments
   - Database integration

## ⚠️ Important Considerations

### Vercel Limitations

- **Execution Time**: 10s (Hobby) / 300s (Pro)
- **Response Size**: 4.5MB limit
- **Cold Starts**: Can affect performance
- **Stateless**: Need external storage for sessions

### Best Practices

1. **Use async/await everywhere** for better performance
2. **Implement proper error handling** with detailed responses
3. **Cache frequently accessed data** with Redis
4. **Optimize dependencies** to reduce cold start time
5. **Use database connection pooling** for efficiency
6. **Implement rate limiting** to prevent abuse
7. **Log all important operations** for debugging
8. **Use background tasks** for heavy operations

### Security Checklist

- [ ] Input validation on all endpoints
- [ ] SQL injection prevention (use ORM)
- [ ] XSS protection headers
- [ ] Rate limiting on auth endpoints
- [ ] Secure password hashing
- [ ] JWT token expiration
- [ ] API key rotation strategy
- [ ] HTTPS everywhere
- [ ] Database access controls
- [ ] Environment variable security

This comprehensive guide provides a solid foundation for building a modern, scalable e-commerce application with FastAPI and Vercel deployment.
