function link-function
    argparse 'n' -- $argv
    if test (count $argv) -ne 1
        echo "Wrong input $argv"
        return 2
    end
    set -l path $argv[1]
    set -l real (realpath $path)
    set -l target_path $HOME/.config/fish/functions
    mkdir -p $target_path
    set -l func_name (basename $path)
    set -l realtarget $target_path/$func_name
    if test -f $realtarget
        echo "Removing existing target $realtarget"
        rm $realtarget
    end
    if set -q _flag_n
        echo "Not link"
        return 0
    end
    echo "Linking $real to $realtarget"
    ln -s $real $realtarget
end
