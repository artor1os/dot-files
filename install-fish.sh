#!/bin/bash

[[ -f /usr/bin/fish ]] || (echo "Installing fish..." && sudo apt install -y fish && sudo chsh -s /usr/bin/fish)

[[ -d ~/.local/share/omf ]] || (echo "Installing ohmyfish..." && curl -L https://get.oh-my.fish | fish)

omf install https://github.com/jhillyerd/plugin-git
[[ ! -f ~/.config/fish/config.fish ]] || rm ~/.config/fish/config.fish

ln -s $(realpath $(dirname $0))/config.fish ~/.config/fish/config.fish
