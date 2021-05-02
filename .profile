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

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    # shellcheck source=/dev/null
	. "$HOME/.bashrc"
    fi
fi


# .aliases
if [ -f "$HOME/.aliases" ]; then
    # shellcheck source=/dev/null
    . "$HOME"/.aliases
fi

# .functions
if [ -f "$HOME/.functions" ]; then
    # shellcheck source=/dev/null
    . "$HOME"/.functions
fi


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"

fi

# set PATH to include everything in ~/.local
if [ -d "$HOME/.local" ]; then
    PATH="$HOME/.local:$PATH"
fi


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi
