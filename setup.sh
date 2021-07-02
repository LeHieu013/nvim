#! /bin/bash

# Install neovim
sudo apt install neovim;
# Add alias
[ `alias | grep nvim | wc -l` != 0 ] && echo 'alias v=nvim' >> ~/.bashrc && . ~/.bashrc;
# Install vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim';
# copy vc
cp init.vim ~/.config/nvim/;
# setup plugin
v -c 'PluginInstall';

