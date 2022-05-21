#!/bin/bash

sudo apt update
sudo apt install git vim curl wget tig tmux
cp .bashrc ~/
cp .vimrc ~/
cp .zshrc ~/
cp .gitconfig ~/

# git config --global http.proxy socks5://127.0.0.1:8011
# git config --global https.proxy socks5://127.0.0.1:8011

cp .git-completion.bash ~ 
cp .git-prompt.sh ~


