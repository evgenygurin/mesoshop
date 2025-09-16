# MesoShop - Modern FastAPI E-commerce Backend

🛒 Production-ready e-commerce API built with FastAPI, designed for modern development and Vercel deployment.

## Features

- ⚡ **FastAPI** - Modern, fast (high-performance) web framework
- 🔐 **JWT Authentication** - Secure user authentication with refresh tokens
- 💳 **Stripe Integration** - Complete payment processing
- 📦 **Product Management** - Full catalog with categories and inventory
- 🛍️ **Shopping Cart** - Persistent cart management
- 📋 **Order Processing** - Complete order lifecycle
- 🔧 **Modern Tooling** - uv, ruff, mypy, bandit for best practices
- 🚀 **Vercel Ready** - Optimized for serverless deployment

## Quick Start

```bash
# Install dependencies with uv (recommended)
make dev

# Start development server
make serve

# Run tests
make test

# Check code quality
make check
```

## Tech Stack

- **Python 3.12+** - Modern Python with latest features
- **FastAPI** - High-performance async web framework
- **SQLAlchemy 2.0+** - Modern ORM with typed models
- **Pydantic 2.0+** - Data validation with type safety
- **uv** - Ultra-fast Python package manager
- **ruff** - Lightning-fast linter and formatter
- **mypy** - Static type checking
- **bandit** - Security vulnerability scanning

## Development

```bash
# Format code
make format

# Run linter
make lint

# Type checking
make type-check

# Security scan
make security

# Complete quality pipeline
make all
```

## API Documentation

When running locally, visit:
- **Interactive API docs**: http://localhost:8000/docs
- **ReDoc**: http://localhost:8000/redoc

## Deployment

The project is configured for deployment on Vercel with GitHub Actions CI/CD pipeline.

```bash
# Deploy to production
make deploy

# Deploy to staging
make deploy-staging
```

## License

MIT License - see [LICENSE](LICENSE) file for details.
