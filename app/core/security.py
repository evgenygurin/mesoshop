from datetime import datetime, timedelta
from typing import Any, cast

from jose import JWTError, jwt
from passlib.context import CryptContext

from app.core.config import settings

# Password hashing context
pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")


def create_access_token(
    subject: str | Any,
    expires_delta: timedelta | None = None
) -> str:
    """Create access token"""
    if expires_delta:
        expire = datetime.utcnow() + expires_delta
    else:
        expire = datetime.utcnow() + timedelta(
            minutes=settings.ACCESS_TOKEN_EXPIRE_MINUTES
        )

    to_encode = {"exp": expire, "sub": str(subject), "type": "access"}
    encoded_jwt = jwt.encode(
        to_encode,
        settings.SECRET_KEY,
        algorithm=settings.ALGORITHM
    )
    return cast("str", encoded_jwt)


def create_refresh_token(subject: str | Any) -> str:
    """Create refresh token"""
    expire = datetime.utcnow() + timedelta(days=settings.REFRESH_TOKEN_EXPIRE_DAYS)
    to_encode = {"exp": expire, "sub": str(subject), "type": "refresh"}
    encoded_jwt = jwt.encode(
        to_encode,
        settings.SECRET_KEY,
        algorithm=settings.ALGORITHM
    )
    return cast("str", encoded_jwt)


def verify_password(plain_password: str, hashed_password: str) -> bool:
    """Verify password"""
    return cast("bool", pwd_context.verify(plain_password, hashed_password))


def get_password_hash(password: str) -> str:
    """Hash password"""
    return cast("str", pwd_context.hash(password))


def decode_token(token: str, token_type: str = "access") -> str | None:  # nosec B107
    """Decode and verify token"""
    try:
        payload = jwt.decode(
            token,
            settings.SECRET_KEY,
            algorithms=[settings.ALGORITHM]
        )

        # Check token type
        if payload.get("type") != token_type:
            return None

        return cast("str", payload.get("sub"))
    except JWTError:
        return None


def create_password_reset_token(email: str) -> str:
    """Create password reset token"""
    expire = datetime.utcnow() + timedelta(hours=1)
    to_encode = {"exp": expire, "sub": email, "type": "password_reset"}
    return cast("str", jwt.encode(to_encode, settings.SECRET_KEY, algorithm=settings.ALGORITHM))


def verify_password_reset_token(token: str) -> str | None:
    """Verify password reset token"""
    try:
        payload = jwt.decode(token, settings.SECRET_KEY, algorithms=[settings.ALGORITHM])
        if payload.get("type") != "password_reset":
            return None
        return cast("str", payload.get("sub"))
    except JWTError:
        return None
