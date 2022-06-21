#!/bin/bash

yes | apt install fzf
yes | apt install ripgrep

# https://github.com/sharkdp/bat/blob/master/doc/README-zh.md
yes | apt install bat
ln -s /usr/bin/batcat /usr/local/bin/bat # for ubuntu

echo alias pf="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}" >> ~/.bashrc
source ~/.bashrc
