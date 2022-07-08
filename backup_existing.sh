#!/bin/bash

mkdir ./dotfiles_backup

mv ~/.bash_exports                   ./dotfiles_backup/.bash_exports
mv ~/.bash_aliases                   ./dotfiles_backup/.bash_aliases
mv ~/.bashrc                         ./dotfiles_backup/.bashrc
mv ~/.bash_profile                   ./dotfiles_backup/.bash_profile
mv ~/.vimrc                          ./dotfiles_backup/.vimrc
mv ~/.vim                            ./dotfiles_backup/.vim
mv ~/.config/nvim                    ./dotfiles_backup/.config_nvim
mv ~/.tmux.conf                      ./dotfiles_backup/.tmux.conf
mv ~/.tmux                           ./dotfiles_backup/.tmux
mv ~/.gitconfig                      ./dotfiles_backup/.gitconfig
mv ~/.gitignore_global               ./dotfiles_backup/.gitignore_global
mv ~/.fzf                            ./dotfiles_backup/.fzf
mv ~/.fzf.bash                       ./dotfiles_backup/.fzf.bash
mv ~/.ripgreprc                      ./dotfiles_backup/.ripgreprc
mv ~/.rgignore                       ./dotfiles_backup/.rgignore
mv ~/.jupyter/nbconfig/notebook.json ./dotfiles_backup/.jupyter_nbconfig_notebook.json
