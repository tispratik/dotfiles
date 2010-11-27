source ~/Auxiliary\ Projects/dotfiles/bash/config
source ~/Auxiliary\ Projects/dotfiles/bash/paths
source ~/Auxiliary\ Projects/dotfiles/bash/env
source ~/Auxiliary\ Projects/dotfiles/bash/aliases
source ~/Auxiliary\ Projects/dotfiles/bash/completions
source ~/Auxiliary\ Projects/dotfiles/bash/gitconfig

if [ -f ~/.local_aliases ]; then
  . ~/.local_aliases
fi

if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then source "$HOME/.rvm/scripts/rvm" ; fi
