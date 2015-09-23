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
autoload -Uz compinit
compinit
# End of lines added by compinstall
ZSH_THEME="bureau"
export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"
source $ZSH/oh-my-zsh.sh
plugins=(git archlinux catimg common-aliases pip python screen)

#####
# CS 61B Environment Variables
#####
alias cs61b='cd ~/cs61b/aar/'
export CS61B_LIB_DIR="/home/david/cs61b/aar/lib/*"
export CLASSPATH="$CLASSPATH:$CS61B_LIB_DIR:./:/usr/lib/jvm/java-7-jdk/lib/*"

export EDITOR=vim
export VISUAL=vim

alias ls='ls --color=auto'
