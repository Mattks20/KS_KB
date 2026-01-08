# PROJECT_NAME

> REPLACE: Update PROJECT_NAME and PROJECT_DESCRIPTION throughout this file

PROJECT_DESCRIPTION

## After Copying This Template

- [ ] Find/replace `PROJECT_NAME` with your project name
- [ ] Update `PROJECT_DESCRIPTION` in README.md and pyproject.toml
- [ ] Copy `.env.example` to `.env` and configure your values
- [ ] Run `.\scripts\install-dev.ps1`
- [ ] Run `.\scripts\test.ps1` to verify setup
- [ ] Delete example code in `ks_kb/api/routes_api.py`
- [ ] Start building!

## Quick Start

### 1. Install Dependencies

```powershell
.\scripts\install-dev.ps1
```

### 2. Configure Environment

```powershell
# Copy the example environment file
cp .env.example .env

# Edit .env with your values
notepad .env
```

### 3. Run the Application

```powershell
# Run in development mode with auto-reload
.\scripts\run.ps1 -Reload

# Or run on a custom port
.\scripts\run.ps1 -Port 3000 -Reload
```

### 4. Visit Your Application

Open your browser to [http://localhost:8000](http://localhost:8000)

## Development

### Running Tests

```powershell
# Run all tests
.\scripts\test.ps1

# Run with verbose output
.\scripts\test.ps1 -Verbose
```

### Code Quality

```powershell
# Check code quality
.\scripts\lint.ps1

# Auto-fix issues
.\scripts\lint.ps1 -Fix

# Format code
.\scripts\format.ps1

# Run all pre-commit checks
.\scripts\check.ps1
```

### Available Scripts

Run `.\scripts\help.ps1` to see all available commands and usage examples.

## Project Structure

```
.
├── docs/                   # Documentation and architectural guides
│   ├── 00_problem_brief.md     # Project context and requirements
│   ├── 01_requirements.md      # Detailed specifications
│   ├── 02_workflow.md          # Operational workflows
│   ├── 03_data_model.md        # Data contracts
│   ├── 04_integrations.md      # External service integrations
│   └── 99_ai_instructions.md   # AI coding guidelines
├── scripts/                # Development and operational scripts
├── ks_kb/                    # Source code
│   ├── api/                    # HTTP routes and endpoints
│   ├── domain/                 # Pure business logic
│   ├── integrations/           # External service clients
│   ├── models/                 # Data schemas (Pydantic)
│   ├── static/                 # CSS and static assets
│   ├── templates/              # HTML templates
│   ├── utils/                  # Cross-cutting concerns
│   ├── webapp/                 # Application entry point
│   └── workflows/              # Orchestration logic
└── tests/                  # Test suite
```

## Architecture

This project follows a layered architecture:

- **API Layer** (ks_kb/api/`): HTTP routes and request/response handling
- **Workflow Layer** (`ks_kb/workflows/`): Orchestration and business processes
- **Domain Layer** (`ks_kb/domain/`): Pure business logic (no I/O)
- **Model Layer** (`ks_kb/models/`): Data contracts and validation
- **Integration Layer** (`ks_kb/integrations/`): External service communication

See [`docs/99_ai_instructions.md`](docs/99_ai_instructions.md) for detailed architectural guidelines.

## Contributing

Before committing:

1. Run `.\scripts\check.ps1` to ensure all tests pass and code meets quality standards
2. Update documentation if you've changed functionality
3. Add tests for new features

## License

REPLACE: Add your license information here
