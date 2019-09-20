#             .zprofile (zsh profile)  
#             -----------------------
#
# Function >> 
# executes before .zshrc on zsh startup
# useful for environment variables, and other 
# options important for the actual shell.
#
# History Configuration >>
# ---------------------
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
#HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed
#
# Environment variables >>
# ---------------------
# Shellcheck (shell linter) overrides
export SHELLCHECK_OPTS='--shell=zsh --exclude=SC2016 SC2035'
#
# Vim (off) >> 
#
# Brew >>
# ----
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
# For compilers to find isl@0.18 you may need to set:
  export LDFLAGS="-L/home/linuxbrew/.linuxbrew/opt/isl@0.18/lib"
  export CPPFLAGS="-I/home/linuxbrew/.linuxbrew/opt/isl@0.18/include"
# For pkg-config to find isl@0.18 you may need to set:
  export PKG_CONFIG_PATH="/home/linuxbrew/.linuxbrew/opt/isl@0.18/lib/pkgconfig"
