# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## AttendanceApi Service

This is the attendance tracking service for the church management system, handling campus/service hierarchies and attendance record management.

## Development Commands

```bash
# Setup
npm install
npm run initdb              # Initialize MySQL database with attendance schema
npm run dev                 # Start development server with hot reload

# Build and deployment
npm run build               # Full build pipeline (clean + lint + tsc)
npm run build-layer         # Build Lambda layer with dependencies
npm run rebuild-layer       # Clean and rebuild Lambda layer
npm run build-all           # Build both application code and dependencies layer
npm run lint                # Run ESLint and Prettier with auto-fix
npm run deploy-staging      # Deploy to AWS Lambda staging (includes layer)
npm run deploy-prod         # Deploy to AWS Lambda production (includes layer)
npm run serverless-local    # Test Lambda functions locally
```

## Architecture

**Technology Stack:**
- Node.js 20.x + TypeScript + Express.js
- MySQL database with custom repository pattern
- AWS Lambda deployment via Serverless Framework v3 with dependency layers
- @codegenie/serverless-express for HTTP handling with POST body parsing
- Inversify dependency injection with decorators

**Key Patterns:**
- Extend `AttendanceBaseController` for all controllers
- Use `Repositories.getCurrent()` singleton for data access
- Check permissions via `au.checkAccess(Permissions.attendance.xxx)`
- All operations scoped by `churchId` for multi-tenancy

## Database Schema

Core entities in attendance hierarchy:
- **Campus** - Physical church locations
- **Service** - Service types (Sunday Morning, Wednesday Night, etc.)
- **ServiceTime** - Specific time slots for services
- **GroupServiceTime** - Links groups to service times
- **Session** - Individual service instances with attendance data
- **Visit/VisitSession** - Person attendance tracking

## Configuration

Environment-specific configs:
- `config/dev.json` - Development settings
- `config/staging.json` - Staging environment  
- `config/prod.json` - Production environment

Access via `Environment.ts` helper, includes `membershipApi` endpoint configuration.

## Database Setup

1. Create MySQL database named `attendance`
2. Copy `dotenv.sample.txt` to `.env` with database credentials
3. Run `npm run initdb` to execute schema scripts from `tools/dbScripts/`

## Lambda Layer Architecture

The service uses dynamic AWS Lambda Layers for optimized deployments:
- **Dependencies Layer**: Built from `tools/layer-package.json` with production dependencies only
- **Function Package**: Contains only application code (excludes node_modules)
- **Benefits**: Faster deployments when only code changes, better cold start performance
- **Layer Management**: Automatically managed per environment (dev/staging/prod)

**Build Process:**
1. `npm run build-layer` creates `layer/nodejs/` directory structure
2. Copies `tools/layer-package.json` with production dependencies only
3. Runs `npm install --production` to build the layer
4. Creates `layer.zip` for deployment
5. Serverless Framework deploys layer with function reference

**POST Request Compatibility:**
- Buffer body parsing middleware handles serverless-express compatibility
- Fixes "stream is not readable" errors on POST requests
- Enhanced CORS configuration for API Gateway compatibility