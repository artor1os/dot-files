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
   jorgebucaran/bax.fish\
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

