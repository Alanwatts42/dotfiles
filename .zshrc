# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# --- end of p10k prompt setup ---


#Zplug setup >>
if [[ ! -d ~/.zplug ]];then
    git clone https://github.com/b4b4r07/zplug ~/.zplug
fi

#Prompt setup >>
# autoload -Uz promptinit
# promptinit
# prompt adam1

# Environment variables >>
# Shellcheck (shell linter) overrides
export SHELLCHECK_OPTS='--shell=sh --exclude=SC2016'


# Vi style controls
EDITOR=nvim
bindkey -v

# set 256 color mode
# export TERM=rxvt-unicode-256color

# Zplug >>
# Zplug auto-install check
if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/zplug/zplug ~/.zplug;
  source ~/.zplug/init.zsh; 
  zplug update --self
fi

# Essential for zplug to work
source ~/.zplug/init.zsh

# Zsh history search >>
zplug "zsh-users/zsh-history-substring-search"
# Zsh syntax highlighting
zplug "zsh-users/zsh-syntax-highlighting", defer:2
# Zsh-autosuggestions 
zplug "zsh-users/zsh-autosuggestions"

# Look & Feel >>
zplug "romkatv/powerlevel10k", from:oh-my-zsh, as:theme
# zplug "romkatv/powerlevel10k", as:theme, depth:1


# Install packages that have not been installed yet
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

zplug load
# end of zplug config

# Formatting & Completion >>
# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE="~/.zsh_history"

# Use modern completion system
autoload -Uz compinit
compinit

# `ls` colors
d="~/.dircolors"
test -r $d && eval "$(dircolors $d)"

# Text style >>
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


# Misc options >>
setopt histignorealldups sharehistory
setopt AUTO_CD

# Sources >>
source ~/.aliases
# source ~/.functions
source ~/.zplug/repos/romkatv/powerlevel10k/powerlevel10k.zsh-theme

# To customize Powerlevel10k, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Tilix config >
#if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
#        source /etc/profile.d/vte*.sh
#fi

# Custom shell commands >
# to add custom cmds, run `let's kick shell` or edit $HOME/.kick_shell'  
# if [ -f ~/.kick_shell ] 
# then
#     source ~/.kick_shell
# fi
