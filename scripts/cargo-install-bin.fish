#!/usr/bin/fish

set -l cargo_binary_path $HOME/.cargo/bin

set -l binaries starship fd-find ripgrep
set -l realnames starship fd rg

for i in (seq (count $binaries))
    set -l bin $binaries[$i]
    if test ! -f $cargo_binary_path/$realnames[$i]
        echo "Installing $bin..."
        cargo install $bin
    end
    echo "Binary $bin installed."
end
