#!/bin/bash

# update submodule
git submodule update --init

# create link
rm ~/.vim
ln -s ~/vimrc ~/.vim

rm ~/.vimrc
ln -s ~/vimrc/vimrc ~/.vimrc

rm ~/.gvimrc
ln -s ~/vimrc/gvimrc ~/.gvimrc
