#! /bin/bash
#-*- coding: utf-8 -*-
# Author: Junpeng Qiu
# Date: <2015-11-18 Wed>
# Description: Setup environment

set -e
DIR=$HOME/.dotfiles

echo -e "\e[0;32mSTEP 1:\e[m"
FILES=(.latexmkrc .hunspell_en_US .gitconfig .keysnail.js .vimrc .ideavimrc)
echo "Would you like to create following symbol links?"
counter=1
for i in "${FILES[@]}"; do
    echo "$counter: $HOME/$i"
    counter=$(($counter+1))
done
while true; do
    read -p "Your answer: [Y/N] " yn
    case $yn in
        [Yy]* )
            for i in ${FILES[@]}
            do
                (set -x; ln -si $DIR/$i $HOME/$i)
            done
            break;;
        [Nn]* )
            echo "You choose to do nothing."
            break;;
        * ) echo "Please answer Y or N.";;
    esac
done
