#!/bin/bash

# 5 Words - GitHub Pages Deployment Script
# This script helps you deploy the website to GitHub Pages

set -e

echo "🚀 5 Words - GitHub Pages Deployment"
echo "===================================="
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
    echo "✅ Git initialized"
else
    echo "✅ Git repository already initialized"
fi

# Add all files
echo ""
echo "📝 Adding files to Git..."
git add .

# Commit changes
echo ""
read -p "Enter commit message (default: 'Update website'): " commit_message
commit_message=${commit_message:-"Update website"}

git commit -m "$commit_message" || echo "No changes to commit"

# Check if remote exists
if ! git remote | grep -q "origin"; then
    echo ""
    echo "🔗 No remote repository found."
    read -p "Enter your GitHub repository URL (e.g., https://github.com/username/5words-public.git): " repo_url
    git remote add origin "$repo_url"
    echo "✅ Remote added"
fi

# Push to GitHub
echo ""
echo "📤 Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✅ Deployment complete!"
echo ""
echo "📋 Next steps:"
echo "1. Go to your GitHub repository"
echo "2. Click on 'Settings'"
echo "3. Go to 'Pages' in the left sidebar"
echo "4. Under 'Source', select 'main' branch and '/ (root)'"
echo "5. Click 'Save'"
echo ""
echo "Your site will be available at:"
echo "https://YOUR-USERNAME.github.io/YOUR-REPO-NAME/"
echo ""

