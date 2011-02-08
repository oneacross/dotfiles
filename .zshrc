autoload -U compinit promptinit
compinit
promptinit

prompt off

alias ls='ls --color=auto'
alias l='ls -artl'

export PROMPT="%{$fg[magenta]%}$ %{$reset_color%}"

#export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
