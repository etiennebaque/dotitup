# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
# /Users/adnan/.oh-my-zsh/themes/juanghurtado.zsh-theme
# /Users/adnan/.oh-my-zsh/themes/af-magic.zsh-theme
# /Users/adnan/.oh-my-zsh/themes/bureau.zsh-theme

plugins=(git gitfast history zeus ssh-agent bundler zsh-syntax-highlighting history-substring-search brew ruby)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR='vim'

bindkey -v
bindkey '^r' history-incremental-search-backward
bindkey '^j' vi-cmd-mode

bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

alias vi=vim

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
#eval "$(rbenv init -)"

stty -ixon
