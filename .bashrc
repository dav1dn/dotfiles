#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# Custom bash prompt via kirsle.net/wizards/ps1.html

export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\$ '

export EDITOR=vim
export VISUAL=vim

force_color_prompt=yes

### FUNCTIONS

# Easy extract
extract () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       rar x $1       ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *)           echo "don't know how to extract '$1'..." ;;
      esac
  else
      echo "'$1' is not a valid file!"
  fi
}

# Makes directory then moves into it
function mkcdr {
    mkdir -p -v $1
    cd $1
}

alias cs61b='cd ~/cs61b/aar/'


export CS61B_LIB_DIR="/home/david/cs61b/aar/lib/*"
export CLASSPATH="$CLASSPATH:$CS61B_LIB_DIR:./"
