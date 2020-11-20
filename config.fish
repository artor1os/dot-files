# PATH
if status --is-login
    set -x PATH $PATH $HOME/.yarn/bin $HOME/.config/yarn/global/node_modules/.bin
    set -x PATH $PATH $HOME/.cargo/bin
    set -x PATH $PATH /usr/local/go/bin $HOME/go/bin
end

# abbr
abbr -a -U pc proxychains
abbr -a -U vfish vim ~/.config/fish/config.fish
abbr -a -U vvim vim ~/.vim/vimrc

# starship
starship init fish | source
