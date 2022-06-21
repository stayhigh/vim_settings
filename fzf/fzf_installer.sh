#!/bin/bash

# fzf: fuzzy finder
# ripgrep: fast grep
# bat: syntax highlight, https://github.com/sharkdp/bat/blob/master/doc/README-zh.md

apt install -y fzf ripgrep bat

if [[$? -ne 0]]; then
  exit -1
fi

ln -s /usr/bin/batcat /usr/local/bin/bat # for ubuntu
ln -s rfv /usr/local/bin/rfv

echo alias pf="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}" >> ~/.bashrc
source ~/.bashrc
