# .zprofile (zsh profile)  
# executes before .zshrc on zsh startup
# useful for environment variables, and other options important for the actual shell.

# Environment variables >>
# Shellcheck (shell linter) overrides
export SHELLCHECK_OPTS='--shell=zsh --exclude=SC2016 SC2035'

# Vim (off) >> 
# set vim as EDITOR to allow vi style controls
# EDITOR=vim
# Set Vim as pager for `man` manual files
# export MANPAGER="env MAN_PN=1 vim -M +MANPAGER -"

# Brew >>
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
# For compilers to find isl@0.18 you may need to set:
  export LDFLAGS="-L/home/linuxbrew/.linuxbrew/opt/isl@0.18/lib"
  export CPPFLAGS="-I/home/linuxbrew/.linuxbrew/opt/isl@0.18/include"
# For pkg-config to find isl@0.18 you may need to set:
  export PKG_CONFIG_PATH="/home/linuxbrew/.linuxbrew/opt/isl@0.18/lib/pkgconfig"
