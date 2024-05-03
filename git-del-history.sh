#!/bin/bash

# Step 1: Backup your repository
# Replace 'path/to/your/repository' with the actual path to your repository
#cp -r github/nrd-lists github/backups

# Step 2: Reset Git history
# Create a new orphan branch to start fresh without any commit history
git checkout --orphan new_branch

# Add all changes (including untracked and deleted files) to the staging area
git add -A

# Commit the changes to the new orphan branch with an initial commit message
git commit -m "Initial commit"

# Delete the old main branch locally
git branch -D main

# Rename the current branch (new_branch) to main
git branch -m main

# Forcefully push the changes to the remote repository, replacing the old main branch
# git push -f origin main
