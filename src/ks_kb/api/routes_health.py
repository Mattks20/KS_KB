"""Health check endpoints for monitoring and debugging."""

from fastapi import APIRouter

router = APIRouter(tags=["health"])


@router.get("/health")
async def health_check():
    """Basic health check endpoint.

    Returns:
        Simple status indicating the service is running
    """
    return {"status": "healthy", "service": "KS_KB"}


@router.get("/health/ready")
async def readiness_check():
    """Readiness check for orchestration platforms.

    Use this endpoint to verify the service is ready to accept traffic.
    Add checks for database connections, external services, etc.

    Returns:
        Status indicating readiness
    """
    # TODO: Add actual readiness checks (database, external APIs, etc.)
    return {"status": "ready"}
