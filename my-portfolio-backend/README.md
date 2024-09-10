# My Portfolio Backend
This is the backend for my portfolio project.
# My Portfolio Backend

This is the backend for my portfolio project. It includes RESTful APIs to handle user authentication, projects, contact messages, blog posts, and resume details.

## Setup

1. Clone the repository.
2. Run `npm install` to install the dependencies.
3. Create a `.env` file and add your MongoDB URI and JWT secret.
4. Run `npm run dev` to start the server in development mode.

## Endpoints

- **Authentication**: `/api/auth` (POST /register, POST /login, GET /profile)
- **Projects**: `/api/projects` (GET, POST)
- **Contact**: `/api/contact` (POST, GET)
- **Blog**: `/api/blog` (GET, POST)
- **Resume**: `/api/resume` (GET, PUT)
