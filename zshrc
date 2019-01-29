#Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt noincappendhistory nosharehistory autocd nomatch notify
unsetopt beep share_history
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/david/.zshrc'

export ZSH=$HOME/.oh-my-zsh
plugins=(git brew tmux catimg common-aliases pip python screen zsh-syntax-highlighting history-substring-search)
autoload -Uz compinit
autoload -U promptinit; promptinit
compinit
# End of lines added by compinstall
#ZSH_THEME="spaceship"
ZSH_THEME=""

# plugins
source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


# load oh-my-zsh
source $ZSH/oh-my-zsh.sh
prompt pure

# theme settings
SPACESHIP_KUBECONTEXT_SHOW="${SPACESHIP_KUBECONTEXT_SHOW:=false}"
SPACESHIP_PROMPT_ORDER=(
  time
  user
  host
  dir
  git
  hg
  # package
  # node
  ruby
  elixir
  xcode
  swift
  golang
  php
  rust
  julia
  docker
  aws
  venv
  conda
  pyenv
  dotnet
  ember
  # kubecontext
  # battery
  exec_time
  line_sep
  vi_mode
  jobs
  exit_code
  char
)
#export PURE_PROMPT_SYMBOL="✨ >"


# weird encoding issues for weird screens
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim
export VISUAL=vim

# aliases
alias sed=gsed
alias vim=nvim


#source "$HOME/.vim/plugins/gruvbox/gruvbox_256palette.sh"
#source "$HOME/.vim/plugins/gruvbox/gruvbox_256palette_osx.sh"
source "$HOME/.oh-my-zsh/custom/color_scheme.sh"
# Android home

# npm
export PATH="$HOME/.npm-packages/bin:$PATH"
# this is the root folder where all globally installed node packages will  go
export NPM_PACKAGES="/usr/local/npm_packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
# add to PATH
export PATH="$NPM_PACKAGES/bin:$PATH"

export PATH="/usr/local/bin:$PATH"

# post omz 
unsetopt share_history

bindkey -v

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


DISABLE_AUTO_TITLE="true"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(pyenv init -)"
