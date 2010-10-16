source ~/projects/dotfiles/bash/config
source ~/projects/dotfiles/bash/paths
source ~/projects/dotfiles/bash/env
source ~/projects/dotfiles/bash/aliases
source ~/projects/dotfiles/bash/completions

if [ -f ~/bin/bash/local_aliases ]; then
  . ~/bin/bash/local_aliases
fi
