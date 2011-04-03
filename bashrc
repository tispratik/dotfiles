source ~/Auxiliary\ Projects/dotfiles/bash/config
source ~/Auxiliary\ Projects/dotfiles/bash/paths
source ~/Auxiliary\ Projects/dotfiles/bash/env
source ~/Auxiliary\ Projects/dotfiles/bash/aliases
source ~/Auxiliary\ Projects/dotfiles/bash/completions

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

# This loads RVM into a shell session.
if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then source "$HOME/.rvm/scripts/rvm" ; fi	# If RVM is installed in user's home
if [[ -s "/usr/local/bin/rvm" ]]  ; then source "/usr/local/bin/rvm" ; fi		# If RVM is installed system-wide

# IRBRC
# ruby ~/Auxiliary\ Projects/dotfiles/irbrc
