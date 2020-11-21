#!/usr/bin/fish

[[ -d ~/.local/share/omf ]] || (echo "Installing ohmyfish..." && curl -L https://get.oh-my.fish | fish)

[[ -f ~/.config/fish/functions/fisher.fish ]] || (echo "Installing fisher..." && curl -sL git.io/fisher | source && fisher install jorgebucaran/fisher)

# omf plugins
omf install https://github.com/jhillyerd/plugin-git
omf install https://github.com/decors/fish-colored-man

# fisher plugins
fisher install gazorby/fish-abbreviation-tips
fisher install jethrokuan/z

# starship
[[ -f ~/.cargo/bin/starship ]] || (echo "Installing starship..." && cargo install starship)
