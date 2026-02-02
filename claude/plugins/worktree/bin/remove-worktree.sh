#!/bin/bash
# Removes the current worktree and its branch
# Must be run from within a worktree directory (named like repo--branch)

set -e

cwd="$(pwd)"
worktree="$(basename "$cwd")"

# Split on first '--'
root="${worktree%%--*}"
branch="${worktree#*--}"

# Protect against running from non-worktree directory
if [[ "$root" == "$worktree" ]]; then
  echo "Error: Not in a worktree directory (expected format: repo--branch)"
  exit 1
fi

cd "../$root"
git worktree remove "$worktree" --force
git branch -D "$branch"

echo "Removed worktree '$worktree' and branch '$branch'"
