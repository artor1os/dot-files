function cptodesk -a path -d "Copy to windows desktop"
    set -l argc (count $argv)
    if test $argc -ne 1
        echo "Usage: cptodesk <file>"
        return 1
    end
    if test ! -f $path
        echo "ERROR: no such file"
        return 1
    end
    cp $path /mnt/c/Users/artorios/Desktop/(basename $path)
end

