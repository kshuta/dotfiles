source ~/.gitprompt.sh
alias "comp"="gcc -Wall -Wextra -fanalyzer"
shopt -s cdspell
export EDITOR=vi

# Display the current Git branch in the Bash prompt.

function git_branch() {
    if [ -d .git ] ; then
        printf "%s" "($(git branch 2> /dev/null | awk '/\*/{print $2}'))";
    fi
}

# Set the prompt.

function bash_prompt(){
        PS1='\[\e]0;\u@\h: \w\a\]\n${debian_chroot:+($debian_chroot)}'${blu}'$(__git_ps1 )'${pur}' \W'${grn}' \$ '${clr}
}

bash_prompt

alias ls='ls --color=auto'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

LS_COLORS=$LS_COLORS:'di=0;35:'
export LS_COLORS

set -o vi
