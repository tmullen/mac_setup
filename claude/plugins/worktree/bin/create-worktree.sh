#!/bin/bash
# Creates a git worktree with the naming convention: repo--branch

set -e

if [[ -z "$1" ]]; then
  echo "Usage: create-worktree.sh <branch-name>"
  exit 1
fi

branch="$1"
base="$(basename "$PWD")"
path="../${base}--${branch}"

git worktree add -b "$branch" "$path"
echo "Created worktree at: $path"
