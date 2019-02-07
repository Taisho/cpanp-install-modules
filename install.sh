#!/usr/bin/env bash

file="$(realpath cpanp-install-modules)"
base=$(basename "$file")

if [ ! -e ~/bin ]
then
    mkdir ~/bin
fi

if [ -e "$HOME/bin/$base" ]
then
    exit
fi

chmod u+x "$file"

cd ~/bin
ln -s "$file" .
