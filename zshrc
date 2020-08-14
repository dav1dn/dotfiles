# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt noincappendhistory nosharehistory autocd nomatch notify
unsetopt beep share_history
bindkey -e

export PATH=/usr/local/bin:$PATH
fpath=(~/.zsh-completions $fpath)

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/david/.zshrc'

export ZSH=$HOME/.oh-my-zsh
plugins=(helm kubectl git brew tmux catimg common-aliases pip python screen zsh-syntax-highlighting history-substring-search)
autoload -Uz compinit
autoload -U promptinit; promptinit
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line
compinit
# End of lines added by compinstall
ZSH_THEME="spaceship"

# plugins
source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


# load oh-my-zsh
source $ZSH/oh-my-zsh.sh
#prompt pure

# theme settings
SPACESHIP_KUBECTL_SHOW=false
SPACESHIP_EXIT_CODE_SHOW=true

SPACESHIP_PROMPT_ORDER=(
  time
  user
  host
  dir
  git
  hg
  package
  #node
  #ruby
  elixir
  xcode
  swift
  golang
  php
  rust
  julia
  #docker
  aws
  #venv
  conda
  #pyenv
  dotnet
  ember
  #kubectl
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
export EDITOR=nvim
export VISUAL=nvim

# aliases
alias screen='TERM=screen-256color screen'
alias sed=gsed
alias vim=nvim
alias gitautosquash='git rebase -i --autosquash'
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
base16_oceanicnext

#source "$HOME/.vim/plugins/gruvbox/gruvbox_256palette.sh"
#source "$HOME/.vim/plugins/gruvbox/gruvbox_256palette_osx.sh"

# npm
export PATH="$HOME/.npm-packages/bin:$PATH"
# this is the root folder where all globally installed node packages will  go
export NPM_PACKAGES="/usr/local/npm_packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
# add to PATH
export PATH="$NPM_PACKAGES/bin:$PATH"


# post omz 
unsetopt share_history

# vi mode
bindkey -v
export KEYTIMEOUT=1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


DISABLE_AUTO_TITLE="true"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# disable bracketed paste magic for super speedy pastes

zstyle ':bracketed-paste-magic' active-widgets '.self-*'

eval "$(pyenv virtualenv-init -)"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/davidn/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/davidn/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/davidn/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/davidn/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/avr-gcc@8/bin:$PATH"
