#!/usr/bin/bash
#  Pull all branches from remote repo

# Fetch all remote branches
git fetch --all

# Checkout each branch (will create local tracking branch)
for branch in $(git branch -r | grep -v '\->'); do
  git branch --track "${branch#origin/}" "$branch";
done
