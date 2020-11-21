#!/usr/bin/fish

set -l CONFIG_PATH (realpath (dirname (status filename)))

set -l filelist dot-files.txt

cat $filelist | \
   while read -d : -l file target
    set -l target (eval "echo $target")
    set -l realfile $CONFIG_PATH/$file
    if test ! -f $realfile
        echo "No $realfile file exists, skip"
        continue
    end
    if test -f $target
        echo "Removing existing target $target"
        rm $target
    end
    echo "Linking $realfile to target $target"
    ln -s $realfile $target
end

