# Install runtime dependencies
Write-Host "Installing runtime dependencies..." -ForegroundColor Cyan

# Ensure we're in the repo root
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptPath
Set-Location $repoRoot

# Install in editable mode
python -m pip install -e .

if ($LASTEXITCODE -ne 0) {
    Write-Host "Installation failed" -ForegroundColor Red
    exit 1
}

Write-Host "Installation complete" -ForegroundColor Green
Write-Host "Runtime dependencies installed successfully" -ForegroundColor Green
