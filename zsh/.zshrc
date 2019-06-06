# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
DOT_DIR=$HOME/.dotfiles

source $DOT_DIR/utils

_fetch() {
    if [[ $# = 3 && ! -d "$3" ]]; then
        echo -n "-> Fetching $1..."
        git clone -q "$2" "$3"
        echo "Done"
    fi
}

# Check oh-my-zsh
_fetch "oh-my-zsh" https://github.com/robbyrussell/oh-my-zsh.git "$ZSH"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#  _____ _
# |_   _| |__   ___ _ __ ___   ___
#   | | | '_ \ / _ \ '_ ` _ \ / _ \
#   | | | | | |  __/ | | | | |  __/
#   |_| |_| |_|\___|_| |_| |_|\___|

if [[ $EMACS || is_mac ]]; then
    ZSH_THEME="xiong-chiamiov"
else
    ZSH_THEME="agnoster"
fi

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#  ____  _             _
# |  _ \| |_   _  __ _(_)_ __  ___
# | |_) | | | | |/ _` | | '_ \/ __|
# |  __/| | |_| | (_| | | | | \__ \
# |_|   |_|\__,_|\__, |_|_| |_|___/
#                |___/
plugins=(git github python battery pip scala sbt rsync gnu-utils svn ruby
         rvm gem bundler cabal archlinux sprunge sudo z zaw)

extra_plugins=(zsh-users/zsh-autosuggestions
               zsh-users/zsh-completions zsh-users/zaw peterhurford/up.zsh)

if [[ $EMACS ]]; then
    :;
else
    extra_plugins+=(zsh-users/zsh-syntax-highlighting zsh-users/zsh-history-substring-search)
fi

# Check extra plugins & append to "plugins"
for i in "${extra_plugins[@]}"; do
    name="${${i##*/}%*.zsh}"
    full_path="$ZSH/custom/plugins/$name"
    _fetch "$i" "https://github.com/$i.git" "$full_path"
    plugins+=("$name")
done

_fix_zsh_history_substring_search() {
    echo 'source ${0:A:h}/zsh-history-substring-search.zsh' >\
         "$ZSH/custom/plugins/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh"
}

if [[ " ${extra_plugins[*]} " == *" zsh-users/zsh-history-substring-search "* ]];
then
    # Add missing plugin.zsh file
    _fix_zsh_history_substring_search
fi

# Load!
source $ZSH/oh-my-zsh.sh

autoload -U compinit && compinit

#   ____             __ _
#  / ___|___  _ __  / _(_) __ _ ___
# | |   / _ \| '_ \| |_| |/ _` / __|
# | |__| (_) | | | |  _| | (_| \__ \
#  \____\___/|_| |_|_| |_|\__, |___/
#                         |___/

if [[ $EMACS ]]; then
    export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=2"
else
    export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=10"
    # zsh-history-substring-search
    bindkey -M emacs '^[p' history-substring-search-up
    bindkey -M emacs '^[n' history-substring-search-down
fi

bindkey '^R' zaw-history

# Customize to your needs...

source $DOT_DIR/shellrc
