#!/bin/bash

[[ ! -f /bin/zsh ]] && sudo apt install -y zsh && sudo chsh -s /bin/zsh

[[ ! -d ~/.oh-my-zsh ]] && sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
P10K=${ZSH_CUSTOM}/themes/powerlevel10k
SYNTAX_HIGHLIGHTING=${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting
AUTOSUGGESTIONS=${ZSH_CUSTOM}/plugins/zsh-autosuggestions
[[ ! -d ${P10K} ]] && git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${P10K}
[[ ! -d ${SYNTAX_HIGHLIGHTING} ]] && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${SYNTAX_HIGHLIGHTING}
[[ ! -d ${AUTOSUGGESTIONS} ]] && git clone https://github.com/zsh-users/zsh-autosuggestions ${AUTOSUGGESTIONS}
[[ -f ~/.zshrc ]] && rm ~/.zshrc

ln -s $(realpath $(dirname $0))/.zshrc ~/.zshrc

