source ~/Auxiliary\ Projects/dotfiles/bash/config
source ~/Auxiliary\ Projects/dotfiles/bash/paths
source ~/Auxiliary\ Projects/dotfiles/bash/env
source ~/Auxiliary\ Projects/dotfiles/bash/aliases
source ~/Auxiliary\ Projects/dotfiles/bash/completions

if [ -f ~/bin/bash/local_aliases ]; then
  . ~/bin/bash/local_aliases
fi

if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then source "$HOME/.rvm/scripts/rvm" ; fi
