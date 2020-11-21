#!/bin/bash

set -e

echo "Update apt source"
source ./scripts/sh/update-apt.sh

echo "Install app list"
source ./scripts/sh/install-list.sh

echo "Install and configure zsh"
source ./scripts/sh/install-zsh.sh

echo "Install from source"
source ./scripts/sh/install-from-source.sh

echo "Install tmux plugins manager"
source ./scripts/sh/install-tmux-plugins-manager.sh
