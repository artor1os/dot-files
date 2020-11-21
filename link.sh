#!/bin/bash

CONFIG_PATH=$(realpath $(dirname $0))

declare -A fileTarget

fileTarget["config.fish"]="${HOME}/.config/fish/config.fish"
fileTarget["starship.toml"]="${HOME}/.config/starship.toml"
fileTarget[".tmux.conf"]="${HOME}/.tmux.conf"
fileTarget[".zshrc"]="${HOME}/.zshrc"

for file in ${!fileTarget[@]}; do
    realfile=${CONFIG_PATH}/${file}
    if [[ ! -f "${CONFIG_PATH}/${file}" ]]; then
        echo "No ${file} file exists, skip"
        continue
    fi
    target=${fileTarget[${file}]}
    if [[ -f ${target} ]]; then
        echo "Removing existing target ${target}"
        rm ${target}
    fi
    echo "Linking ${realfile} to target ${target}"
    ln -s ${realfile} ${target}
done

