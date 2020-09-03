#!/bin/bash

set -e

echo "Update apt source"
source ./update-apt.sh

echo "Install app list"
source ./install-list.sh

echo "Install and configure zsh"
source ./install-zsh.sh

echo "Install from source"
source ./install-from-source.sh

echo "Install tmux plugins manager"
source ./install-tmux-plugins-manager.sh
