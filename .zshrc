autoload -U compinit promptinit
compinit
promptinit

autoload -U colors && colors
setopt interactive_comments

prompt off

alias ls="ls -G"
alias l='ls -artl'

export PROMPT="%{$fg[magenta]%}$ %{$reset_color%}"

#export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
