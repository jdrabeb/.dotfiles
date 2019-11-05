#!bin/bash

mkdir $HOME/.vim/colors
git clone git://github.com/sickill/vim-monokai.git
mv vim-monokai/colors $HOME/.vim/colors
rm -r vim-monokai
