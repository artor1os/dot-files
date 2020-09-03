#!/bin/bash

LIST=(
    vim
    git
    tmux
    silversearcher-ag
    build-essential
    fzf
    openssh-server
    autojump
)

echo "Installing ${LIST}..."
sudo apt install -y ${LIST}
