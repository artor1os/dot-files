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

sudo apt install -y ${LIST}
