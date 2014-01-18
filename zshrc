# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="bira"

DISABLE_AUTO_TITLE="true" # Do not set terminal title automatically

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH=~/bin:~/.bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/sphinx/bin:/usr/local/git/bin:~/dotfiles/scripts:$PATH

source ~/dotfiles/aliases
source ~/dotfiles/zsh/functions

# for (( i=0;i<$ELEMENTS;i++)); do
#   FILE=${FILES[${i}]}
#   if [ ! -f ~/.${FILE} ]; then
#     ln -s ~/dotfiles/${FILE} ~/.${FILE}
#     echo Symlinking ${FILE}
#   fi
# done
#
# if [ ! -f ~/.tmux.conf ]; then
#   ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
#   echo Symlinking tmux conf
# fi

if [ -f ~/.local_settings ]; then
  . ~/.local_settings
fi

if [ ! -f ~/.irbrc ]; then
  ln -s ~/dotfiles/irbrc ~/.irbrc
  echo "Symlinking irbrc"
fi

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

eval "$(rbenv init -)"
unsetopt correct_all # To stop zsh from autocorrecting commands

export PATH=$PATH:~/bin/jad158g.mac.intel/
