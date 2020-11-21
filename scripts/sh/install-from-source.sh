#!/bin/bash

set -e

_download_source() {
    [[ -d ~/src/$1 ]] || (mkdir -p ~/src && git clone https://github.com/$2 ~/src/$1)
}

_configure_and_install() {
    ./configure && make && sudo make install
}

_install() {
    [[ -f /usr/local/bin/$1 ]] || (echo "Installing $1..." && (_download_source $1 $2 && cd ~/src/$1 && ([[ -z $3 ]] || ./autogen.sh) && _configure_and_install))
}

# vim
_install vim vim/vim

# tmux
_install tmux tmux/tmux gen

# ctags
_install ctags universal-ctags/ctags gen
