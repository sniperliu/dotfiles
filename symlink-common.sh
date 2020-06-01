#!/bin/bash

ln -sf $(pwd)/config/zsh/.zshrc $HOME/.zshrc
ln -sh $(pwd)/config/zsh/.oh-my-zsh $HOME/.oh-my-zsh

ln -sf $(pwd)/config/git/.gitaliases $HOME/.gitaliases

ln -sf $(pwd)/macos/Brewfile $HOME/.Brewfile

ln -sf $(pwd)/config/.emacs.d/init.el $HOME/.emacs.d/init.el
ln -sf $(pwd)/config/.emacs.d/configuration.org $HOME/.emacs.d/configuration.org

# I don't know why need this for now
# ln -sf $(pwd)/bin $HOME
