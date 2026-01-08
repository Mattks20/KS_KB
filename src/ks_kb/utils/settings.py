"""Application settings loaded from environment variables."""

from pydantic_settings import BaseSettings


class Settings(BaseSettings):
    """Application configuration.

    All settings can be overridden via environment variables.
    Create a .env file in the project root to configure locally.
    """

    # Application
    app_name: str = "my_project"
    app_env: str = "development"
    log_level: str = "INFO"

    # Server
    host: str = "0.0.0.0"
    port: int = 8000

    # Add your own settings here
    # api_key: str = ""
    # database_url: str = ""

    class Config:
        """Pydantic config."""

        env_file = ".env"
        env_file_encoding = "utf-8"


settings = Settings()
