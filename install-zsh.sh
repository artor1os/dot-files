#!/bin/bash

set -e

[[ -f /bin/zsh ]] || (echo "Installing zsh..." && sudo apt install -y zsh && sudo chsh -s /bin/zsh)

[[ -d ~/.oh-my-zsh ]] || (echo "Installing ohmyzsh..." && sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)")

ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
P10K=${ZSH_CUSTOM}/themes/powerlevel10k
SYNTAX_HIGHLIGHTING=${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting
AUTOSUGGESTIONS=${ZSH_CUSTOM}/plugins/zsh-autosuggestions
[[ -d ${P10K} ]] || (echo "Installing powerlevel10k..." && git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${P10K})
[[ -d ${SYNTAX_HIGHLIGHTING} ]] || (echo "Installing zsh-syntax-highlighting..." && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${SYNTAX_HIGHLIGHTING})
[[ -d ${AUTOSUGGESTIONS} ]] || (echo "Installing zsh-autosuggestions..." && git clone https://github.com/zsh-users/zsh-autosuggestions ${AUTOSUGGESTIONS})
[[ ! -f ~/.zshrc ]] || rm ~/.zshrc

ln -s $(realpath $(dirname $0))/.zshrc ~/.zshrc

