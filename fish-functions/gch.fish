function gch -d "Git checkout using fzf"
    git checkout (git branch --all | fzf | tr -d '[:space:]')
end
