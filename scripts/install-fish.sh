#!/bin/bash

[[ -f /usr/bin/fish ]] || (echo "Installing fish..." && sudo apt install -y fish && sudo chsh -s /usr/bin/fish)

