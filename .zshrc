# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/david/.zshrc'

export ZSH=$HOME/.oh-my-zsh
plugins=(git archlinux catimg common-aliases pip python screen)
autoload -Uz compinit
compinit
# End of lines added by compinstall
ZSH_THEME="xxf"

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# local path for gems
export PATH=/home/david/.gem/ruby/2.2.0/bin:$HOME/bin:/usr/local/bin:$PATH

# weird encoding issues for weird screens
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim
export VISUAL=vim

# load 256 color space theme
source $HOME/base16-default.dark.sh

# aliases
alias ls='ls --color=auto'
