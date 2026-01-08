"""Pydantic models for data validation and serialization.

All structured data passing between layers should be defined here.
Do not pass raw dictionaries - use these typed models instead.
"""

from pydantic import BaseModel, Field


class ExampleRequest(BaseModel):
    """Example API request schema.

    DELETE THIS: This is example code to show the pattern.
    Replace with your actual request models.
    """

    input_text: str = Field(..., description="Input text to process", min_length=1)
    optional_param: str | None = Field(None, description="Optional parameter")


class ExampleResponse(BaseModel):
    """Example API response schema.

    DELETE THIS: This is example code to show the pattern.
    Replace with your actual response models.
    """

    message: str = Field(..., description="Response message")
    status: str = Field(..., description="Operation status")
    data: dict | None = Field(None, description="Optional data payload")
