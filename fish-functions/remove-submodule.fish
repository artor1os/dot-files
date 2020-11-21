function remove-submodule -d "Remove git submodule" -a path
    set -l argc (count $argv)
    if test $argc -ne 1
        echo "Usage: remove-submodule <path/to/submodule>"
        return 1
    end
    if test ! -d .git
        echo "Should be used in git root directory"
        return 1
    end
    if test ! -d $path -o ! -d .git/modules/$path
        echo "No such submodule $path"
        return 1
    end
    if not contains $path (git submodule | awk '{print $2}')
        echo "No such submodule $path"
        return 1
    end
    git submodule deinit $path; and \
       git rm $path; and \
       rm -rf .git/modules/$path; and \
       git commit -m "Remove submodule $path"
end
