export WENZ_ENV_HOME="$HOME/projects/env"
export ZSH_ENV_HOME="$HOME/.zsh"

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

######################### history options ############################
setopt EXTENDED_HISTORY        # store time in history
setopt HIST_EXPIRE_DUPS_FIRST  # unique events are more usefull to me
setopt HIST_VERIFY             # Make those history commands nice
setopt INC_APPEND_HISTORY      # immediatly insert history into history file
HISTSIZE=16000                 # spots for duplicates/uniques
SAVEHIST=15000                 # unique events guarenteed
HISTFILE=~/.zsh_history

# autoload -U colors
autoload -U colors

# Get tmux to work
bindkey -e

export PATH=$PATH:$HOME/.bin

if [[ `uname` == 'Linux' ]]
then
    source $ZSH_ENV_HOME/os/linux/linux_zshrc
elif [[ `uname` == 'Darwin' ]]
then
    source $ZSH_ENV_HOME/os/mac_osx/osx_zshrc
else
    echo "$WENZ_ENV_HOME on unknown platform"
fi

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export TERM=xterm-256color
export EDITOR=vim

source $ZSH_ENV_HOME/common/common-alias
source $ZSH_ENV_HOME/common/ssh

alias gits="git status"

# Quick edits
alias vimz="vi ~/.zshrc"
alias vimg="vi ~/.gitconfig"
alias vimv="vi ~/.vimrc"
alias vims="vi ~/.ssh/config"

alias gits='git status'
