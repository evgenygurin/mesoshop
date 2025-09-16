"""Test configuration for pytest."""

import os
from collections.abc import Generator
from unittest.mock import patch

import pytest


@pytest.fixture(scope="session", autouse=True)
def setup_test_env() -> Generator[None, None, None]:
    """Set up test environment variables."""
    # Set test environment variables
    test_env = {
        "DATABASE_URL": "sqlite:///test.db",
        "SECRET_KEY": "test-secret-key-for-testing",
        "ALGORITHM": "HS256",
        "ACCESS_TOKEN_EXPIRE_MINUTES": "30",
        "REFRESH_TOKEN_EXPIRE_DAYS": "7",
        "STRIPE_SECRET_KEY": "sk_test_dummy",
        "STRIPE_PUBLISHABLE_KEY": "pk_test_dummy",
        "GOOGLE_CLOUD_PROJECT": "test-project",
        "GEMINI_API_KEY": "test-key",
        "ENVIRONMENT": "test",
        "DEBUG": "True",
    }

    with patch.dict(os.environ, test_env):
        yield


@pytest.fixture
def client() -> Generator["TestClient", None, None]:
    """Create test client."""
    # Import here to ensure env vars are set before import
    from fastapi.testclient import TestClient
    from app.main import app
    
    with TestClient(app) as client:
        yield client
