# Makes git auto completion faster favouring for local completions
__git_files () {
    _wanted files expl 'local files' _files
}

# Git worktree management
# Creates a new worktree with a new branch in a sibling directory
gwta() {
  if [[ -z "$1" ]]; then
    echo "Usage: gwta [branch name]"
    return 1
  fi

  local branch="$1"
  local base="$(basename "$PWD")"
  local path="../${base}--${branch}"

  $HOMEBREW_PREFIX/bin/git worktree add -b "$branch" "$path"
  cd "$path"
}

# Removes the current worktree and its associated branch
gwtd() {
  echo -n "Remove worktree and branch? [y/N] "
  if read -q; then
    echo
    local cwd worktree root branch
    cwd="$(pwd)"
    worktree="$(basename "$cwd")"

    # split on first `--`
    root="${worktree%%--*}"
    branch="${worktree#*--}"

    # Protect against accidentally nuking a non-worktree directory
    if [[ "$root" != "$worktree" ]]; then
      cd "../$root"
      $HOMEBREW_PREFIX/bin/git worktree remove "$worktree" --force
      $HOMEBREW_PREFIX/bin/git branch -D "$branch"
    else
      echo "Not a worktree directory (no -- separator found)"
    fi
  else
    echo
  fi
}
