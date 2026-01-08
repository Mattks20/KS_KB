# Run pre-commit checks
Write-Host "Running pre-commit checks..." -ForegroundColor Cyan

# Ensure we're in the repo root
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptPath
Set-Location $repoRoot

# Run linting
Write-Host "`n=== Linting ===" -ForegroundColor Yellow
& "$scriptPath\lint.ps1"
if ($LASTEXITCODE -ne 0) {
    Write-Host "`nCheck failed at linting stage" -ForegroundColor Red
    exit 1
}

# Run tests
Write-Host "`n=== Testing ===" -ForegroundColor Yellow
& "$scriptPath\test.ps1"
if ($LASTEXITCODE -ne 0) {
    Write-Host "`nCheck failed at testing stage" -ForegroundColor Red
    exit 1
}

Write-Host "`n=== All checks passed ===" -ForegroundColor Green
exit 0
