# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# Shellcheck exclusions
export SHELLCHECK_OPTS="-e SC2059 -e SC2034 -e SC1090"

# set PATH to include everything in ~/.local
if [ -d "$HOME/.local" ]; then
    PATH="$HOME/.local:$PATH"
fi
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

export WINEPREFIXES="/home/evan/.local/share/wineprefixes"

# Fix error on nvim plugin install which required "deno" command
export PATH=~/.deno/bin/deno:$PATH
export DENO_INSTALL="/home/evan/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
