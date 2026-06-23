#!/bin/bash

# Smart Water Pump Website - Push Changes Script
# This script pushes the gallery update changes to GitHub

set -e

echo "================================"
echo "Smart Water Pump Gallery Update"
echo "Pushing changes to GitHub..."
echo "================================"
echo ""

cd "$(dirname "$0")"

# Check if there are unpushed commits
UNPUSHED=$(git rev-list origin/main..main --count)

if [ "$UNPUSHED" -eq 0 ]; then
    echo "✓ All changes are already pushed!"
    exit 0
fi

echo "Found $UNPUSHED unpushed commit(s)"
echo ""
echo "Commit details:"
git log origin/main..main --oneline
echo ""

# Method 1: Try with GitHub CLI (gh)
if command -v gh &> /dev/null; then
    echo "Attempting to push using GitHub CLI (gh)..."
    gh auth login --web 2>/dev/null || true
    git push origin main && echo "✓ Successfully pushed changes!" && exit 0
fi

# Method 2: Try with SSH
echo "Attempting to push using SSH..."
if git push git@github.com:Derrick-1015/smart-water-pump-website.git main 2>/dev/null; then
    echo "✓ Successfully pushed changes via SSH!"
    exit 0
fi

# Method 3: HTTPS with Personal Access Token
echo ""
echo "To push via HTTPS, you have two options:"
echo ""
echo "Option A: Using GitHub Personal Access Token"
echo "1. Create a token at: https://github.com/settings/tokens"
echo "2. Run: git push https://YOUR_USERNAME:YOUR_TOKEN@github.com/Derrick-1015/smart-water-pump-website.git main"
echo ""
echo "Option B: Using GitHub CLI"
echo "1. Run: gh auth login"
echo "2. Then run: git push origin main"
echo ""
echo "Option C: Using SSH Key"
echo "1. Set up SSH key: https://github.com/settings/keys"
echo "2. Run: git remote set-url origin git@github.com:Derrick-1015/smart-water-pump-website.git"
echo "3. Run: git push origin main"
echo ""

exit 1
