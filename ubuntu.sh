#!/bin/bash

set -e

echo "Update apt source"
source ./scripts/update-apt.sh

echo "Install app list"
source ./scripts/install-list.sh

echo "Install and configure zsh"
source ./scripts/install-zsh.sh

echo "Install from source"
source ./scripts/install-from-source.sh

echo "Install tmux plugins manager"
source ./scripts/install-tmux-plugins-manager.sh
