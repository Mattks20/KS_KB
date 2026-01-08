"""Tests for health check endpoints."""

from fastapi.testclient import TestClient

from ks_kb.main import app

client = TestClient(app)


def test_health_check():
    """Test the basic health check endpoint."""
    response = client.get("/health")
    assert response.status_code == 200
    data = response.json()
    assert data["status"] == "healthy"
    assert "service" in data


def test_readiness_check():
    """Test the readiness check endpoint."""
    response = client.get("/health/ready")
    assert response.status_code == 200
    data = response.json()
    assert data["status"] == "ready"
