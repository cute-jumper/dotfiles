#! /bin/bash
#-*- coding: utf-8 -*-
# Author: Junpeng Qiu
# Date: <2015-11-18 Wed>
# Description: Setup environment

set -e
DIR=$HOME/.dotfiles
FILES=(.latexmkrc)
for i in $FILES
do
    ln -s $HOME/$i $DIR/$i
done
