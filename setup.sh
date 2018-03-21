#! /bin/bash
#-*- coding: utf-8 -*-
# Author: Junpeng Qiu
# Date: <2015-11-18 Wed>
# Description: Setup environment

set -e

DOT_DIR=$HOME/.dotfiles

source $DOT_DIR/utils

MODULES=(hunspell vim ideavim zsh)
if ! _is_mac; then
    MODULES+=(latexmk git)
fi
for i in "${MODULES[@]}"
do
    stow -v $i
done
