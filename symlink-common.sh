#!/bin/bash

ln -sf $(pwd)/git/.gitaliases $HOME/.gitaliases

ln -sf $(pwd)/Brewfile $HOME/Brewfile

mkdir -p $HOME/.config/fish
ln -sf $(pwd)/config/fish/functions "$HOME/.config/fish"
ln -sf $(pwd)/config/fish/config.fish "$HOME/.config/fish/config.fish"

ln -sf $(pwd)/config/.emacs.d/init.el $HOME/.emacs.d/init.el
ln -sf $(pwd)/config/.emacs.d/customizations $HOME/.emacs/customizations

# I don't know why need this for now
# ln -sf $(pwd)/bin $HOME
