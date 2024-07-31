# this is executed along with .zshrc


export WINEPREFIXES="$HOME/.local/share/wineprefixes"
export DOTFILES="$HOME/dotfiles"

# Fix error on nvim plugin install which required "deno" command
export PATH=~/.deno/bin/deno:$PATH
export DENO_INSTALL="/home/evan/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
