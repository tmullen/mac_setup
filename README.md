# Mac Setup

## Preliminary Steps

### Create project directories
```
%> mkdir ~/github
%> mkdir ~/github/home
%> mkdir ~/github/work
```

### Add SSH keys

Generate new keys (see [Connecting to Github w/ SSH](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh))
-or- copy existing keys over

### Clone Mac Setup project
```
%> cd ~/github/home/
%> git clone git@github.com:tmullen/mac_setup.git
```

### Load iTerm2 profile
Go to: iTerm2 > Preferences > Profiles

Choose "Other Actions" and loan JSON profile from ~/github/home/mac_setup/iTerm2/Profile.json

### Update Dotbot
```
%> cd ~/github/home/mac_setup
%> git submodule update --remote dotbot
```

## Run Dotfiles Install
```
%> ./install
```

## Install Ruby
Add ruby plugin to ASDF package manager:
```
%> asdf plugin add ruby
```

Install one or more ruby versions:
```
%> asdf install ruby latest
%> asdf install ruby 2.7.3
```

Set global ruby version:
```
%> asdf global ruby 3.1.0
```

Helpful commands:
```
%> asdf list all ruby  # list all versions of ruby
%> asdf plugin-update ruby  # update plugin if you don't see latest versions
```

## Install NodeJS
Add NodeJS plugin to ASDF package manager:
```
%> asdf plugin add nodejs
```

Install one or more ruby versions:
```
%> asdf install nodejs latest
%> asdf install nodejs 16.3.1
```

Set global NodeJS version:
```
%> asdf global nodejs 16.3.1
```

