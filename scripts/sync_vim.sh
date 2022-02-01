#!/bin/bash

rsync -r ./.config/nvim ~/.config/

source ~/.config/nvim/init.lua

echo
echo "Neovim config updated successfully! Remember to run ':PlugInstall' if you have added any plugins"