source ~/Projects/dotfiles/bash/config
source ~/Projects/dotfiles/bash/paths
source ~/Projects/dotfiles/bash/env
source ~/Projects/dotfiles/bash/aliases
source ~/Projects/dotfiles/bash/completions

if [ -f ~/bin/bash/local_aliases ]; then
  . ~/bin/bash/local_aliases
fi
