# Display help for available commands
Write-Host @"

╔═══════════════════════════════════════════════════════════════╗
║                    Available Commands                          ║
╚═══════════════════════════════════════════════════════════════╝

Setup:
  .\scripts\install.ps1         Install runtime dependencies
  .\scripts\install-dev.ps1     Install dev dependencies (tests, linting)

Development:
  .\scripts\run.ps1              Start the application
  .\scripts\run.ps1 -Reload      Start with auto-reload (dev mode)
  .\scripts\run.ps1 -Port 3000   Start on custom port

Code Quality:
  .\scripts\test.ps1             Run tests
  .\scripts\test.ps1 -Verbose    Run tests with verbose output
  .\scripts\lint.ps1             Check code quality
  .\scripts\lint.ps1 -Fix        Fix auto-fixable issues
  .\scripts\format.ps1           Format code
  .\scripts\check.ps1            Run all pre-commit checks

Maintenance:
  .\scripts\clean.ps1            Remove build artifacts and caches

╔═══════════════════════════════════════════════════════════════╗
║                      Quick Start                               ║
╚═══════════════════════════════════════════════════════════════╝

First time setup:
  1. .\scripts\install-dev.ps1
  2. Copy .env.example to .env and configure
  3. .\scripts\run.ps1 -Reload
  4. Visit http://localhost:8000

Before committing:
  .\scripts\check.ps1

"@ -ForegroundColor Cyan
