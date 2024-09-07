#!/bin/bash

# Function to create a directory if it doesn't exist
create_dir() {
  if [ ! -d "$1" ]; then
    mkdir -p "$1"
  fi
}

# Function to create a file if it doesn't exist
create_file() {
  if [ ! -f "$1" ]; then
    touch "$1"
  fi
}

# Create directories
create_dir "my-portfolio/.github/workflows"
create_dir "my-portfolio/.vscode"
create_dir "my-portfolio/public/icons"
create_dir "my-portfolio/public/images"
create_dir "my-portfolio/src/components"
create_dir "my-portfolio/src/hooks"
create_dir "my-portfolio/src/pages"
create_dir "my-portfolio/src/styles"
create_dir "my-portfolio/src/utils"
create_dir "my-portfolio/src/context"
create_dir "my-portfolio/src/types"

# Create files
create_file "my-portfolio/.github/workflows/deploy.yml"
create_file "my-portfolio/.vscode/settings.json"
create_file "my-portfolio/.vscode/extensions.json"
create_file "my-portfolio/public/icons/icon-192x192.png"
create_file "my-portfolio/public/icons/icon-512x512.png"
create_file "my-portfolio/public/images/logo.png"
create_file "my-portfolio/public/manifest.json"
create_file "my-portfolio/src/components/Header.tsx"
create_file "my-portfolio/src/components/Footer.tsx"
create_file "my-portfolio/src/components/Button.tsx"
create_file "my-portfolio/src/hooks/useTheme.ts"
create_file "my-portfolio/src/pages/_app.tsx"
create_file "my-portfolio/src/pages/_document.tsx"
create_file "my-portfolio/src/pages/index.tsx"
create_file "my-portfolio/src/pages/about.tsx"
create_file "my-portfolio/src/styles/globals.css"
create_file "my-portfolio/src/styles/tailwind.css"
create_file "my-portfolio/src/styles/themes.css"
create_file "my-portfolio/src/utils/api.ts"
create_file "my-portfolio/src/context/ThemeContext.tsx"
create_file "my-portfolio/src/types/index.d.ts"
create_file "my-portfolio/.eslintrc.json"
create_file "my-portfolio/.prettierrc"
create_file "my-portfolio/next.config.js"
create_file "my-portfolio/postcss.config.js"
create_file "my-portfolio/tailwind.config.js"
create_file "my-portfolio/tsconfig.json"
create_file "my-portfolio/package.json"
create_file "my-portfolio/README.md"
create_file "my-portfolio/Dockerfile"
