# Zshrc config

export ZSH="/Users/smallwat3r/.oh-my-zsh"

PROMPT='%{$fg[blue]%}$(git_prompt_info) %20<...<%~%<< %{$reset_color%}$ '

DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export EDITOR=/usr/local/bin/vim

alias vi="vim"
alias edit="vim"

alias p="pwd"
alias s="sketch"
alias n="nnn"
alias lg="lazygit"
alias q="ddgr"

alias c="clear"

alias g=git
alias ga="git add"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

if command -v fink>/dev/null; then
  source /sw/bin/init.sh
fi

if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && tmux
fi
