#

#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

set -o vi

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# jupyter
alias jupyter-docker="docker run --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v /Users/kshuta/Developer/python/lab:/home/jovyan/work jupyter/datascience-notebook:33add21fab64"
alias obsidian="/Users/kshuta/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Dailyv2/"

# canvas course pages

# gcc with flags
alias gcc_comp="gcc -Wall -Wextra -fanalyzer -fstack-protector"
alias c++="c++-11"

# paths
export PATH="/usr/local/bin/:/usr/local/opt/openjdk/bin:/usr/local/protobuf/bin:$PATH"

# Go envs
export GO_PATH="$HOME/go"
export PATH="$PATH:/$GO_PATH/bin"
export PATH="$(brew --prefix)/opt/make/libexec/gnubin:$PATH"

# alias for apps
alias brave="open -a Brave\ Browser"


# Load Angular CLI autocompletion.
#source <(ng completion script)
#
#
set +o noclobber
bindkey -v

# rust
export PATH="$PATH:$HOME/.cargo/bin"

# dotfile tracking with git
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

