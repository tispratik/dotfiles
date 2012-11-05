source ~/dotfiles/bash/colors
source ~/dotfiles/bash/paths
source ~/dotfiles/bash/env
source ~/dotfiles/aliases
source ~/dotfiles/bash/functions
source ~/dotfiles/bash/completions

if [ `uname` == 'Darwin' ]; then
  source ~/dotfiles/bash/mac_aliases
fi

FILES=(vimrc gitignore gitconfig screenrc pryrc rdebugrc tm_properties ackrc)
ELEMENTS=${#FILES[@]}

for (( i=0;i<$ELEMENTS;i++)); do
  FILE=${FILES[${i}]}
  if [ ! -f ~/.${FILE} ]; then
    ln -s ~/dotfiles/${FILE} ~/.${FILE}
    echo Symlinking ${FILE}
  fi
done

if [ ! -f ~/.tmux.conf ]; then
  ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
  echo Symlinking tmux conf
fi

if [ -f ~/.local_settings ]; then
  . ~/.local_settings
fi

if [ ! -d ~/.vim ]; then
  ln -s ~/dotfiles/vim ~/.vim
  echo Symlinking .vim directory
fi

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
