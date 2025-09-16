from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from mangum import Mangum
from app.core.config import settings
from app.core.database import create_tables


# Create FastAPI app
app = FastAPI(
    title=settings.APP_NAME,
    description="Modern e-commerce backend with FastAPI",
    version=settings.VERSION,
    debug=settings.DEBUG
)

# Configure CORS
app.add_middleware(
    CORSMiddleware,
    allow_origins=settings.BACKEND_CORS_ORIGINS,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Create database tables on startup
@app.on_event("startup")
async def startup_event():
    create_tables()

# Health check endpoint
@app.get("/")
async def root():
    return {"message": "MesoShop API is running", "version": settings.VERSION}

@app.get("/health")
async def health_check():
    return {"status": "healthy", "environment": settings.ENVIRONMENT}

# Vercel serverless handler
handler = Mangum(app)