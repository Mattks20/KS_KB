"""Custom exception classes for the application."""


class DomainError(Exception):
    """Base exception for domain logic errors.

    Use this for errors that occur in the domain/business logic layer.
    Domain errors should be pure Python errors with no I/O dependencies.
    """

    pass


class ValidationError(DomainError):
    """Raised when domain validation fails.

    Example:
        if age < 0:
            raise ValidationError("Age must be non-negative")
    """

    pass


class IntegrationError(Exception):
    """Base exception for external service errors.

    Use this for errors related to external APIs, databases, or other integrations.
    """

    pass


class ServiceUnavailableError(IntegrationError):
    """Raised when an external service is temporarily unavailable."""

    pass
