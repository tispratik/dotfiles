source ~/AptanaWorkspace/dotfiles/bash/config
source ~/AptanaWorkspace/dotfiles/bash/paths
source ~/AptanaWorkspace/dotfiles/bash/env
source ~/AptanaWorkspace/dotfiles/bash/aliases
source ~/AptanaWorkspace/dotfiles/bash/completions

if [ -f ~/bin/bash/local_aliases ]; then
  . ~/bin/bash/local_aliases
fi
