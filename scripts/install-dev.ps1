# Install development dependencies
Write-Host "Installing dev dependencies..." -ForegroundColor Cyan

# Ensure we're in the repo root
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptPath
Set-Location $repoRoot

# Install with dev extras
python -m pip install -e ".[dev]"

if ($LASTEXITCODE -ne 0) {
    Write-Host "Installation failed" -ForegroundColor Red
    exit 1
}

# Verify tools are installed
Write-Host "`nVerifying dev tools..." -ForegroundColor Cyan
python -m pytest --version
python -m ruff --version

if ($LASTEXITCODE -ne 0) {
    Write-Host "Dev tools verification failed" -ForegroundColor Red
    exit 1
}

Write-Host "`nDev environment ready" -ForegroundColor Green
Write-Host "You can now run tests, lint, and format code" -ForegroundColor Green
