function godepgraph -a package -d "Generates dependency grpah of package."
    set -l argc (count $argv)
    if test $argc -ne 1
        echo "Usage: godepgraph <package name>"
        return 1
    end
    echo "Generating dependency grpah of package $package"
    set -l out (string replace / ' ' $package)
    set -l deps (go list -f '{{range .Imports}}{{printf "\t%q -> %q;\n" $.ImportPath .}}{{end}}' (go list -f '{{join .Deps " "}}' $package | string split ' ') $package)
    echo "digraph G{$deps}" | dot -Tsvg -o $out-deps.svg
end

