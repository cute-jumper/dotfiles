#! /bin/bash
#-*- coding: utf-8 -*-
# Author: Junpeng Qiu
# Date: <2015-11-18 Wed>
# Description: Setup environment

set -e

MODULES=(latexmk hunspell git keysnail vim ideavim zsh)
for i in "${MODULES[@]}"
do
    stow -v $i
done
