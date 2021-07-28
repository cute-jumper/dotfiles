DOT_DIR=$HOME/.dotfiles

source $DOT_DIR/utils

# Load customized env vars
source $HOME/.dotfiles/envrc

export PATH="$HOME/bin:$PATH"
CARGO_ENV="$HOME/.cargo/env" 
if [[ -e "$CARGO_ENV" ]]; then
    source "$CARGO_ENV"
fi
