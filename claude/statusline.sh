#!/usr/bin/env bash
set -euo pipefail

input=$(cat)
val() { echo "$input" | jq -r "$1 // empty"; }

dir=$(basename "$(pwd)")
branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null || true)
dirty=$([ -n "$(git status --porcelain 2>/dev/null)" ] && echo '*' || true)
model=$(val '.model.display_name')
ctx=$(val '.context_window.remaining_percentage')

dim='\033[2m'
bold='\033[1m'
cyan='\033[36m'
green='\033[32m'
yellow='\033[33m'
reset='\033[0m'

# color context by remaining capacity
ctx_color="$green"
if [ -n "$ctx" ]; then
  [ "$ctx" -lt 50 ] && ctx_color="$yellow"
  [ "$ctx" -lt 20 ] && ctx_color='\033[31m'
fi

printf "${dim}%s" "$model"
[ -n "$ctx" ] && printf " | ${ctx_color}${bold}%s%%${reset}${dim}" "$ctx"
printf " | %s" "$dir"
[ -n "$branch" ] && printf " | ${bold}${cyan}%s${dirty}${reset}" "$branch"
