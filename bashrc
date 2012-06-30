source ~/dotfiles/bash/colors
source ~/dotfiles/bash/paths
source ~/dotfiles/bash/env
source ~/dotfiles/bash/aliases
source ~/dotfiles/bash/functions
source ~/dotfiles/bash/completions

if [ `uname` == 'Darwin' ]; then
  source ~/dotfiles/bash/mac_aliases
fi

# Nano
source ~/dotfiles/nanorc

# RVM
source ~/dotfiles/rvmrc

#source ~/dotfiles/bash/gitconfig

if [ -f ~/.local_settings ]; then
  . ~/.local_settings
fi

if [ ! -f ~/.vimrc ]; then
  ln -s ~/dotfiles/vimrc ~/.vimrc
fi

# Load the global gitignore file if not existing already
if [ ! -f ~/.gitignore ]; then
  ln -s ~/dotfiles/gitignore ~/.gitignore
fi

if [ ! -f ~/.screenrc ]; then
  ln -s ~/dotfiles/screenrc ~/.screenrc
fi

if [ ! -f ~/.inputrc ]; then
  ln -s ~/dotfiles/inputrc ~/.inputrc
fi

if [ ! -f ~/.pryrc ]; then
  ln -s ~/dotfiles/pryrc ~/.pryrc
fi

if [ ! -f ~/.rdebugrc ]; then
  ln -s ~/dotfiles/rdebugrc ~/.rdebugrc
fi

# This loads RVM into a shell session.
if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then . "$HOME/.rvm/scripts/rvm" > /dev/null; fi		# If RVM is installed in user's home
if [[ -s "/usr/local/bin/rvm" ]]  ; 	then . "/usr/local/bin/rvm" > /dev/null; fi		# If RVM is installed system-wide

# IRBRC
# ruby ~/dotfiles/irbrc

# Textmate2 Properties
if [ ! -f ~/.tm_properties ]; then
  ln -s ~/dotfiles/tm_properties ~/.tm_properties
fi

# Gitconfig
if [ ! -f ~/.gitconfig ]; then
  ln -s ~/dotfiles/gitconfig ~/.gitconfig
fi
