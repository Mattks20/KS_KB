# Run linting
param(
    [switch]$Fix
)

Write-Host "Linting code..." -ForegroundColor Cyan

# Ensure we're in the repo root
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptPath
Set-Location $repoRoot

# Build ruff args
$ruffArgs = "check", "", "tests"
if ($Fix) {
    $ruffArgs += "--fix"
}

# Run ruff
python -m ruff @ruffArgs

if ($LASTEXITCODE -ne 0) {
    Write-Host "`nLinting found issues" -ForegroundColor Red
    exit 1
}

Write-Host "`nLinting passed" -ForegroundColor Green
exit 0
