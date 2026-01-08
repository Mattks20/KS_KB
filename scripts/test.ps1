# Run tests
param(
    [switch]$Verbose
)

Write-Host "Running tests..." -ForegroundColor Cyan

# Ensure we're in the repo root
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptPath
Set-Location $repoRoot

# Build pytest args
$pytestArgs = if ($Verbose) { "-v" } else { "-q" }

# Run pytest
python -m pytest $pytestArgs

if ($LASTEXITCODE -ne 0) {
    Write-Host "`nTests failed" -ForegroundColor Red
    exit 1
}

Write-Host "`nAll tests passed" -ForegroundColor Green
exit 0
