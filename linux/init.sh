#!/bin/bash

sudo apt update
sudo apt install git vim curl wget tig tmux
cp .bashrc ~/
cp .vimrc ~/
cp .zshrc ~/
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.br branch
git config --global alias.co checkout
git config --global alias.ls "log --color --decorate --pretty format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen (%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -20"
git config --global alias.l1 "log --color --decorate --pretty format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen (%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -1"
git config --global alias.lf "log --color --graph --decorate --pretty format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen (%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.sm submodule
git config --global i18n.commitencoding utf-8
git config --global i18n.logoutputencoding utf-8
git config --global core.quotepath false
git config --global user.name Albert.Xu
git config --global user.email windxu@126.com
# git config --global http.proxy socks5://127.0.0.1:8011
# git config --global https.proxy socks5://127.0.0.1:8011
