# ZSH CONFIGURATION FILE
# -----------------------

# [Evan Sherwood]("https://github.com/Alanwatts42")
# [Dotfiles Repository]("https://github.com/Alanwatts42/dotfiles.git")
# [LinkedIn]("https://www.linkedin.com/in/evan-sherwood-3a7a9744/")
# ---------------------------------------------------------------------

# Enable .oh-my-zsh features, plugins, etc.
source $ZSH/oh-my-zsh.sh

# Enable Powerlevel10k instant prompt. (put close to top of ~/.zshrc).
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi



# Theme - Can be an internal theme on below list or external custom url
# ZSH_THEME=random will rotate theme between candidate list below
# ZSH_THEME_RANDOM_CANDIDATES=( "half-life" "nicoulaj" "norm" "igorsilva" )
ZSH_THEME="igorsilva"

# My favorite internal (pre-installed) themes
# [All internal themes](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes)
# -------------------------------------------
# nicoulaj
# half-life
# norm
# peepcode
# phillips
# terminalparty 
# theunraveler
# tjkirch
# tonotdo
# wedisagree
# wezm
# wezm+
# wuffers
# zhann 


## FORMATTING/AUTO-UPDATE OPTIONS
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Change format of timestamp for shell history
# Formats "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd" or custom w/strftime.
# (see 'man strftime' for custom formatting options)
HIST_STAMPS="mm/dd/yyyy"

# Optional custom location of 'custom' (not currently used in my config)
# ZSH_CUSTOM=/path/to/new-custom-folder


## ZSH PLUGINS
# Standard: "$ZSH/plugins/", Custom: "$ZSH_CUSTOM/plugins/"
# --------------------------------------------------------

# Active plugins
plugins=(
    git
    kitty
    vi-mode
    colorize
    zsh-autosuggestions
    zsh-syntax-highlighting
)


# ENVIRONMENT VARIABLES & SOURCED FILES
# -------------------------------------

# $PATH compatibility with bash
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
# ZSH (should always point to path of .oh-my-zsh installation)
export ZSH="$HOME/dotfiles/.oh-my-zsh"
# Path to man files
export MANPATH="/usr/local/man:$MANPATH"

# Language environment path
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Default terminal application (xterm-256color allows 256 colors)
export TERM=xterm-256color

# Path to Alias files. Run `alias` to list all active aliases.
source $ZSH_CUSTOM/aliases.zsh
source $HOME/.aliases
source $HOME/.aliases-m

# Use modern completion system
autoload -Uz compinit
compinit


# TERMINAL STYLE OPTIONS
# ----------------------

# `ls` colors
d="~/.dircolors"
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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# (Only works if using powerlevel10k theme)
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
