#!/bin/sh

echo "Installing Homebrew..."
[ ! -f /opt/homebrew/bin/brew ] && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing Homebrew packages..."
packages=(
  zsh
  git
  neovim
  macvim
  asdf
)
for p in $packages; do
  [ ! -d /opt/homebrew/Cellar/$p ] && /opt/homebrew/bin/brew install $p
done

echo "Installing applications..."
applications=(
  brave-browser
  gpg-suite
  iterm2
  notion
  sourcetree
  visual-studio-code
)
for a in $applications; do
  [ ! -d /opt/homebrew/Caskroom/$a ] && /opt/homebrew/bin/brew install $a
done

echo "Installing Vim plugin manager..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing NeoVim plugin manager..."
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing Claude Code..."
if ! command -v claude >/dev/null 2>&1; then
  curl -fsSL claude.ai/install.sh | bash
else
  echo "Claude Code already installed"
fi
