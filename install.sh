#!/bin/bash

# install pathogen.vim
mkdir -p ~/.vim/autoload ~/.vim/bundle;
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# install .vimrc
[ -e "~/.vimrc" ] && echo ".vimrc exists." >&2
[ -e "~/.gvimrc" ] && echo ".gvimrc exists." >&2


