#!/bin/bash

set -e

[[ ! -d ~/.tmux/plugins/tpm ]] && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

[[ -f ~/.tmux.conf ]] && rm ~/.tmux.conf

ln -s $( realpath $( dirname $0 ) )/.tmux.conf ~/.tmux.conf

tmux source ~/.tmux.conf
