#!/usr/bin/fish

if test ! -f ~/.config/fish/functions/fisher.fish
    echo "Installing fisher..."
    curl -sL git.io/fisher | source
    fisher install jorgebucaran/fisher
else
    echo "Fisher installed."
end

# fisher plugins
set -l plugins \
   gazorby/fish-abbreviation-tips\
   jethrokuan/z\
   decors/fish-colored-man\
   markcial/upto\
   oh-my-fish/plugin-pj
for plug in $plugins
    if test -z (fisher list $plug)
        echo "Installing $plug..."
        fisher install $plug
    else
        echo "$plug installed."
    end
end

# starship
if test ! -f ~/.cargo/bin/starship
    echo "Installing starship..."
    cargo install starship
else
    echo "Starship installed."
end

if test -f ~/.config/starship.toml
    echo "Removing starship toml..."
    rm ~/.config/starship.toml
end

echo "Linking starship toml..."
ln -s (realpath (dirname (status filename)))/starship.toml ~/.config/starship.toml
