# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH=$HOME/dotfiles/:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/dotfiles/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="igorsilva"

# internal theme options: #
# -----------------------
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

# Set elessar as theme
# if  [ $ZSH_THEME == "" ]  && [[ ! -f $ZSH_CUSTOM/themes/elessar*.zsh-theme ]];then
#     wget "https://raw.githubusercontent.com/fjpalacios/elessar-theme/master/elessar.zsh-theme" "$ZSH_CUSTOM/themes/elessar.zsh-theme"
# fi

# Set lambda-gitster as theme
# if  [ $ZSH_THEME == "" ] && [[ ! -f "$ZSH_CUSTOM/themes/lambda-gitster.zsh-theme" ]];then
#     wget "https://github.com/ergenekonyigit/lambda-gitster/blob/main/lambda-gitster.zsh-theme" "$ZSH_CUSTOM/themes/lambda-gitster.zsh-theme"
# fi

# ZSH_THEME_RANDOM_CANDIDATES=( "igorsilva" "limbda-gitster" )
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=$ZSH/custom

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    kitty
    vi-mode
    colorize
    zsh-interactive-cd
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-navigation-tools
    ubuntu
    github
    vi-mode
    urltools
    vim-interaction
    python
    virtualenv
    safe-paste
)


custom_plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
    )

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]];then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"
export TERM=xterm-256color

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# export ZSH_CUSTOM = $ZSH/.oh-my-zsh/custom
# source $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
# source $HOME/.aliases

if [[ ! -f $ZSH_CUSTOM/aliases.zsh ]]; then
    sudo ln $HOME/.aliases $ZSH_CUSTOM/aliases.zsh
    source $ZSH_CUSTOM/aliases.zsh
else
    source $ZSH_CUSTOM/aliases.zsh
fi

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

for p in $custom_plugins;do
    if [[ ! -d $ZSH_CUSTOM/plugins/"$p" ]];then
        git clone https://github.com/zsh-users/"$p".git $ZSH_CUSTOM/plugins/"$p"
        source $ZSH_CUSTOM/plugins/"$p"
    else
        source $ZSH_CUSTOM/plugins/"$p"
    fi
done





# typewritten theme setup
# fpath+=$ZSH_CUSTOM/themes/typewritten
# autoload -Uz promptinit; promptinit
# prompt typewritten

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


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

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

