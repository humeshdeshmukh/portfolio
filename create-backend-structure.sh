#!/bin/bash

# Base directory for the project
BASE_DIR="my-portfolio-backend"

# Function to create directories and files
create_structure() {
  # Check if the base directory exists, if not, create it
  if [ ! -d "$BASE_DIR" ]; then
    mkdir "$BASE_DIR"
  fi

  # Navigate into the base directory
  cd "$BASE_DIR"

  # Create subdirectories
  for dir in config controllers middleware models routes utils; do
    if [ ! -d "$dir" ]; then
      mkdir "$dir"
    fi
  done

  # Create files in the config directory
  if [ ! -f "config/db.js" ]; then
    touch "config/db.js"
    echo "// Database configuration" > "config/db.js"
  fi

  # Create files in the controllers directory
  for file in authController.js contactController.js projectController.js blogController.js resumeController.js; do
    if [ ! -f "controllers/$file" ]; then
      touch "controllers/$file"
      echo "// ${file%.js} logic" > "controllers/$file"
    fi
  done

  # Create files in the middleware directory
  for file in authMiddleware.js errorMiddleware.js; do
    if [ ! -f "middleware/$file" ]; then
      touch "middleware/$file"
      echo "// ${file%.js} middleware" > "middleware/$file"
    fi
  done

  # Create files in the models directory
  for file in User.js Project.js Contact.js Blog.js Resume.js; do
    if [ ! -f "models/$file" ]; then
      touch "models/$file"
      echo "// ${file%.js} model" > "models/$file"
    fi
  done

  # Create files in the routes directory
  for file in authRoutes.js projectRoutes.js contactRoutes.js blogRoutes.js resumeRoutes.js; do
    if [ ! -f "routes/$file" ]; then
      touch "routes/$file"
      echo "// ${file%.js} routes" > "routes/$file"
    fi
  done

  # Create file in the utils directory
  if [ ! -f "utils/errorResponse.js" ]; then
    touch "utils/errorResponse.js"
    echo "// Error response utility" > "utils/errorResponse.js"
  fi

  # Create main files
  for file in .env .gitignore package.json server.js README.md; do
    if [ ! -f "$file" ]; then
      touch "$file"
      case "$file" in
        .env)
          echo "# Environment variables" > "$file"
          ;;
        .gitignore)
          echo "node_modules/" > "$file"
          ;;
        package.json)
          echo '{
  "name": "my-portfolio-backend",
  "version": "1.0.0",
  "main": "server.js",
  "scripts": {
    "start": "node server.js",
    "dev": "nodemon server.js"
  },
  "dependencies": {
    "express": "^4.17.1",
    "mongoose": "^5.10.9",
    "dotenv": "^8.2.0",
    "cors": "^2.8.5"
  },
  "devDependencies": {
    "nodemon": "^2.0.7"
  }
}' > "$file"
          ;;
        server.js)
          echo "// Entry point for the server" > "$file"
          ;;
        README.md)
          echo "# My Portfolio Backend" > "$file"
          echo "This is the backend for my portfolio project." >> "$file"
          ;;
      esac
    fi
  done

  echo "Backend structure created or verified successfully!"
}

# Call the function to create the structure
create_structure
