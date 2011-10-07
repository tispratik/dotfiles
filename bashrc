source ~/Auxiliary\ Projects/dotfiles/bash/colors
source ~/Auxiliary\ Projects/dotfiles/bash/paths
source ~/Auxiliary\ Projects/dotfiles/bash/env
source ~/Auxiliary\ Projects/dotfiles/bash/aliases
source ~/Auxiliary\ Projects/dotfiles/bash/completions

if [ `uname` == 'Darwin' ]; then
  source ~/Auxiliary\ Projects/dotfiles/bash/mac_aliases
fi

# Nano
source ~/Auxiliary\ Projects/dotfiles/nanorc

# RVM
source ~/Auxiliary\ Projects/dotfiles/rvmrc

# Ruby Debug
# source ~/Auxiliary\ Projects/dotfiles/rdebugrc

#source ~/Auxiliary\ Projects/dotfiles/bash/gitconfig

if [ -f ~/.local_aliases ]; then
  . ~/.local_aliases
fi

if [ -f ~/.local_paths ]; then
  . ~/.local_paths
fi

# Load the global gitignore file if not existing already
if [ -f ~/.gitignore ]; then
  ln -s ~/Auxiliary\ Projects/dotfiles/gitignore ~/.gitignore
fi  

# This loads RVM into a shell session.
if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then . "$HOME/.rvm/scripts/rvm" > /dev/null; fi		# If RVM is installed in user's home
if [[ -s "/usr/local/bin/rvm" ]]  ; 	then . "/usr/local/bin/rvm" > /dev/null; fi		# If RVM is installed system-wide

# IRBRC
# ruby ~/Auxiliary\ Projects/dotfiles/irbrc
