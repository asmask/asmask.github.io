#!/bin/bash
set -e
# Deploy Vue.js project to GitHub Pages

# Step 1: Ensure we start clean
echo "Cleaning up..."
rm -rf dist

# Step 2: Install dependencies if needed
echo "Installing dependencies..."
npm install

# Step 3: Build the project
echo "Building the project..."
npm run build

# Step 4: Verify build output exists
if [ ! -d "dist" ]; then
    echo "Error: Build failed - dist directory not created"
    exit 1
fi

if [ ! -f "dist/index.html" ]; then
    echo "Error: Build failed - index.html not found in dist directory"
    exit 1
fi

# Step 5: Copy all build files to root
echo "Moving build files to root..."
cp -r dist/* .
rm -rf dist

# Step 6: Create necessary files for GitHub Pages
echo "Creating GitHub Pages files..."
touch .nojekyll
cp index.html 404.html  # Add 404 page for SPA routing

# Step 7: Add and commit changes
echo "Committing changes..."
git add .
git commit -m "Deploy to GitHub Pages"

# Step 8: Push to GitHub
echo "Pushing to GitHub..."
git push origin main

echo "Deployment complete! Your site should be available at https://asmask.github.io/ in a few minutes."
echo "Please check the following:"
echo "1. Visit https://github.com/asmask/asmask.github.io/settings/pages"
echo "2. Ensure 'Source' is set to 'Deploy from a branch'"
echo "3. Select 'main' as the branch and '/ (root)' as the folder"
echo "4. Click 'Save' if any changes were made"