# Format code
Write-Host "Formatting code..." -ForegroundColor Cyan

# Ensure we're in the repo root
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptPath
Set-Location $repoRoot

# Run ruff format
python -m ruff format ks_kb tests

if ($LASTEXITCODE -ne 0) {
    Write-Host "`nFormatting failed" -ForegroundColor Red
    exit 1
}

Write-Host "`nCode formatted" -ForegroundColor Green
exit 0
