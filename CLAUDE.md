# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

This is a personal macOS setup repository that uses Dotbot to manage dotfiles and system configuration. It handles installation and configuration of development tools, shell environments, and application settings.

## Key Commands

### Initial Setup
```bash
# Install dotfiles and configurations
./install

# Update dotbot submodule
git submodule update --remote dotbot
```

### Homebrew Management
```bash
# Run bootstrap to install Homebrew packages
zsh bin/bootstrap.sh
```

### ASDF Version Management
```bash
# List all available versions of a language
asdf list all <plugin>

# Install a plugin
asdf plugin add <plugin>

# Install a specific version
asdf install <plugin> <version>

# Set global version
asdf global <plugin> <version>
```

### Vim/NeoVim
```bash
# Install plugins (run inside vim/nvim)
:PlugInstall
```

## Architecture

### Dotbot Configuration
- **install.conf.yaml**: Main configuration that defines symlinks and shell commands
- **install**: Entry script that invokes Dotbot with the configuration
- **dotbot/**: Submodule containing the Dotbot framework

### Directory Structure
- **zsh/**: Zsh configuration files split into logical modules (aliases, settings, prompt, git, history, secrets, claude)
- **vim/** & **config/nvim/**: Vim and NeoVim configurations with modular settings
- **git/**: Git configuration including global gitconfig and gitignore
- **ruby/**: Ruby development configurations (gemrc, irbrc, pryrc)
- **config/code/**: VS Code settings and keybindings
- **bin/**: Utility scripts including bootstrap.sh for Homebrew setup
- **asdf/**: ASDF version manager configuration
- **editor/**: EditorConfig for consistent coding styles
- **iTerm2/**: iTerm2 terminal profile

### Key Files
- **bin/bootstrap.sh**: Installs Homebrew, development packages, and applications
- **zsh/zshrc**: Main Zsh configuration that sources modular config files
- **vim/vimrc**: Main Vim configuration with plugin management via vim-plug

## Important Notes

- The repository uses symlinks extensively via Dotbot to place configuration files in their appropriate locations
- ASDF is used for managing multiple runtime versions (Ruby, Node.js, etc.)
- Homebrew is the primary package manager for macOS applications and tools
- Configuration is modular - changes to specific tools should be made in their respective directories