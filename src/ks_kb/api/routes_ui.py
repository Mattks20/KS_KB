"""UI rendering endpoints for serving HTML pages."""

from fastapi import APIRouter, Request
from fastapi.responses import HTMLResponse
from fastapi.templating import Jinja2Templates

router = APIRouter(tags=["ui"])
templates = Jinja2Templates(directory="ks_kb/templates")


@router.get("/", response_class=HTMLResponse)
async def index(request: Request):
    """Render the main page.

    Args:
        request: FastAPI request object (required for Jinja2)

    Returns:
        Rendered HTML page
    """
    return templates.TemplateResponse(
        "index.html",
        {
            "request": request,
            "title": "PROJECT_NAME",
            "message": "Welcome to your FastAPI application!",
        },
    )
