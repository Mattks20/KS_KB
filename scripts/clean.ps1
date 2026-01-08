# Clean build artifacts and caches
Write-Host "Cleaning build artifacts..." -ForegroundColor Cyan

# Ensure we're in the repo root
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptPath
Set-Location $repoRoot

# Clean up directories and files
$itemsToRemove = @(
    "__pycache__",
    ".pytest_cache",
    ".ruff_cache",
    ".coverage",
    "htmlcov",
    "dist",
    "build",
    "*.egg-info"
)

foreach ($item in $itemsToRemove) {
    Get-ChildItem -Path . -Recurse -Filter $item -Force -ErrorAction SilentlyContinue |
        ForEach-Object {
            Remove-Item -Path $_.FullName -Recurse -Force -ErrorAction SilentlyContinue
            Write-Host "Removed: $($_.FullName)" -ForegroundColor Gray
        }
}

Write-Host "`nCleanup complete" -ForegroundColor Green
