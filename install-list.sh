#!/bin/bash

LIST=(
    # utilities
    git
    silversearcher-ag
    fzf
    openssh-server
    autojump
    # dependencies
    build-essential
    autoconf
    automake
    pkg-config
    libevent-dev
    libncurses5-dev
    libncursesw5-dev
    bison
    flex
    libssl-dev
)

echo "Installing ${LIST}..."
sudo apt install -y ${LIST}
