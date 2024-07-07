
# Expand path to include dotfiles
# export PATH=$HOME/dotfiles:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/dotfiles/.oh-my-zsh"

# Path to custom directory in .oh-my-zsh
export ZSH_CUSTOM="$ZSH/custom"

# Enable .oh-my-zsh
source "$ZSH/oh-my-zsh.sh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="igorsilva"

plugins=(
    git
    kitty
    vi-mode
    colorize
    zsh-autosuggestions
    zsh-syntax-highlighting
    python
    safe-paste
    vim-interaction
    github
    ubuntu
)

# User configuration

# Prompt setup
autoload -Uz promptinit
promptinit


# auto suggest
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=""

# starting dir
# cd ~/repos

# Set 256 color terminal mode
export TERM=xterm-256color


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# use vim keybindings
bindkey -v

# Source all of my alias docs
source "$ZSH_CUSTOM/aliases.zsh"
source "$HOME/.aliases"
source "$HOME/.aliases-m"

# # NVM config sources
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#-------- Global Alias {{{
# globalias() {
#   if [[ $LBUFFER =~ '[a-zA-Z0-9]+$' ]]; then
#     zle _expand_alias
#     zle expand-word
#   fi
#   zle self-insert
# }
# zle -N globalias
# bindkey " " globalias                 # space key to expand globalalias
# # bindkey "^ " magic-space            # control-space to bypass completion
# bindkey "^[[Z" magic-space            # shift-tab to bypass completion
# bindkey -M isearch " " magic-space    # normal space during searches
# . $HOME/.aliases
# #}}}
#
# SPACESHIP_PROMPT_ADD_NEWLINE="true"
# SPACESHIP_CHAR_SYMBOL="⚡"

# Turn off power status when using spaceship prompt
# export SPACESHIP_BATTERY_SHOW=false


# Ume modern completion system
autoload -Uz compinit
compinit


# TERMINAL STYLE OPTIONS
# ----------------------

# `ls` colors
d="$HOME/.dircolors"
test -r $d && eval "$(dircolors $d)"

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


# OTHER, MISC, & APPENDED
# ------------------------

# Better options for shell history
setopt histignorealldups sharehistory
# Typing directory name automatically cd's into it
setopt AUTO_CD


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/evan/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/evan/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/evan/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/evan/miniconda3/bin:$PATH"
    fi
fi

unset __conda_setup
# <<< conda initialize <<<
