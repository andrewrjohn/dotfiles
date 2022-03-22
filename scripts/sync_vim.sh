#!/bin/bash

ln -s $(pwd)/.config/nvim ~/.config/
echo "Symlink created!"

source ~/.config/nvim/init.lua
echo "Config sourced!"

echo "Installing additional dependencies..."
brew install fzf the_silver_searcher bat
echo "Dependencies installed!"

echo "Installing plugins..."
nvim +PlugInstall +qall
echo "Plugins installed!"

echo
echo "Neovim config updated successfully!