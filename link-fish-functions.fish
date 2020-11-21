#!/usr/bin/fish

set -l function_path (realpath (dirname (status filename)))/fish-functions

set -l target_path $HOME/.config/fish/functions

mkdir -p $target_path

for function in (ls $function_path)
    set -l realfunction $function_path/$function
    set -l realtarget $target_path/$function
    if test -f $realtarget
        echo "Removing existing target $realtarget"
        rm $realtarget
    end
    echo "Linking $realfunction to $realtarget"
    ln -s $realfunction $realtarget
end

