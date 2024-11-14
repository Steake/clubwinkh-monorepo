# ClubWinKH Monorepo Project Overview

## Project Structure
Monorepo architecture using Git submodules:
- Main Repository: ClubWinKH-monorepo
- Subrepos:
  - Web Application (clubwinkh/)
  - Admin Dashboard (clubwinkh-admin/)
  - Telegram Mini App (tg-miniapp/)
  - Backend Server (server/)

## Git Submodules Setup
```bash
# Clone the main repository
git clone https://github.com/steake/ClubWinKH-monorepo.git

# Initialize and update submodules
git submodule init
git submodule update
```

## Technologies
- Frontend: Svelte, SvelteKit
- Styling: Tailwind CSS
- Backend: Node.js, Express
- Authentication: Custom auth system with Telegram integration
- Submodule Management: Git Submodules
- Testing: Vitest, Custom test suites

## Key Features
- User Management
- Transaction Tracking
- Admin Dashboard
- Leaderboard System
- Telegram Mini App Integration

## Main Components
1. **REST API (Submodule)**: 
   - Centralized backend services
   - RESTful API endpoints
   - Authentication middleware
   - Database models

2. **Web Application**: 
   - User-facing interface
   - Responsive design
   - Multiple routes (home, about, leaderboard, socials)

3. **Admin Dashboard**:
   - Comprehensive admin controls
   - User and transaction management
   - Statistical insights

4. **Telegram Mini App**:
   - Integrated game experience
   - Sound effects
   - Lightweight and focused design

## Development Workflow
- Centralized API management
- Modular architecture
- Easy submodule updates
- Consistent dependency management

## Deployment Considerations
- Simplified repository structure
- Easier dependency tracking
- Streamlined CI/CD processes

## Unique Selling Points
- Flexible monorepo architecture
- Seamless Telegram integration
- Admin-friendly management tools
- Performance-optimized frontend
