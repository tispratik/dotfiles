# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"

DISABLE_AUTO_TITLE="true" # Do not set terminal title automatically

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git, rvm)

source $ZSH/oh-my-zsh.sh

export PATH=~/bin:~/.bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/sphinx/bin:/usr/local/git/bin:~/dotfiles/scripts:$PATH

source ~/dotfiles/aliases
source ~/dotfiles/zsh/functions

if [ -f ~/.local_settings ]; then
  . ~/.local_settings
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
