#!/usr/bin/fish

set -l src_root $HOME/src
mkdir -p $src_root
set -l binaries fzf vim tmux ctags
set -l src_list junegunn/fzf vim/vim tmux/tmux universal-ctags/ctags
set -l install_type script make make_gen make_gen
set -l install_args install "" "" ""

for i in (seq (count $src_list))
    set -l binary $binaries[$i]
    set -l repo $src_list[$i]
    set -l group_and_name (string split / $repo)
    set -l itype $install_type[$i]
    set -l iargs $install_args[$i]
    if test ! -d $src_root/$group_and_name[2]
        echo "Downloading $repo..."
        download_github $group_and_name[1] $group_and_name[2] $src_root/$group_and_name[2]; or \
            git clone https://github.com/$repo $src_root/$group_and_name[2]
    end
    echo "$repo downloaded."
    if test (count (which $binary)) -gt 0
        echo "Binary $binary has already been installed, skip."
        continue
    end
    switch $itype
        case script
            echo "Use script $iargs to install $repo."
            cd $src_root/$group_and_name[2]; and \
               bash -c $iargs
        case make make_gen
            echo "Use make to install $repo."
            cd $src_root/$group_and_name[2]
            if $itype == make_gen
                echo "Execute autogen.sh..."
                bash -c autogen.sh
            end
            echo "Configuring..."
            bash -c configure
            echo "Building and installing..."
            make; and sudo make intall
    end
    echo "$repo installed."
end

