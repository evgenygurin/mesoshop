# MesoShop Development Makefile
# Requires: uv (https://github.com/astral-sh/uv)

.PHONY: help install dev clean test lint format type-check security audit fix check all serve build deploy

.DEFAULT_GOAL := help

# Colors for output
CYAN = \033[0;36m
GREEN = \033[0;32m
YELLOW = \033[1;33m
RED = \033[0;31m
NC = \033[0m # No Color

help: ## Show this help message
	@echo "${CYAN}MesoShop FastAPI E-commerce Backend${NC}"
	@echo "${GREEN}Available commands:${NC}"
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  ${CYAN}%-15s${NC} %s\n", $$1, $$2}' $(MAKEFILE_LIST)

# Installation & Environment
install: ## Install production dependencies with uv
	@echo "${GREEN}Installing production dependencies...${NC}"
	uv pip install -e .

dev: ## Install development dependencies with uv
	@echo "${GREEN}Installing development dependencies...${NC}"
	uv pip install -e ".[dev]"
	pre-commit install

clean: ## Clean cache and temporary files
	@echo "${YELLOW}Cleaning cache and temporary files...${NC}"
	find . -type d -name "__pycache__" -delete
	find . -type f -name "*.pyc" -delete
	find . -type d -name ".pytest_cache" -delete
	find . -type d -name ".mypy_cache" -delete
	find . -type d -name ".ruff_cache" -delete
	rm -rf htmlcov/
	rm -rf dist/
	rm -rf build/
	rm -rf .coverage

# Development server
serve: ## Run development server with hot reload
	@echo "${GREEN}Starting FastAPI development server...${NC}"
	uvicorn app.main:app --reload --host 0.0.0.0 --port 8000

serve-prod: ## Run production server
	@echo "${GREEN}Starting FastAPI production server...${NC}"
	uvicorn app.main:app --host 0.0.0.0 --port 8000

# Code Quality
format: ## Format code with ruff
	@echo "${GREEN}Formatting code with ruff...${NC}"
	ruff format app/ tests/
	ruff check app/ tests/ --fix

lint: ## Lint code with ruff
	@echo "${GREEN}Linting code with ruff...${NC}"
	ruff check app/ tests/

type-check: ## Type check with mypy
	@echo "${GREEN}Type checking with mypy...${NC}"
	mypy app/

security: ## Security scan with bandit
	@echo "${GREEN}Running security scan with bandit...${NC}"
	bandit -r app/ -f json -o bandit-report.json || bandit -r app/

audit: ## Audit dependencies for security issues
	@echo "${GREEN}Auditing dependencies...${NC}"
	uv pip install pip-audit
	pip-audit

fix: ## Auto-fix all issues (format + lint fixes)
	@echo "${GREEN}Auto-fixing code issues...${NC}"
	ruff format app/ tests/
	ruff check app/ tests/ --fix
	@echo "${GREEN}✓ Code fixed!${NC}"

check: lint type-check security ## Run all checks (lint, type, security)
	@echo "${GREEN}✓ All checks passed!${NC}"

# Testing
test: ## Run tests with pytest
	@echo "${GREEN}Running tests...${NC}"
	pytest

test-cov: ## Run tests with coverage report
	@echo "${GREEN}Running tests with coverage...${NC}"
	pytest --cov=app --cov-report=html --cov-report=term-missing

test-watch: ## Run tests in watch mode
	@echo "${GREEN}Running tests in watch mode...${NC}"
	pytest-watch

test-unit: ## Run only unit tests
	@echo "${GREEN}Running unit tests...${NC}"
	pytest -m unit

test-integration: ## Run only integration tests
	@echo "${GREEN}Running integration tests...${NC}"
	pytest -m integration

# Database
db-upgrade: ## Apply database migrations
	@echo "${GREEN}Applying database migrations...${NC}"
	alembic upgrade head

db-downgrade: ## Rollback one database migration
	@echo "${GREEN}Rolling back database migration...${NC}"
	alembic downgrade -1

db-revision: ## Create new database migration
	@echo "${GREEN}Creating new database migration...${NC}"
	@read -p "Migration message: " msg; \
	alembic revision --autogenerate -m "$$msg"

db-reset: ## Reset database (WARNING: destroys all data)
	@echo "${RED}WARNING: This will destroy all database data!${NC}"
	@read -p "Are you sure? (y/N): " confirm; \
	if [ "$$confirm" = "y" ] || [ "$$confirm" = "Y" ]; then \
		alembic downgrade base && alembic upgrade head; \
	fi

# Comprehensive quality check
all: clean format lint type-check security test ## Run complete quality pipeline
	@echo "${GREEN}✓ Complete quality pipeline finished!${NC}"

# CI/CD helpers
ci-install: ## Install dependencies for CI
	@echo "${GREEN}Installing CI dependencies...${NC}"
	uv pip install -e ".[dev,test]"

ci-check: ## Run CI checks (no formatting changes)
	@echo "${GREEN}Running CI checks...${NC}"
	ruff check app/ tests/
	mypy app/
	bandit -r app/ -q
	pytest --cov=app --cov-fail-under=80

# Docker helpers
docker-build: ## Build Docker image
	@echo "${GREEN}Building Docker image...${NC}"
	docker build -t mesoshop:latest .

docker-run: ## Run Docker container
	@echo "${GREEN}Running Docker container...${NC}"
	docker run -p 8000:8000 --env-file .env mesoshop:latest

# Deployment helpers
build: ## Build package
	@echo "${GREEN}Building package...${NC}"
	python -m build

deploy: ## Deploy to production (requires setup)
	@echo "${GREEN}Deploying to production...${NC}"
	vercel --prod

deploy-staging: ## Deploy to staging
	@echo "${GREEN}Deploying to staging...${NC}"
	vercel

# Development utilities
shell: ## Open Python shell with app context
	@echo "${GREEN}Opening Python shell...${NC}"
	python -c "from app.main import app; import IPython; IPython.embed()"

routes: ## Show all API routes
	@echo "${GREEN}API Routes:${NC}"
	python -c "from app.main import app; from fastapi.routing import APIRoute; [print(f'{route.methods} {route.path}') for route in app.routes if isinstance(route, APIRoute)]"

deps-tree: ## Show dependency tree
	@echo "${GREEN}Dependency tree:${NC}"
	uv pip install pipdeptree
	pipdeptree

deps-outdated: ## Show outdated dependencies
	@echo "${GREEN}Outdated dependencies:${NC}"
	uv pip install pip-check
	pip-check

# Git hooks
pre-commit: format lint type-check ## Run pre-commit checks
	@echo "${GREEN}✓ Pre-commit checks passed!${NC}"

# Environment info
info: ## Show development environment info
	@echo "${CYAN}Development Environment Info:${NC}"
	@echo "Python: $(shell python --version)"
	@echo "UV: $(shell uv --version 2>/dev/null || echo 'Not installed')"
	@echo "Ruff: $(shell ruff --version 2>/dev/null || echo 'Not installed')"
	@echo "MyPy: $(shell mypy --version 2>/dev/null || echo 'Not installed')"
	@echo "Bandit: $(shell bandit --version 2>/dev/null || echo 'Not installed')"
	@echo "Pytest: $(shell pytest --version 2>/dev/null || echo 'Not installed')"

# Performance profiling
profile: ## Profile the application
	@echo "${GREEN}Profiling application...${NC}"
	python -m cProfile -o profile.stats -m app.main

# Generate project stats
stats: ## Show project statistics
	@echo "${CYAN}Project Statistics:${NC}"
	@echo "Python files: $(shell find app/ -name '*.py' | wc -l)"
	@echo "Lines of code: $(shell find app/ -name '*.py' -exec wc -l {} + | tail -1)"
	@echo "Test files: $(shell find tests/ -name '*.py' 2>/dev/null | wc -l || echo 0)"
	@echo "Dependencies: $(shell grep -c '^[a-zA-Z]' pyproject.toml || echo 0)"

# Documentation
docs-serve: ## Serve API documentation locally
	@echo "${GREEN}Serving API documentation...${NC}"
	python -c "import webbrowser; webbrowser.open('http://localhost:8000/docs')" &
	uvicorn app.main:app --reload --host 0.0.0.0 --port 8000