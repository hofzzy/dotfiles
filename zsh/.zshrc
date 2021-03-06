# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

import_rc() {
  local source_file="$PWD/zsh/rc/$1.rc.zsh"

  if [ -f $source_file ]; then
    source $source_file
  fi
}

import_rc 'alias'