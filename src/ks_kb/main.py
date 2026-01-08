"""Main FastAPI application entry point."""

from fastapi import FastAPI
from fastapi.staticfiles import StaticFiles

from ks_kb.api import routes_api, routes_health, routes_ui

# Create FastAPI application
app = FastAPI(
    title="KS_KB",
    description="Local-first personal knowledge base with strict citations.",
    version="0.1.0",
    docs_url="/api/docs",  # Swagger UI
    redoc_url="/api/redoc",  # ReDoc
)

# Mount static files (CSS, JS, images)
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent  # src/ks_kb
app.mount("/static", StaticFiles(directory=str(BASE_DIR / "static")), name="static")


# Include routers
app.include_router(routes_health.router, tags=["health"])
app.include_router(routes_api.router, prefix="/api", tags=["api"])
app.include_router(routes_ui.router, tags=["ui"])


@app.on_event("startup")
async def startup_event():
    """Run on application startup."""
    # Add startup logic here (database connections, etc.)
    pass


@app.on_event("shutdown")
async def shutdown_event():
    """Run on application shutdown."""
    # Add cleanup logic here (close connections, etc.)
    pass
