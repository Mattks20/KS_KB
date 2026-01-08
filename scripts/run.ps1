# Run the application
param(
    [string]$HostAddr = "0.0.0.0",
    [int]$Port = 8000,
    [switch]$Reload
)

Write-Host "Starting application on ${HostAddr}:${Port}..." -ForegroundColor Cyan

# Ensure we're in the repo root
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptPath
Set-Location $repoRoot

# Build uvicorn args
$uvicornArgs = "ks_kb.main:app", "--host", $HostAddr, "--port", $Port
if ($Reload) {
    $uvicornArgs += "--reload"
}

# Run uvicorn
python -m uvicorn @uvicornArgs
