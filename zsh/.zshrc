# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
if [[ $EMACS ]]; then
    ZSH_THEME="robbyrussell"
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
plugins=(git github python battery pip nyan scala sbt rsync gnu-utils svn ruby
         rvm gem bundler cabal archlinux autojump sprunge sudo
         zsh-autosuggestions zsh-completions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

autoload -U compinit && compinit

#  ____  _             _
# |  _ \| |_   _  __ _(_)_ __  ___
# | |_) | | | | |/ _` | | '_ \/ __|
# |  __/| | |_| | (_| | | | | \__ \
# |_|   |_|\__,_|\__, |_|_| |_|___/
#                |___/

if [[ $EMACS ]]; then
    export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=2"
else
    export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=10"
fi

# zsh-history-substring-search
source $ZSH_CUSTOM/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# Customize to your needs...

source ~/.dotfiles/shellrc
