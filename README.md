# ClubWinKH Monorepo

This is the top-level monorepo for the ClubWinKH project, containing multiple interconnected applications and services.

## Project Components

- `clubwinkh/`: Main web application (Svelte-based)
  - User-facing web interface for the ClubWinKH platform
  - Built with Svelte and Vite
  - Provides core user interactions and gameplay

- `clubwinkh-admin/`: Admin dashboard (Svelte-based)
  - Administrative interface for platform management
  - Includes user management, transaction tracking, and system controls
  - Built with Svelte and Vite

- `clubwinkh-tg-miniapp/`: Telegram Mini App
  - Lightweight application integrated with Telegram
  - Provides a streamlined gaming experience within the Telegram ecosystem

- `clubwinkh-api/`: Backend API server (Node.js)
  - RESTful API serving the core backend functionality
  - Handles authentication, game logic, transactions, and data management
  - Implements middleware for security and request handling

## Submodule Initialization

To clone the repository with all submodules:

```bash
git clone --recursive git@github.com:steake/clubwinkh-monorepo.git
```

To update submodules:

```bash
git submodule update --init --recursive
```

## Development

Each subproject has its own README with specific setup and development instructions. Please refer to the individual project directories for detailed information.

## Contributing

Please read the individual project READMEs for contribution guidelines and project-specific details.
