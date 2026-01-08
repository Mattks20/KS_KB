"""Example API endpoints.

DELETE THIS FILE: This is example code to show the routing pattern.
Create your own API routes based on your requirements.
"""

from fastapi import APIRouter

from ks_kb.models.schemas import ExampleRequest, ExampleResponse

router = APIRouter(tags=["api"])


@router.post("/example", response_model=ExampleResponse)
async def example_endpoint(request: ExampleRequest):
    """Example API endpoint - DELETE THIS.

    This demonstrates the pattern for creating API endpoints:
    1. Define request/response models in schemas.py
    2. Create the endpoint function
    3. Call workflow functions to handle business logic
    4. Return typed response

    Args:
        request: Validated request data

    Returns:
        Response containing processed data
    """
    # TODO: Replace with actual workflow logic
    # result = await some_workflow.process(request)

    return ExampleResponse(
        message=f"Processed: {request.input_text}",
        status="success",
        data={"original": request.input_text, "length": len(request.input_text)},
    )
