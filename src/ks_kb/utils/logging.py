"""Logging configuration for the application."""

import logging

from ks_kb.utils.settings import settings


def setup_logging() -> logging.Logger:
    """Configure application logging.

    Returns:
        Logger instance configured according to settings
    """
    logging.basicConfig(
        level=settings.log_level,
        format="%(asctime)s - %(name)s - %(levelname)s - %(message)s",
        datefmt="%Y-%m-%d %H:%M:%S",
    )
    return logging.getLogger(__name__)


# Create default logger instance
logger = setup_logging()
