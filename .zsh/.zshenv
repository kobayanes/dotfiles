## ----------------------------------------------------------------------------
## file    : .zshenv
## brief   : zsh configuration file.
## module  : .zsh
##
## author  : Teppei Kobayashi <kobayanes@gmail.com>
## date    : 2018/03/02
## ----------------------------------------------------------------------------


## ----------------------------------------------------------------------------
## brief   : assign directory to zsh configuration files.
## note    : -
## ----------------------------------------------------------------------------
export ZDOTDIR=$HOME/dotfiles/.zsh
umask 022


## ----------------------------------------------------------------------------
## brief   : environment variables.
## note    : -
## ----------------------------------------------------------------------------
# terminal settings
export TERM=screen-256color
eval $(dircolors -b ~/.dir_colors)

# lang. variables
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# path
export PATH=/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/bin  # system
export PATH=$PATH:/usr/local/go/bin                       # tool
export PATH=$PATH:$HOME/bin:$HOME/.local/bin              # user

# command
export MANPAGER='less'
export LESS_TERMCAP_mb=$'\e[33m'     # yellow
export LESS_TERMCAP_md=$'\e[33m'     # yellow
export LESS_TERMCAP_me=$'\e[0m'      # reset bold/blink
export LESS_TERMCAP_so=$'\e[47;30m'  # black/white
export LESS_TERMCAP_se=$'\e[0m'      # reset reverse video
export LESS_TERMCAP_us=$'\e[32m'     # green
export LESS_TERMCAP_ue=$'\e[0m'      # reset underline
export GIT_EDITOR='nano'
export EDITOR='nano'

# fzf
export FZF_TMUX=1
export FZF_DEFAULT_OPTS='-i --cycle --ansi --select-1 --exit-0 --multi'

# less
export LESS="-g -i -M -N -R -S -W -x4 -X"
export LESSOPEN='| /usr/share/source-highlight/src-hilite-lesspipe.sh %s'
