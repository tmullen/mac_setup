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
Install one or more ruby versions:
```
%> ruby-install ruby
%> ruby-install ruby-3.0.1
```

Set global ruby version:
```
%> echo "ruby-3.0.1" > ~/.ruby-version
```

## Install NodeJS
Install NVM per [instructions](https://github.com/nvm-sh/nvm#install--update-script). The command will look something like:
```
%> curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
```

Then install appropriate NodeJS version:
```
%> nvm ls-remote | grep -i 'latest'
%> nvm install v16.3.1
%> node --version
%> nvm cache clear
```

